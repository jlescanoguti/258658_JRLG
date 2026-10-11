// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.1 <0.9.0;

contract Biblioteca258658 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 paginas;
        string autor;
    }

    Libro[] public libros;

    uint256 public posicion;
    address public direccion;
    uint256 private cantidad;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _paginas, string memory _autor) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _titulo, _paginas, _autor));
        cantidad = cantidad + 1;
    }

    function contarElementos() public view returns (uint256) {
        return cantidad;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

}