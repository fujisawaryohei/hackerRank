// rl = require('readline');
// const reader = rl.createInterface({
//   input:process.stdin,
//   output:process.stdout
// });
//
// function loginfunc(reader){
//   return new Promise((resovle,reject)=>{
//     let lines = new String;
//     reader.on('close',(i)=>{
//       lines = i;
//     });
//     if(lines){
//       reject(new Error('UserName is Empty!'));
//     }
//     resolve(true);
//   });
// }
//
// function ExceptionFunc(reader,func){
//   logingfunc(reader)
//   .then((result)=>{ console.log(result); })
//   .catch((e)=>{ console.log(e); })
// }

rl= require('readline');
const reader = rl.createInterface({
  input:process.stdin,
  output:process.stdout
});
let lines = [];
reader.on('close',(i)=>{
  lines.push(i);
});
console.log(lines);
