import math
from time import time
import matplotlib.pyplot as plt
from swgl.renderer import Renderer, Model, Vertex

CUBE_COUNT: int = 10

BOT_R: int = 255
BOT_G: int = 127
BOT_B: int = 14

TOP_R: int = 0
TOP_G: int = 255
TOP_B: int = 0

CUBE_MODEL: Model = Model([
    Vertex(-0.5, -0.5, -0.5, BOT_R, BOT_G, BOT_B),  # Bottom face
    Vertex(0.5, -0.5, -0.5, BOT_R, BOT_G, BOT_B),
    Vertex(-0.5, -0.5, 0.5, BOT_R, BOT_G, BOT_B),
    Vertex(0.5, -0.5, 0.5, BOT_R, BOT_G, BOT_B),

    Vertex(-0.5, 0.5, -0.5, TOP_R, TOP_G, TOP_B), # Top face
    Vertex(0.5, 0.5, -0.5, TOP_R, TOP_G, TOP_B),
    Vertex(-0.5, 0.5, 0.5, TOP_R, TOP_G, TOP_B),
    Vertex(0.5, 0.5, 0.5, TOP_R, TOP_G, TOP_B),
], [
    0, 1, 2, 1, 2, 3, # Bottom Face
    4, 5, 6, 5, 6, 7, # Top Face
    0, 1, 4, 1, 4, 5, # Front Face
    2, 3, 6, 3, 6, 7, # Back Face
    0, 2, 4, 2, 4, 6, # Left Face
    1, 3, 5, 3, 5, 7  # Right Face
])

APP_RUNNING: bool = False

def on_key(event):
    global APP_RUNNING

    if event.key == 'q':
        APP_RUNNING = False

def main(screen_size: tuple[int, int]) -> None:
    global CUBE_MODEL, APP_RUNNING, CUBE_COUNT

    renderer = Renderer()

    renderer.set_screen_size(*screen_size)
    renderer.set_projection(0.1, 100.0, 70.0)
    renderer.set_clear_color(113, 155, 177)

    renderer.load_model(CUBE_MODEL)
    renderer.set_camera_position(0.0, 0.0, -5.0)

    plt.ion()
    fig, ax = plt.subplots()
    im = ax.imshow(renderer.frame)

    fig.canvas.mpl_connect("key_press_event", on_key)

    k: float = 0.0
    last_time: float = time()

    APP_RUNNING = True
    while APP_RUNNING:
        cur_time: float = time()
        delta_time: float = cur_time - last_time
        last_time = cur_time

        print("FPS:", 1.0 / delta_time if delta_time != 0.0 else 0.0)

        renderer.clear()

        for idx in range(CUBE_COUNT):
            renderer.set_model_position(math.sin(k) * 2.0, math.cos(k) * 2.0, idx * 2.0)
            renderer.render()

        k += 0.1
        
        im.set_array(renderer.frame)
        plt.draw()
        plt.pause(0.1)

    plt.ioff()

if __name__ == "__main__":
    main(
        screen_size=(1280, 720)
    )