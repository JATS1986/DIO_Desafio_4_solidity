// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ZooCombate is ERC721{

    struct Zoocombate{
        string name;
        uint level;
        string img;
    }

    Zoocombate[] public zoocombates;
    address public gameOwner;

    constructor () ERC721 ("Zoo Combate", "ZC"){

        gameOwner = msg.sender;

    } 

    modifier onlyOwnerOf(uint _monsterId) {

        require(ownerOf(_monsterId) == msg.sender,"Apenas o dono pode batalhar com este Zoocombate");
        _;

    }

    function battle(uint _attackingZoocombate, uint _defendingZoocombate) public onlyOwnerOf(_attackingZoocombate){
        Zoocombate storage attacker = zoocombates[_attackingZoocombate];
        Zoocombate storage defender = zoocombates[_defendingZoocombate];

         if (attacker.level >= defender.level) {
            attacker.level += 2;
            defender.level += 1;
        }else{
            attacker.level += 1;
            defender.level += 2;
        }
    }

    function createNewZoocombate(string memory _name, address _to, string memory _img) public {
        require(msg.sender == gameOwner, "Apenas o dono do jogo pode criar novos Zoocombates");
        uint id = zoocombates.length;
        zoocombates.push(Zoocombate(_name, 1,_img));
        _safeMint(_to, id);
    }
}