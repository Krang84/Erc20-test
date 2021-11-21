pragma solidity ^0.8.5;


address public admin ;

// Contrat erc-20 importé du github d'openZepplin
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/token/ERC20/ERC20.sol' ;


contract MyZeyo is ERC20 {

   constructor(uint256 initialSupply) ERC20('CID93', 'CID') {
        _mint(msg.sender, initialSupply) ;
        admin = msg.sender
   }
   
   
   function mint(address to, uint amount) external {
      require (msg.sender == admin, 'amdin only');
      _mint(to, amount);
   
   }
   
   function burn (uint amount) external {
       _burn(msg.sender, amount);
   }

}
