func absoluteDifference(_ a: Int, _ b: Int) -> Int {
    let difference = abs(a - b)
    return difference
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()

    var ans = [Int]()
    var temp = [Int]()

    for i in 0..<n {
        if i % 2 == 0 {
            ans.append(arr[i])
        } else {
            temp.append(arr[i])
        }
    }
    temp.sort(by: >)
    ans += temp

    var answer = 0
    for i in 0..<n-1 {
        answer = max(answer,absoluteDifference(ans[i], ans[i+1]))
    }
    print(answer)
}