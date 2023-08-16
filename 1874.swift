let n = Int(readLine()!)!
var count = 1
var arr = [Int]()
var ans = [String]()
var isValid = true

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    while count <= input {
        arr.append(count)
        ans.append("+")
        count += 1
    }
    
    if arr.last == input {
        arr.removeLast()
        ans.append("-")
    } else {
        isValid = false
        break
    }
}

if isValid {
    print(ans.joined(separator: "\n"))
} else {
    print("NO")
}