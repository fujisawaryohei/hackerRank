rl = require('readline');
reader = rl.createInterface({
    input: process.stdin,
    output: process.stdout
})
function staircase (reader){
  var test;
  reader.on('line', function (line) {
      test = line;
  })
  reader.on('close', function () {
    for (var i = 1; i <= test; i++) {
          var str = "";
          for (var j = 1; j <= test-i; j++) {
              str += " ";
          }
          for (var j = 1; j <= i; j++) {
              str +=  "#";
          }
          console.log(str);
          str += "\n";
      }
  })
}

staircase(reader);
