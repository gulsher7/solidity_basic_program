// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor(){
        manager = msg.sender;
    }

     receive() external payable {
        require(msg.value == 0.000000000000000001 ether, "Insufficient ether sent");
         participants.push(payable(msg.sender));
     }

    function getBalance() public view returns (uint){
        require(msg.sender == manager);
        return address(this).balance;
    }

    function checkParticipants() public  view returns (uint){
        require(msg.sender == manager);
        return participants.length;
    }

    function random() public view returns(uint){
        return uint256(keccak256(abi.encodePacked(block.timestamp, participants.length)));
    }

    function selectWinner() public{
        require(msg.sender == manager);
        require(participants.length>=3);
        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        participants = new address payable[](0);
    }
}