// https://www.hackerrank.com/challenges/simple-array-sum/problem
rl = require('readline');
var reader = rl.createInterface({
  input:process.stdin,
  output:process.stdout
});
function sortFunc(){
    var lines = [];
    var count = 0;
    reader.on('line',function(line){
      lines.push(line);
    });
    reader.on('close', function(){
      var sortArr = lines[1].split(' ');
      sortArr.forEach((elem)=>{
        count += Number(elem);
      });
      console.log(count);
    });
}

sortFunc();
