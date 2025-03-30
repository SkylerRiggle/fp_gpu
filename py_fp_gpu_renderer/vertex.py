from numpy import float32, uint8

class Vertex:
    position: list[float32]
    color: list[uint8]

    def __init__(self, position: tuple[float, float, float], color: tuple[int, int, int]):
        assert 0 <= color[0] <= 255, "Color values must be in the range [0, 255]"
        assert 0 <= color[1] <= 255, "Color values must be in the range [0, 255]"
        assert 0 <= color[2] <= 255, "Color values must be in the range [0, 255]"
        
        self.position = [float32(coord) for coord in position]
        self.color = [uint8(c) for c in color]

    def copy(self) -> 'Vertex':
        return Vertex(tuple(self.position), tuple(self.color))