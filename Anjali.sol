/*
1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner{
            _mint(to, amount);
        }
        function transferTokens(address _reciever, uint amount) external{
            require(balanceOf(msg.sender) >= amount, "you are not owner");
            approve(msg.sender, amount);
            transferFrom(msg.sender, _reciever, amount);
        }
        function checkBalance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        function burnTokens(uint amount) external{
            require(balanceOf(msg.sender)>= amount, "You do not have enough Tokens");
            _burn(msg.sender, amount);
        }
        function PlayStore() public pure returns(string memory) {
            return "1. Instagram = 100 \n 2. Whatsapp = 75 /n 3. Snapchat = 50";
        }
        function reedemTokens(uint choice) external payable{
            require(choice<=3,"Invalid selection");
            if(choice ==1){
                approve(msg.sender, 100);
                transferFrom(msg.sender, owner(), 100);
            }
            else if(choice ==2){
                approve(msg.sender, 75);
                transferFrom(msg.sender, owner(), 75);
            }
            else{
                approve(msg.sender, 50);
                transferFrom(msg.sender, owner(), 50);
            }


        }

}