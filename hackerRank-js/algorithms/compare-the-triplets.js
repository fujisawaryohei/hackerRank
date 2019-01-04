// https://www.hackerrank.com/challenges/compare-the-triplets/problem
rl = require('readline');
var reader = rl.createInterface({
  input:process.stdin,
  output:process.stdout
});
var alice = new Array;
var bob = new Array;
var lines = [];
function outputFunc(reader){
  var alicePoint = 0;
  var bobPoint = 0;
  reader.on('line',function(line){
    lines.push(line);
    //lineイベントは入力が完全に終わるまで、イベントが回っているので、closeイベントで、配列処理をしてあげる.
  });
  reader.on('close',function(){
    alice = lines[0].split(' ');
    bob = lines[1].split(' ');
    for(var i = 0; i < alice.length; i++){
      if(Number(alice[i]) > Number(bob[i])){
        alicePoint++;
      } else if(Number(alice[i]) < Number(bob[i])){
        bobPoint++;
      }
    }
    console.log(`${alicePoint} ${bobPoint}`);
  });
}

outputFunc(reader);
