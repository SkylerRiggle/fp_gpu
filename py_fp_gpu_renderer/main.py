import cv2 as cv
from renderer import Renderer
from model import Model, CUBE_INDICES, CUBE_VERTICES

ESC_KEY: int = 27  # ASCII code for the Escape key

def main(window_name: str = "FP GPU Renderer") -> None:
    global CUBE_VERTICES, CUBE_INDICES, ESC_KEY

    renderer = Renderer(
        screen_width=640,
        screen_height=480,
        fov=60.0,
        z_near=0.01,
        z_far=100.0,
        gpu_overlay="fp_gpu.bit"
    )

    renderer.load_model(Model(CUBE_VERTICES, CUBE_INDICES))

    renderer.load_position((0.0, 0.0, -10.0), True)

    cv.namedWindow(window_name, cv.WINDOW_NORMAL)

    while cv.getWindowProperty(window_name, cv.WND_PROP_VISIBLE) > 0:
        cv.imshow(window_name, renderer.swap_buffers())

        if cv.waitKey(1) == ESC_KEY:
            break

    renderer.close()

if __name__ == "__main__":
    main()