  public class BFSNode<T> {

      //Value, 방문 상태, 참조값 변수 선언
      public var value: T
      public var neighbours: [BFSNode]
      public var visited: Bool

      //초기화
      public init(value: T, neighbours: [BFSNode], visited: Bool) {
          self.value = value
          self.neighbours = neighbours
          self.visited = visited
      }

      //예제를 위한 도우미 메소드
      public func addNeighbour(node: BFSNode) {
          self.neighbours.append(node)
          node.neighbours.append(self)
      }

      public static func breadthFirstSearch(first:BFSNode) {
          //큐 초기화
          var queue: [BFSNode] = []

          //루트 노드에서 시작
          queue.append(first)

          //큐에서 노드 방문을 시작
          while !queue.isEmpty {
              if let node = queue.first {
                  //현재 노드의 값을 출력하고 방문 표식 남기기
                  print(node.value)
                  node.visited = true
                  //큐에 아직 방문하지 않은 이웃을 추가
                  for neighbour in node.neighbours {
                      if neighbour.visited == false {
                          queue.append(neighbour)
                      }
                  }
                  //이미 처리한 노드는 삭제하고,
                  //큐의 나머지 요소에 대한 처리 지속
                  queue.removeFirst()
              }
          }
      }

  }
  //노드 데이터 추가
  let nodeA = BFSNode(value: "A", neighbours: [], visited: false)
  let nodeB = BFSNode(value: "B", neighbours: [], visited: false)
  let nodeC = BFSNode(value: "C", neighbours: [], visited: false)
  let nodeD = BFSNode(value: "D", neighbours: [], visited: false)
  let nodeE = BFSNode(value: "E", neighbours: [], visited: false)
  let nodeF = BFSNode(value: "F", neighbours: [], visited: false)
  let nodeG = BFSNode(value: "G", neighbours: [], visited: false)

  //노드들간의 관계
  nodeA.addNeighbour(node: nodeB)
  nodeC.addNeighbour(node: nodeB)
  nodeD.addNeighbour(node: nodeB)
  nodeE.addNeighbour(node: nodeB)
  nodeF.addNeighbour(node: nodeD)
  nodeG.addNeighbour(node: nodeG)

  //: 노드A부터 BFS 메소드를 실행
  BFSNode.breadthFirstSearch(first: nodeB)