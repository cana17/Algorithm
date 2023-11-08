func dfs(_ i: Int) {
    for j in 0..<n {
        if arr[i][j] == 1 && visited[j] == 0 {
            visited[j] = 1
            dfs(j)
        }
    }
}

let n = Int(readLine()!)!

var arr = [[Int]]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(input)
}

var visited = [Int](repeating: 0, count: n)

//정답 출력
for i in 0..<n {
    dfs(i)
    for j in 0..<n {
        visited[j] == 1 ? print(1, terminator: " ") : print(0, terminator: " ") // 한줄씩 출력
    }
    print() // 줄바꿈
    visited = [Int](repeating: 0, count: n) // 방문초기화
}