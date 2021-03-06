/*	Comentarios sobre lo que el contracto realiza */
/*
 * 	Nombre: proyecto9.sol
 *	Version:	v0.1
 *	Autor:	Jorge Martin
 *	Fecha:	noviembre 2017
 *	Descripcion:		Herencia - Herencia.sol
 *
 */

/* Declaracion pragma */

pragma solidity ^0.4.0;

contract mortal {
    address public owner;
    
    function mortal() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner) {
            throw;
        } else {
            _;
        }
    }
    function kill() onlyOwner {
        suicide(owner);
    }
    
}

contract User is mortal{
    
    string public userName;
    
    function User(string _name) {
        userName = _name;
    }
}

contract Provider is mortal{
    
    string public providerName;
    
    function Provider (string _name) {
        providerName = _name;
    }
}
