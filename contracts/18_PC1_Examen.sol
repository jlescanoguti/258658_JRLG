// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

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

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}