import os
import mmap
import numpy as np
from model import Model
from pynq import Overlay

class Renderer:
    __screen_width: int
    __screen_height: int

    __fov: float
    __z_near: float
    __z_far: float

    __mem_file: int

    def __init__(
        self, 
        screen_width: int,
        screen_height: int,
        fov: float = 60.0,
        z_near: float = 0.01,
        z_far: float = 100.0,
        gpu_overlay: str = "fp_gpu.bit",
    ) -> None:
        Overlay(gpu_overlay)

        self.__mem_file = os.open("/dev/mem", os.O_RDWR | os.O_SYNC)

        self.__fov = fov
        self.__z_near = z_near
        self.__z_far = z_far

        self.set_screen_size(screen_width, screen_height)

    def close(self) -> None:
        os.close(self.__mem_file)

    def __update_projection__(self) -> None:
        cam_a = 1.0 / (np.tan(np.radians(self.__fov) * 0.5) * (self.__screen_width / self.__screen_height))
        cam_b = 1.0 / np.tan(np.radians(self.__fov) * 0.5)
        cam_c = self.__z_far / (self.__z_far - self.__z_near)
        cam_d = self.__z_near * self.__z_far / (self.__z_near - self.__z_far)

        # TODO: Upload to GPU

    def set_screen_size(self, screen_width: int, screen_height: int) -> None:
        self.__screen_width = screen_width
        self.__screen_height = screen_height

        # TODO: Upload to GPU

        self.__update_projection__()

    def set_projection(self, fov: float, z_near: float, z_far: float) -> None:
        self.__fov = fov
        self.__z_near = z_near
        self.__z_far = z_far

        self.__update_projection__()

    def set_clear_color(self, color: tuple[int, int, int]) -> None:
        assert 0 <= color[0] <= 255, "Color values must be in the range [0, 255]"
        assert 0 <= color[1] <= 255, "Color values must be in the range [0, 255]"
        assert 0 <= color[2] <= 255, "Color values must be in the range [0, 255]"

        # TODO: Upload to GPU
        pass

    def load_model(self, model: Model) -> None:
        # TODO: Upload to GPU
        pass

    def load_position(
        self,
        position: tuple[float, float, float],
        is_camera: bool = False
    ) -> None:
        # TODO: Upload to GPU
        pass

    def load_rotation(
        self,
        rotation: tuple[float, float, float, float],
        is_camera: bool = False
    ) -> None:
        # TODO: Upload to GPU
        pass

    def load_scale(
        self,
        scale: tuple[float, float, float]
    ) -> None:
        # TODO: Upload to GPU
        pass

    def swap_buffers(self) -> np.ndarray:
        # TODO: Swap buffers with GPU
        pass

# print("Loading overlay...")
# Overlay("fp_gpu.bit")

# print("Mapping framebuffer...")
# mem_file = os.open("/dev/mem", os.O_RDWR | os.O_SYNC)
# fb_mem = mmap.mmap(
#     fileno=mem_file,
#     length=FRAME_WIDTH * FRAME_HEIGHT * 4,
#     offset=FRAME_BASE_ADDR,
#     access=mmap.PROT_READ | mmap.PROT_WRITE,
# )

# print("Parsing framebuffer...")
# frame_data = np.frombuffer(fb_mem, dtype=np.uint8).reshape((FRAME_HEIGHT, FRAME_WIDTH, 4))
# rgb_frame = frame_data[:, :, :3]

# print("Displaying framebuffer...")
# plt.imshow(rgb_frame)
# display.display(plt.gcf())
# display.clear_output(wait=True)

# print("Cleaning up...")
# fb_mem.close()
# os.close(mem_file)