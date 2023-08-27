var set = Set<String>()
let s = readLine()!.map { String($0) }

for i in 0..<s.count {
    var temp = ""
    for j in i..<s.count {
        temp += String(s[j])
        set.insert(temp)
    }
}

print(set.count)