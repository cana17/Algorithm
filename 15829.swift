let l = Int(readLine()!)!
let input = readLine()!

var r = 1
var hash = 0
let mod = 1_234_567_891

for char in input {
    let a = Int(char.asciiValue!) - 96
    hash += a * r
    r *= 31
    r %= mod
}
hash %= mod
print(hash)