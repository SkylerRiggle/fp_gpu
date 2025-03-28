from typing import Generator


class Vertex:
    __position: list[float]
    __color: list[int]

    def __init__(
        self,
        x_pos: float,
        y_pos: float,
        z_pos: float,
        red: int,
        green: int,
        blue: int
    ) -> None:
        assert 0 <= red <= 255, "Red color value must be between 0 and 255!"
        assert 0 <= green <= 255, "Green color value must be between 0 and 255!"
        assert 0 <= blue <= 255, "Blue color value must be between 0 and 255!"

        self.__position = [x_pos, y_pos, z_pos]
        self.__color = [red, green, blue]

    def get_position(self) -> tuple[float, float, float]:
        return self.__position[0], self.__position[1], self.__position[2]
    
    def get_color(self) -> tuple[int, int, int]:
        return self.__color[0], self.__color[1], self.__color[2]
    
    def translate(self, dx: float, dy: float, dz: float) -> None:
        self.__position[0] += dx
        self.__position[1] += dy
        self.__position[2] += dz

    def scale(self, sx: float, sy: float, sz: float) -> None:
        self.__position[0] *= sx
        self.__position[1] *= sy
        self.__position[2] *= sz

    def copy(self) -> "Vertex":
        return Vertex(
            self.__position[0],
            self.__position[1],
            self.__position[2],
            self.__color[0],
            self.__color[1],
            self.__color[2]
        )

class Model:
    __vertices: list[Vertex]
    __indices: list[int]

    def __init__(
        self,
        vertices: list[Vertex],
        indices: list[int]
    ) -> None:
        assert len(vertices) * 3 <= len(indices), "Model vertices and indices mismatch!"

        self.__vertices = [vertex.copy() for vertex in vertices]
        self.__indices = indices.copy()

    def get_triangle(self, index: int) -> tuple[Vertex, Vertex, Vertex]:
        index *= 3
        assert 0 <= index < len(self.__indices), "Triangle index out of bounds!"

        return (
            self.__vertices[self.__indices[index]],
            self.__vertices[self.__indices[index + 1]],
            self.__vertices[self.__indices[index + 2]]
        )

    def iterate_triangles(self) -> Generator[tuple[Vertex, Vertex, Vertex], None, None]:
        for idx in range(0, len(self.__indices), 3):
            yield (
                self.__vertices[self.__indices[idx]],
                self.__vertices[self.__indices[idx + 1]],
                self.__vertices[self.__indices[idx + 2]]
            )

    def translate(self, dx: float, dy: float, dz: float) -> None:
        for vertex in self.__vertices:
            vertex.translate(dx, dy, dz)

    def scale(self, sx: float, sy: float, sz: float) -> None:
        for vertex in self.__vertices:
            vertex.scale(sx, sy, sz)