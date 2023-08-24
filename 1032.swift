let n = Int(readLine()!)!
var cmd = readLine()!.map{ String($0) }

for _ in 1..<n {
    let str = readLine()!.map{ String($0) }
    for i in 0..<cmd.count {
        if cmd[i] != str[i] {
            cmd[i] = "?"
        }
    }
}
print(cmd.joined())