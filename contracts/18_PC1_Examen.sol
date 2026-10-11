// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca258658 {

    struct Libro {
        uint256 id;
        string titulo;
        uint256 paginas;
        string autor;
        bool estado;
    }

    Libro[] public libros;

    uint256 public posicion;
    address public direccion;
    uint256 private cantidad;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _paginas, string memory _autor, bool _estado) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _titulo, _paginas, _autor, _estado));
        cantidad = cantidad + 1;
    }

    function contarElementos() public view returns (uint256) {
        return cantidad;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

    function mostrarActivos() external view {
        console.log("Ejecutado por 258658 - Jaime Lescano Gutierrez");
        for (uint256 i = 0; i < cantidad; i++) {
            if (libros[i].estado) {
                console.log("Libro activo:", libros[i].id, libros[i].titulo);
            }
        }
    }

}