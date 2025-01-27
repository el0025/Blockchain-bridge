// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IBTToken is ERC20, Ownable {
    // Le constructeur initialise le nom et le symbole du token
    constructor() ERC20("IBT Token", "IBT") {}

    // Fonction pour créer des jetons (mint), réservée au déployeur
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Fonction pour brûler des jetons (burn), réservée au déployeur
    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
}
