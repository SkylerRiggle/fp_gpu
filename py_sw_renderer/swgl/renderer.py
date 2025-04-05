import math
import numpy as np
from swgl.model import Model, Vertex

class Renderer:
    __screen_width: int
    __screen_height: int

    __z_far: float
    __z_near: float
    __fov: float

    __cam_a: float
    __cam_b: float
    __cam_c: float
    __cam_d: float

    __cam_x: float
    __cam_y: float
    __cam_z: float

    __cam_q0: float
    __cam_q1: float
    __cam_q2: float
    __cam_q3: float

    __model_x: float
    __model_y: float
    __model_z: float

    __model_q0: float
    __model_q1: float
    __model_q2: float
    __model_q3: float

    __model_sx: float
    __model_sy: float
    __model_sz: float

    frame: np.ndarray
    depth_buffer: np.ndarray

    __clear_r: int
    __clear_g: int
    __clear_b: int

    __model: Model | None

    def __init__(self) -> None:
        self.__screen_width = 100
        self.__screen_height = 100

        self.__z_far = 100.0
        self.__z_near = 0.1
        self.__fov = math.radians(60.0)

        self.__set_projection__()

        self.__cam_x = 0.0
        self.__cam_y = 0.0
        self.__cam_z = 0.0

        self.__cam_q0 = 1.0
        self.__cam_q1 = 0.0
        self.__cam_q2 = 0.0
        self.__cam_q3 = 0.0

        self.__model_x = 0.0
        self.__model_y = 0.0
        self.__model_z = 0.0

        self.__model_q0 = 1.0
        self.__model_q1 = 0.0
        self.__model_q2 = 0.0
        self.__model_q3 = 0.0

        self.__model_sx = 1.0
        self.__model_sy = 1.0
        self.__model_sz = 1.0

        self.__clear_r = 0
        self.__clear_g = 0
        self.__clear_b = 0

        self.__model = None

        self.frame = np.zeros((self.__screen_height, self.__screen_width, 3), dtype=np.uint8)
        self.depth_buffer = np.zeros((self.__screen_height, self.__screen_width), dtype=np.float32)

    def __set_projection__(self) -> None:
        self.__cam_b = 1.0 / math.tan(self.__fov * 0.5)
        self.__cam_a = self.__screen_height * self.__cam_b / self.__screen_width
        self.__cam_c = self.__z_far / (self.__z_far - self.__z_near)
        self.__cam_d = -self.__z_near * self.__cam_c

    def set_screen_size(self, width: int, height: int) -> None:
        assert width > 0, "Width must be greater than 0."
        assert height > 0, "Height must be greater than 0."

        self.__screen_width = width
        self.__screen_height = height

        self.__set_projection__()

        self.frame = np.zeros((self.__screen_height, self.__screen_width, 3), dtype=np.uint8)
        self.depth_buffer = np.zeros((self.__screen_height, self.__screen_width), dtype=np.float32)

    def set_projection(self, z_near: float, z_far: float, fov: float) -> None:
        assert z_near > 0.0, "z_near must be greater than 0."
        assert z_far > z_near, "z_far must be greater than z_near."
        assert 0.0 < fov < 180.0, "fov must be between 0 and 180 degrees."

        self.__z_near = z_near
        self.__z_far = z_far
        self.__fov = math.radians(fov)

        self.__set_projection__()

    def load_model(self, model: Model) -> None:
        assert isinstance(model, Model), "model must be an instance of Model."

        self.__model = model

    def set_model_position(self, x: float, y: float, z: float) -> None:
        self.__model_x = x
        self.__model_y = y
        self.__model_z = z

    def set_model_rotation(self, q0: float, q1: float, q2: float, q3: float) -> None:
        self.__model_q0 = q0
        self.__model_q1 = q1
        self.__model_q2 = q2
        self.__model_q3 = q3

    def set_model_scale(self, sx: float, sy: float, sz: float) -> None:
        self.__model_sx = sx
        self.__model_sy = sy
        self.__model_sz = sz

    def set_camera_position(self, x: float, y: float, z: float) -> None:
        self.__cam_x = x
        self.__cam_y = y
        self.__cam_z = z

    def set_camera_rotation(self, q0: float, q1: float, q2: float, q3: float) -> None:
        self.__cam_q0 = q0
        self.__cam_q1 = q1
        self.__cam_q2 = q2
        self.__cam_q3 = q3

    def set_clear_color(self, r: int, g: int, b: int) -> None:
        assert 0 <= r <= 255, "Red value must be between 0 and 255"
        assert 0 <= g <= 255, "Green value must be between 0 and 255"
        assert 0 <= b <= 255, "Blue value must be between 0 and 255"

        self.__clear_r = r
        self.__clear_g = g
        self.__clear_b = b

    def __scale_vertex__(self, vertex: Vertex, sx: float, sy: float, sz: float) -> Vertex:
        vertex.x *= sx
        vertex.y *= sy
        vertex.z *= sz
        return vertex

    def __rotate_vertex__(self, vertex: Vertex, q0: float, q1: float, q2: float, q3: float) -> Vertex:
        x = vertex.x
        y = vertex.y
        z = vertex.z

        vertex.x = (1 - 2 * (q2 * q2 + q3 * q3)) * x + 2 * (q1 * q2 - q0 * q3) * y + 2 * (q1 * q3 + q0 * q2) * z
        vertex.y = 2 * (q1 * q2 + q0 * q3) * x + (1 - 2 * (q1 * q1 + q3 * q3)) * y + 2 * (q2 * q3 - q0 * q1) * z
        vertex.z = 2 * (q1 * q2 - q0 * q2) * x + 2 * (q2 * q3 + q0 * q1) * y + (1 - 2 * (q1 * q1 + q2 * q2)) * z

        return vertex

    def __translate_vertex__(self, vertex: Vertex, x_move: float, y_move: float, z_move: float) -> Vertex:
        vertex.x += x_move
        vertex.y += y_move
        vertex.z += z_move
        return vertex
    
    def __project_vertex__(self, vertex: Vertex) -> tuple[float, float, float] | None:
        if vertex.z <= 0:
            return None
        
        denom: float = 0.5 / vertex.z

        return (
            self.__screen_width * (self.__cam_a * vertex.x + vertex.z) * denom,
            self.__screen_height * (vertex.z - self.__cam_b * vertex.y) * denom,
            1.0 - self.__cam_c - (self.__cam_d / vertex.z)
        )
    
    def __cross_product__(self, x0: float, y0: float, x1: float, y1: float) -> float:
        return x0 * y1 - y0 * x1
    
    def clear(self) -> None:
        self.frame[..., 0] = self.__clear_r
        self.frame[..., 1] = self.__clear_g
        self.frame[..., 2] = self.__clear_b
        self.depth_buffer.fill(0.0)

    def render(self) -> None:
        if self.__model is None:
            raise RuntimeError("No model loaded. Please load a model before rendering.")

        for idx in range(0, self.__model.tri_count * 3, 3):
            v0 = self.__model.vertices[self.__model.indices[idx]].copy()
            v1 = self.__model.vertices[self.__model.indices[idx + 1]].copy()
            v2 = self.__model.vertices[self.__model.indices[idx + 2]].copy()

            # Model scaling
            self.__scale_vertex__(v0, self.__model_sx, self.__model_sy, self.__model_sz)
            self.__scale_vertex__(v1, self.__model_sx, self.__model_sy, self.__model_sz)
            self.__scale_vertex__(v2, self.__model_sx, self.__model_sy, self.__model_sz)

            # Model rotation using quaternion
            self.__rotate_vertex__(v0, self.__model_q0, self.__model_q1, self.__model_q2, self.__model_q3)
            self.__rotate_vertex__(v1, self.__model_q0, self.__model_q1, self.__model_q2, self.__model_q3)
            self.__rotate_vertex__(v2, self.__model_q0, self.__model_q1, self.__model_q2, self.__model_q3)

            # Model translation and camera inverse translation
            self.__translate_vertex__(v0, self.__model_x - self.__cam_x, self.__model_y - self.__cam_y, self.__model_z - self.__cam_z)
            self.__translate_vertex__(v1, self.__model_x - self.__cam_x, self.__model_y - self.__cam_y, self.__model_z - self.__cam_z)
            self.__translate_vertex__(v2, self.__model_x - self.__cam_x, self.__model_y - self.__cam_y, self.__model_z - self.__cam_z)

            # Camera inverse rotation using quaternion
            self.__rotate_vertex__(v0, self.__cam_q0, -self.__cam_q1, -self.__cam_q2, -self.__cam_q3)
            self.__rotate_vertex__(v1, self.__cam_q0, -self.__cam_q1, -self.__cam_q2, -self.__cam_q3)
            self.__rotate_vertex__(v2, self.__cam_q0, -self.__cam_q1, -self.__cam_q2, -self.__cam_q3)

            # Project vertices
            s0 = self.__project_vertex__(v0)
            if s0 is None:
                continue

            s1 = self.__project_vertex__(v1)
            if s1 is None:
                continue

            s2 = self.__project_vertex__(v2)
            if s2 is None:
                continue

            x0, y0, z0 = s0
            x1, y1, z1 = s1
            x2, y2, z2 = s2

            # Find the bounding box of the triangle
            x_min = int(max(min(x0, x1, x2), 0))
            x_max = int(min(max(x0, x1, x2), self.__screen_width - 1))
            y_min = int(max(min(y0, y1, y2), 0))
            y_max = int(min(max(y0, y1, y2), self.__screen_height - 1))

            vsx1, vsy1 = x1 - x0, y1 - y0
            vsx2, vsy2 = x2 - x0, y2 - y0

            vsc = self.__cross_product__(vsx1, vsy1, vsx2, vsy2)

            if vsc == 0.0:
                continue

            # Rasterize the triangle
            for x in range(x_min, x_max + 1):
                qx = x - x0
                for y in range(y_min, y_max + 1):
                    qy = y - y0

                    s = self.__cross_product__(qx, qy, vsx2, vsy2) / vsc
                    t = self.__cross_product__(vsx1, vsy1, qx, qy) / vsc

                    if s >= 0.0 and t >= 0.0 and (s + t) <= 1.0:
                        qz = z0 + s * (z1 - z0) + t * (z2 - z0)

                        if 0.0 <= qz <= 1.0 and qz > self.depth_buffer[y, x]:
                            self.depth_buffer[y, x] = qz

                            # Interpolate color
                            self.frame[y, x, 2] = int(v0.b + s * (v1.b - v0.b) + t * (v2.b - v0.b))
                            self.frame[y, x, 1] = int(v0.g + s * (v1.g - v0.g) + t * (v2.g - v0.g))
                            self.frame[y, x, 0] = int(v0.r + s * (v1.r - v0.r) + t * (v2.r - v0.r))