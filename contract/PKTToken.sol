pragma solidity ^0.8.5;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract PKTToken is ERC20 {
    
    address public admin_contractOwner;
    
    constructor() ERC20('PKR Token', 'PKT'){
        _mint(msg.sender, 10000 * 10 ** 2);
        admin_contractOwner = msg.sender;
    }
    
    function mint(address to, uint amount) external {
        require(msg.sender == admin_contractOwner , 'only owner/admin can perform this');
        _mint(to, amount);
    }
    
    function burn(uint amount) external {
        _burn(msg.sender, amount);
        
    }
    
}