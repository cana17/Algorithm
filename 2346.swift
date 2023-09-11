class Balloon {
    var index: Int
    var value: Int
    
    init(index: Int, value: Int) {
        self.index = index
        self.value = value
    }
}

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [Balloon]()

for i in 0..<n {
    arr.append(Balloon(index: i + 1, value: input[i]))
}

var result = [Int]()
var position = 0

while !arr.isEmpty {
    result.append(arr[position].index)
    var next: Int = position + arr[position].value + (arr[position].value > 0 ? -1 : 0)
    arr.remove(at: position)

    if arr.count == 0 {
        break
    }
    next %= arr.count

    if next < 0 {
        next += arr.count
    }
    position = next
}
result.forEach { print($0,terminator: " ")}