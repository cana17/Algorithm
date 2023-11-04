let s = readLine()!.map { String($0) }
var nowStack = 0
var count = 0

for i in 0..<s.count{
    if s[i] == "(" {
        nowStack += 1
    } else {
        nowStack -= 1
        if s[i-1] == "(" {
            count += nowStack
        } else {
            count += 1
        }
    }
}
print(count)