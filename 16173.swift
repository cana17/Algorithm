func dfs(_ x: Int, _ y: Int, graph: [[Int]], visit: inout [[Int]]) {
    let n = graph.count
    
    // 영역을 벗어났거나 이미 방문한 경우, 함수를 종료
    if x < 0 || x >= n || y < 0 || y >= n || visit[x][y] == 1 {
        return
    }
    
    // 방문한 곳의 이동 칸 수가 -1이라면 방문처리하고 함수 종료
    if graph[x][y] == -1 {
        visit[x][y] = 1
        return
    }
    
    // 방문한 곳을 표시
    visit[x][y] = 1
    
    // 아래, 오른쪽 방향 두가지로 이동하며 방문
    dfs(x + graph[x][y], y, graph: graph, visit: &visit)
    dfs(x, y + graph[x][y], graph: graph, visit: &visit)
}

// 게임 구역의 크기 n을 입력받음
let n = Int(readLine()!)!

// 게임판의 구역을 입력받음. 2차원 리스트로 저장
var graph = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(row)
}

// 방문 여부를 저장할 visit 2차원 리스트를 초기값 0으로 생성. 파라미터로 넘길때 값을 변경해야하므로 inout으로 보낸다
var visit = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

// 출발은(0, 0)이므로 dfs(0, 0)을 호출
dfs(0, 0, graph: graph, visit: &visit)

// 결과출력
visit[n-1][n-1] == 1 ? print("HaruHaru") : print("Hing")
