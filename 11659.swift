let input = readLine()!.split(separator: " ").map{ Int($0)! }
var arr = [0] + readLine()!.split(separator: " ").map{ Int($0)! }

for i in 1...input[0] {
    arr[i] += arr[i-1]
}

for _ in 0..<input[1] {
    let t = readLine()!.split(separator: " ").map { Int($0)! }
    let (i, j) = (t[0], t[1])
    print(arr[j] - arr[i-1])
}