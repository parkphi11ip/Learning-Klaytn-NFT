// Klaytn IDE uses solidity 0.4.24, 0.5.6 versions.
pragma solidity >=0.4.24 <=0.5.6;

contract Practice{
    uint256 public totalSupply = 10;
    string public name = "klayphillip";

    address public owner; // contract deployer
    mapping (uint256 => string)public tokenURIs;

    constructor () public{
        owner = msg.sender;
    }

    function getTotalSupply() public view returns (uint256) {
        return totalSupply + 10000000;
    }
    function setTotalSupply(uint256 newSupply) public{
        require(owner == msg.sender, 'Not owner');
        totalSupply = newSupply;
    }

    function setTokenUri(uint256 id, string memory uri) public {
        tokenURIs[id] = uri;
    }
}