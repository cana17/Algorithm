let dish = readLine()!.map{ String($0) }
var height = 10
for i in 1..<dish.count {
    dish[i] == dish[i-1] ? (height += 5) : (height += 10)
}
print(height)