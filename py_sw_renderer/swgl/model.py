from swgl.vertex import Vertex

class Model:
    vertices: list[Vertex]
    indices: list[int]

    def __init__(self, vertices: list[Vertex], indices: list[int]) -> None:
        assert isinstance(vertices, list) and all(isinstance(v, Vertex) for v in vertices), "Vertices must be a list of Vertex instances"
        assert isinstance(indices, list) and all(isinstance(i, int) for i in indices), "Indices must be a list of integers"

        self.tri_count = len(indices) // 3

        assert self.tri_count > 0, "Model must have at least one triangle (3 indices)"
        assert self.tri_count * 3 == len(indices), "Indices must be a multiple of 3 for triangles"

        self.vertices = [vert.copy() for vert in vertices]
        self.indices = [idx for idx in indices]

    def copy(self) -> 'Model':
        return Model(self.vertices, self.indices)