let n = Int(readLine()!)!
var layer = 1
var sum = 1

while sum < n {
    sum += (6 * layer)
    layer += 1
}

print(layer)