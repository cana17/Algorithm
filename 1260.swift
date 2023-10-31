func dfs(_ v: Int) {
  visited[v] = true
  print(v, terminator: " ")
  for i in 1..<n+1 {
      if visited[i] == false && graph[v][i] == 1 {
          dfs(i)
      }
  }
}

func bfs(_ v: Int) {
  var queue: [Int] = []
  visited[v] = false
  queue.append(v)

  while !queue.isEmpty {
      let node = queue.removeFirst()
      print(node, terminator: " ")

      for i in 1..<n+1 {
          if visited[i] == true && graph[node][i] == 1 {
              queue.append(i)
              visited[i] = false
          }
      }
  }
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, m, v) = (input[0], input[1], input[2])

var graph = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
var visited = Array(repeating: false, count: n+1)

for _ in 0..<m {
  let n = readLine()!.split(separator: " ").map{ Int($0)! }
  let (i, j) = (n[0], n[1])
  graph[i][j] = 1
  graph[j][i] = 1
}

dfs(v)
print()
bfs(v)