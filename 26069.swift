let n = Int(readLine()!)!
var set: Set<String> = ["ChongChong"]
for _ in 0..<n {
    let id = readLine()!.split(separator: " ").map{ String($0) }
    if set.contains(id[0]) || set.contains(id[1]) {
        set.insert(id[0])
        set.insert(id[1])
    }
}
print(set.count)