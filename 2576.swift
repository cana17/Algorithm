var arr = [Int]()
for _ in 1...7 {
    let n = Int(readLine()!)!
    if n % 2 == 1 {
        arr.append(n)
    }
}
if arr.isEmpty { print(-1) }
else {
    arr.sort()
    print(arr.reduce(0, +))
    print(arr[0])
}