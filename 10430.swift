import Foundation

var input = readLine()!
var inputArr = input.split(separator: " ")

let a = Int(inputArr[0])!
let b = Int(inputArr[1])!
let c = Int(inputArr[2])!

print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print(((a%c)*(b%c))%c)