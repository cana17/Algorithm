let t = Int(readLine()!)!
for _ in 0..<t {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)
    print(arr[2])
}