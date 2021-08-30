pragma solidity ^0.4.25;
//C.3.ZOMBIE BATTLES
import "./zombiehelper.sol";
contract ZombieAttack is ZombieHelper {
//C.4.RANDOM NUMBERS(OJO VULNERABILIDAD)
  uint randNonce = 0;

  function randMod(uint _modulus) internal returns(uint) {
//why ++? Because it will increment the Nonce.
    randNonce++;
    return uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % _modulus;
  }
}
