import UIKit

struct Queue<Item> {
    private var items: [Item] = []
    
    //Enqueue
    mutating func enqueue(item: Item) {
        items.append(item)
    }
    
    //Dequeue
    mutating func dequeue() -> Item {
        guard !items.isEmpty else { fatalError() }
        return items.removeFirst()
    }
    
    //Head
    var head: Item {
        guard let firstItem = items.first else { fatalError() }
        return firstItem
    }
    
    //Tail
    var tail: Item {
        guard let lastItem = items.last else { fatalError() }
        return lastItem
    }
    
}

extension Queue: CustomStringConvertible {
    var description: String {
        let start = "Queue: "
        let end = " [HEAD]"
        let elements = items
            .map{ String(describing: $0) }
            .reversed()
            .joined(separator: " -> ")
        return start + elements + end
    }
    
    func printQueue() {
        print(description)
    }
}

var queue: Queue = Queue<String>()
queue.enqueue(item: "One")
queue.enqueue(item: "Two")
queue.enqueue(item: "Three")
queue.enqueue(item: "Fourt")

queue.dequeue()
queue.printQueue()
