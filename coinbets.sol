// A coin bets that work with oraclizeAPi.sol 


contract Coin{
  mapping (bytes32 => address) bets;
    
  function __callback(bytes32 myid, string


*import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";

contract Coin is usingOraclize {
  mapping (bytes32 => address) bets;
    
  function __callback(bytes32 myid, string result) {
    if (msg.sender != oraclize_cbAddress()) throw;
    if ((parseInt(result) )&&(bets[myid].send(2)))
      log0('win'); // winner 
    else log0('lose'); // loser
  }
    
  function bet() {
    // we accept just test bets worth 1 Wei :)
    if ((msg.value != 1)||(this.balance < 2)) throw;
    rollcoin();
  }
    
  function rollcoin() private {
    bytes32 myid = oraclize_query("WolframAlpha",
                    "random number ");
    bets[myid] = msg.sender;
  }
} result) {
    if (msg.sender != oraclize_cbAddress()) throw;
    if ((parseInt(result) )&&(bets[myid].send(2)))
      log0('win'); // winner AND send didn't fail!
    else log0('lose'); // loser OR sending failed
  }
    
  function bet() {
    // we accept just test bets worth 1 Wei :)
    if ((msg.value != 2)||(this.balance < 2)) throw;
    rollDice();
  }
    
  function rollcoin() private {
    bytes32 myid = oraclize_query("WolframAlpha",
                    "chosse 1 or 2 ");
    bets[myid] = msg.sender;
  }
}
Contact GitHub API Training Shop Blog About
