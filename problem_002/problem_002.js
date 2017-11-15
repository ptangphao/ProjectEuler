var total = 0
var prev = 1
var val = 1
var temp = 0

while (val < 4000000){
  temp = prev
  prev = val
  val += temp
  if (val % 2 === 0){
    total += val
  }
}
console.log(total)