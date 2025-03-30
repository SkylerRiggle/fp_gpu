from numpy import uint8
from vertex import Vertex

class Model:
    vertices: list[Vertex]
    indices: list[uint8]

    def __init__(self, vertices: list[Vertex], indices: list[int]):
        self.vertices = [vertex.copy() for vertex in vertices]
        self.indices = [uint8(index) for index in indices]

CUBE_VERTICES: list[Vertex] = [
    Vertex((-0.5, -0.5, -0.5), (255, 0, 0)), # Bottom Face
    Vertex((0.5, -0.5, -0.5), (255, 0, 0)),
    Vertex((-0.5, -0.5, 0.5), (255, 0, 0)),
    Vertex((0.5, -0.5, 0.5), (255, 0, 0)),

    Vertex((-0.5, 0.5, -0.5), (0, 0, 255)), # Top Face
    Vertex((0.5, 0.5, -0.5), (0, 0, 255)),
    Vertex((-0.5, 0.5, 0.5), (0, 0, 255)),
    Vertex((0.5, 0.5, 0.5), (0, 0, 255)),
]

CUBE_INDICES: list[int] = [
    0, 1, 2, 1, 2, 3, # Bottom Face
    4, 5, 6, 5, 6, 7, # Top Face
    0, 1, 4, 1, 4, 5, # Front Face
    2, 3, 6, 3, 6, 7, # Back Face
    0, 2, 4, 2, 4, 6, # Left Face
    1, 3, 5, 3, 5, 7  # Right Face
]