let n = Int(readLine()!)!
var idSet = Set<String>()
var cnt = 0

for _ in 0..<n {
    let id = readLine()!
    if id == "ENTER" {
        idSet.removeAll()
        continue
    }
    cnt += idSet.contains(id) ? 0 : 1
    idSet.insert(id)
}
print(cnt)