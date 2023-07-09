import Foundation

func dfs(_ x: Int, _ y: Int, graph: [[Int]], visit: inout [[Int]]) {
    let N = graph.count
    
    // 영역을 벗어났거나 이미 방문한 경우, 함수를 종료합니다.
    if x <= -1 || x >= N || y <= -1 || y >= N || visit[x][y] == 1 {
        return
    }
    
    // 방문한 곳의 이동 칸 수가 -1이라면 방문처리하고 함수를 종료합니다.
    if graph[x][y] == -1 {
        visit[x][y] = 1
        return
    }
    
    // 방문한 곳을 표시합니다.
    visit[x][y] = 1
    
    // 상,하,좌,우로 이동하여 방문합니다.
    dfs(x + graph[x][y], y, graph: graph, visit: &visit)
    dfs(x, y + graph[x][y], graph: graph, visit: &visit)
}

// 게임 구역의 크기 N을 입력받습니다.
let N = Int(readLine()!)!

// 게임판의 구역을 입력받습니다. 2차원 리스트로 저장합니다.
var graph = [[Int]]()
for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(row)
}

// 방문 여부를 저장할 visit 2차원 리스트를 생성합니다.
var visit = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)

// 출발은 (0, 0)이므로 dfs(0, 0)을 호출합니다.
dfs(0, 0, graph: graph, visit: &visit)

// 결과를 출력합니다.
if visit[N-1][N-1] == 1 {
    print("HaruHaru")
} else {
    print("Hing")
}
