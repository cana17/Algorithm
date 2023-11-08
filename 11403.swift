func dfs(_ i: Int) {
    for j in 0..<n {
        if arr[i][j] == 1 && answer[j] == 0 { //자식이 있고 아직 방문안한 경우
            answer[j] = 1 // 정답에 표시
            dfs(j) // 자식 노드 조사 (하고 복귀)
        }
    }
}

let n = Int(readLine()!)!

var arr = [[Int]]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(input)
}

var answer = [Int](repeating: 0, count: n) // 정답 한 줄씩 출력

//정답 출력
for i in 0..<n {
    dfs(i)
    for j in 0..<n {
        answer[j] == 1 ? print(1, terminator: " ") : print(0, terminator: " ") // 한줄씩 출력
    }
    print() // 줄바꿈
    answer = [Int](repeating: 0, count: n) // 방문초기화
}
