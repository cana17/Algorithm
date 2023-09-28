func dfs(_ num: [Int]) {
    if num.count == m {
        print(num.map { "\($0)" }.joined(separator: " "))
        return
    }
    for i in 1...n {
        if num.contains(i) {
            continue
        }
        dfs(num + [i])
    }
}
let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, m) = (nm[0], nm[1])
dfs([])