import cv2 as cv
import numpy as np
import model as mdl
from time import time
from random import random

SCREEN_WIDTH: int = 1280
SCREEN_HEIGHT: int = 720

NUM_CUBES: int = 2
FIELD_SIZE: list[float] = [5.0, 5.0, 5.0]

CAMERA_FOV: float = 60.0
CAMERA_NEAR_PLANE: float = 0.3
CAMERA_FAR_PLANE: float = 500.0

CAM_A: float = 1.0 / (np.tan(np.radians(CAMERA_FOV) * 0.5) * (SCREEN_WIDTH / SCREEN_HEIGHT))
CAM_B: float = 1.0 / np.tan(np.radians(CAMERA_FOV) * 0.5)
CAM_C: float = CAMERA_FAR_PLANE / (CAMERA_FAR_PLANE - CAMERA_NEAR_PLANE)
CAM_D: float = CAMERA_NEAR_PLANE * CAMERA_FAR_PLANE / (CAMERA_NEAR_PLANE - CAMERA_FAR_PLANE)

CUBE_VERTICES: list[mdl.Vertex] = [
    mdl.Vertex(-0.5, -0.5, -0.5, 255, 0, 0), # Bottom Face
    mdl.Vertex(0.5, -0.5, -0.5, 255, 0, 0),
    mdl.Vertex(-0.5, -0.5, 0.5, 255, 0, 0),
    mdl.Vertex(0.5, -0.5, 0.5, 255, 0, 0),

    mdl.Vertex(-0.5, 0.5, -0.5, 0, 0, 255), # Top Face
    mdl.Vertex(0.5, 0.5, -0.5, 0, 0, 255),
    mdl.Vertex(-0.5, 0.5, 0.5, 0, 0, 255),
    mdl.Vertex(0.5, 0.5, 0.5, 0, 0, 255),
]

CUBE_INDICES: list[int] = [
    0, 1, 2, 1, 2, 3, # Bottom Face
    4, 5, 6, 5, 6, 7, # Top Face
    0, 1, 4, 1, 4, 5, # Front Face
    2, 3, 6, 3, 6, 7, # Back Face
    0, 2, 4, 2, 4, 6, # Left Face
    1, 3, 5, 3, 5, 7  # Right Face
]

class KEYCODE:
    W = ord("w")
    S = ord("s")

    A = ord("a")
    D = ord("d")

    J = ord("j")
    K = ord("k")

def project_vertex(vertex: mdl.Vertex) -> tuple[float, float, float]:
    global CAM_POSITION

    x, y, z = vertex.get_position()

    x = SCREEN_WIDTH * (CAM_A * x + z) / (2.0 * z)
    y = SCREEN_HEIGHT * (z - CAM_B * y) / (2.0 * z)
    z = 1.0 - CAM_C - CAM_D / z

    return x, y, z

def cross_product(x0: float, y0: float, x1: float, y1: float) -> float:
    return x0 * y1 - x1 * y0

def draw_model(frame: np.ndarray, z_buffer: np.ndarray, model: mdl.Model) -> None:
    for v0, v1, v2 in model.iterate_triangles():
        x0, y0, z0 = project_vertex(v0)
        x1, y1, z1 = project_vertex(v1)
        x2, y2, z2 = project_vertex(v2)

        r0, g0, b0 = v0.get_color()
        r1, g1, b1 = v1.get_color()
        r2, g2, b2 = v2.get_color()

        min_x = int(max(0, min(x0, x1, x2)))
        max_x = int(min(SCREEN_WIDTH, max(x0, x1, x2)))
        min_y = int(max(0, min(y0, y1, y2)))
        max_y = int(min(SCREEN_HEIGHT, max(y0, y1, y2)))

        vsx1, vsy1, vsz1 = x1 - x0, y1 - y0, z1 - z0
        vsx2, vsy2, vsz2 = x2 - x0, y2 - y0, z2 - z0

        vsr1, vsg1, vsb1 = r1 - r0, g1 - g0, b1 - b0
        vsr2, vsg2, vsb2 = r2 - r0, g2 - g0, b2 - b0

        for x in range(min_x, max_x):
            for y in range(min_y, max_y):
                qx = x - x0
                qy = y - y0

                vsc = cross_product(vsx1, vsy1, vsx2, vsy2)
                s = cross_product(qx, qy, vsx2, vsy2) / vsc
                t = cross_product(vsx1, vsy1, qx, qy) / vsc

                if s >= 0.0 and t >= 0.0 and s + t <= 1.0:
                    z = z0 + s * vsz1 + t * vsz2

                    if z > z_buffer[y, x]:
                        z_buffer[y, x] = z
                        frame[y, x, 0] = int(b0 + s * vsb1 + t * vsb2)
                        frame[y, x, 1] = int(g0 + s * vsg1 + t * vsg2)
                        frame[y, x, 2] = int(r0 + s * vsr1 + t * vsr2)

def main(title: str) -> None:
    global CUBE_VERTICES, CUBE_INDICES, SCREEN_HEIGHT, SCREEN_WIDTH

    scene: list[mdl.Model] = [mdl.Model(CUBE_VERTICES, CUBE_INDICES) for _ in range(NUM_CUBES)]

    for cube in scene:
        cube.translate(FIELD_SIZE[0] * random(), FIELD_SIZE[1] * random(), FIELD_SIZE[2] * random())
        cube.translate(FIELD_SIZE[0] * -0.5, FIELD_SIZE[1] * -0.5, 5.0)

    cv.namedWindow(title, cv.WINDOW_AUTOSIZE)

    delta_time: float = 0.0
    prev_time: float = time()

    frame = np.zeros((SCREEN_HEIGHT, SCREEN_WIDTH, 3), dtype=np.uint8)
    z_buffer = np.zeros((SCREEN_HEIGHT, SCREEN_WIDTH), dtype=np.float32)

    while cv.getWindowProperty(title, cv.WND_PROP_VISIBLE) > 0:
        cur_time: float = time()
        delta_time = cur_time - prev_time
        prev_time = cur_time

        for model in scene:
            draw_model(frame, z_buffer, model)
        
        cv.imshow(title, frame)

        fps: float = 1.0 / delta_time if delta_time > 0.0 else 0.0
        print(f"FPS: {fps:.2f}")

        frame.fill(0)
        z_buffer.fill(0)

        cv.waitKey(1)

    cv.destroyAllWindows()

if __name__ == "__main__":
    main("Python Software Renderer")