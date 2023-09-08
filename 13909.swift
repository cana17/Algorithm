let n = Int(readLine()!)!
var sum = 0
var i = 1

while i * i <= n {
    sum += 1
    i += 1
}
print(sum)