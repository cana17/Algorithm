//노드 생성
struct Node {
    let value: String
    let leftChild: String
    let rightChild: String
}

//전위 순회: root->left->right
func preOrder(node: Node) {
    print(node.value, terminator: "")
    if node.leftChild != "." {
        preOrder(node: tree[node.leftChild]!)
    }
    if node.rightChild != "." {
        preOrder(node: tree[node.rightChild]!)
    }
}

//중위 순회: left->root->right
func inOrder(node: Node) {
    if node.leftChild != "." {
        inOrder(node: tree[node.leftChild]!)
    }
    print(node.value, terminator: "")
    if node.rightChild != "." {
        inOrder(node: tree[node.rightChild]!)
    }
}

//후위 순회: left->right->root
func postOrder(node: Node) {
    if node.leftChild != "." {
        postOrder(node: tree[node.leftChild]!)
    }
    if node.rightChild != "." {
        postOrder(node: tree[node.rightChild]!)
    }
    print(node.value, terminator: "")
}

//입력
let n = Int(readLine()!)!
var tree: [String:Node] = [:]
for _ in 0..<n {
    let nodes = readLine()!.split(separator: " ")
    tree[String(nodes[0])] = Node(value: String(nodes[0]), leftChild: String(nodes[1]), rightChild: String(nodes[2]))
}

//출력
let startNode = tree["A"]!
preOrder(node: startNode)
print()
inOrder(node: startNode)
print()
postOrder(node: startNode)