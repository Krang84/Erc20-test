# ERC 20

Interface standard du smart contract ERC-20


function symbol() public view returns (string)

decimals

function decimals() public view returns (uint8)

total token supply

function totalSupply() public view returns (uint256)

balance

function balanceOF(address _owner) public view returns (uint256 balance)

transfer

function transfer(address _to, uint256 _value) public returns (bool success)

transfer From

function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)

approve

function allowance(address _owner, address _spender) public view returns (uint256 remaining)
