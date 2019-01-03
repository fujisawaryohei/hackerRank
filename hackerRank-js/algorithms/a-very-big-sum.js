rl = require('readline');
var reader = rl.createInterface({
  input:process.stdin,
  output:process.stdout
});

function outputFunc(reader){
  var lines = [];
  reader.on('line',function(line){
    lines.push(line);
  });
  reader.on('close',function(){
    count = 0;
    var arr = lines[1].split(' ');
    arr.forEach(function(a){
      count += Number(a)
    });
    console.log(count);
  });
}

outputFunc(reader);
