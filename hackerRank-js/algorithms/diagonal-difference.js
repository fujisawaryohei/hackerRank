rl = require('readline');
var reader = rl.createInterface({
  input:process.stdin,
  output:process.stdout
});

function inputFunc(reader){
  let lines = new Array;
  let array = new Array;
  reader.on('line',function(line){
    lines.push(line);
  });
  reader.on('close',function(){
    var arr = new Array;
    var i = 0;
    var l = 0;
    var r = 0;
    var numrowcolumns = Number(lines[0])-1;
    var leftcount = 0;
    var rightcount = 0;
    while(i < Number(lines[0])){
      array[i] = lines[i+1].split(' ');
      arr[i] = array[i].map((a)=>Number(a));
      i++;
    }
    while(l < Number(lines[0])){
      leftcount += arr[l][l]
      l++;
    }
    while(r < Number(lines[0])){
      rightcount += arr[r][numrowcolumns]
      r ++;
      numrowcolumns --;
    }
    let count = leftcount - rightcount;
    let abscount = count < 0 ? Math.abs(count) : count
    console.log(abscount);
  });
}
inputFunc(reader);
