func dfs(_ i: Int, _ arr: [Int]) {
    if i > n {
        if arr.count == m {
            ans.append(arr)
        }
        return
    }
    dfs(i + 1, arr + [i])
    dfs(i + 1, arr)
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n,m) = (input[0], input[1])
var ans = [[Int]]()

dfs(1, [])

for answer in ans {
    print(answer.map { String($0) }.joined(separator: " "))
}