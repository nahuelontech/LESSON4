pragma solidity ^0.4.25;
import "./zombiehelper.sol";
contract ZombieAttack is ZombieHelper {
  uint randNonce = 0;
  uint attackVictoryProbability = 70;

  function randMod(uint _modulus) internal returns(uint) {
    randNonce++;
    return uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % _modulus;
  }
//C.8.Back to attack. Nota como pusimos ownerOf(_zombieId)
  function attack(uint _zombieId, uint _targetId) external ownerOf(_zombieId) {
//C.8.
    Zombie storage myZombie = zombies[_zombieId];
    Zombie storage enemyZombie = zombies[_targetId];
    uint rand = randMod(100);
  }
}
