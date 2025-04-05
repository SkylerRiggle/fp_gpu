class Vertex:
    x: float
    y: float
    z: float

    r: int
    g: int
    b: int

    def __init__(self, x: float, y: float, z: float, r: int, g: int, b: int) -> None:
        assert 0 <= r <= 255, "Red value must be between 0 and 255"
        assert 0 <= g <= 255, "Green value must be between 0 and 255"
        assert 0 <= b <= 255, "Blue value must be between 0 and 255"

        assert isinstance(x, (int, float)), "X must be a number"
        assert isinstance(y, (int, float)), "Y must be a number"
        assert isinstance(z, (int, float)), "Z must be a number"

        assert isinstance(r, int) and isinstance(g, int) and isinstance(b, int), "Color values must be integers"

        self.x = x
        self.y = y
        self.z = z
        self.r = r
        self.g = g
        self.b = b

    def color_32bit(self) -> int:
        return (self.r << 24) | (self.g << 16) | (self.b << 8) | 0xFF
    
    def copy(self) -> 'Vertex':
        return Vertex(self.x, self.y, self.z, self.r, self.g, self.b)