struct Queue {
  private var left: [Int] = []
  private var right: [Int] = []

  var isEmpty: Bool {
      left.isEmpty && right.isEmpty
  }

  mutating func enqueue(_ value: Int) {
      right.append(value)
  }

  mutating func dequeue() -> Int? {
      if left.isEmpty {
          left = right.reversed()
          right.removeAll()
      }
      return left.popLast()
  }
}

func bfs(_ vertex: Int) {
  var queue = Queue()

  visited[vertex] = true
  queue.enqueue(vertex)
  result[vertex] = visitIdx
  visitIdx += 1

  while !queue.isEmpty {
      let willVisits = queue.dequeue()!

      for i in graph[willVisits]!.sorted(by: <) {
          if visited[i] == false {
              visited[i] = true
              result[i] = visitIdx
              visitIdx += 1
              queue.enqueue(i)
          }
      }
  }
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n,m,r) = (input[0], input[1], input[2])

var graph: [Int: [Int]] = [:]
for i in 1...n {
  graph[i] = []
}

for _ in 1...m {
  let input = readLine()!.split(separator: " ").map{ Int($0)! }
  let (i, j) = (input[0], input[1])
  graph[i]!.append(j)
  graph[j]!.append(i)
}

var visited = Array(repeating: false, count: n + 1)

var result: [Int: Int] = [:]
var visitIdx = 1

bfs(r)

for i in 1...n {
  if let toPrint = result[i] {
      print(toPrint)
  } else {
      print(0)
  }
}

////more better code i think
//import Foundation
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0], m = input[1], r = input[2]
//
//
//var graph: [[Int]] = Array(repeating: [], count: n+1)
//var visited: [Int] = Array(repeating: 0, count: n+1)
//
//for _ in 0..<m {
//    let nums = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[nums[0]].append(nums[1])
//    graph[nums[1]].append(nums[0])
//}
//
//var queue: [Int] = [r]
//var depth = 1
//
//visited[r] = depth
//
//var index = 0
//while index < queue.count {
//    let pop = queue[index]
//    
//    for i in graph[pop].sorted() {
//        if visited[i] == 0 {
//            depth += 1
//            visited[i] = depth
//            queue.append(i)
//        }
//    }
//    
//    index += 1
//}
//
//print(visited[1...].map { String($0) }.joined(separator: "\n"))