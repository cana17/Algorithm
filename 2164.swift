struct Queue {
    private var array: [Int] = []
    private var index: Int = 0

    var size: Int {
        return array.count - index
    }

    var isEmpty: Bool {
        return array.count - index <= 0
    }

    var last: Int {
        return array.last!
    }

    mutating func push(_ element: Int) {
        array.append(element)
    }

    mutating func pop() -> Int {
        guard !self.isEmpty else {
            return -1
        }
        let element = array[index]
        index += 1
        return element
    }
}

let n = Int(readLine()!)!
var queue = Queue()
(1...n).forEach { queue.push($0) }

while queue.size != 1 {
    queue.pop()
    queue.push(queue.pop())
}

print(queue.last)