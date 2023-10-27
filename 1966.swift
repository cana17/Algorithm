let t = Int(readLine()!)!

for _ in 0..<t {
    let nm = readLine()!.split(separator: " ").map{ Int($0)! }
    let m = nm[1]
    var queue = readLine()!.split(separator: " ").enumerated().map{ ($0, Int($1)!) }

    var printOrder = 0

    while true {
        let now = queue.removeFirst()
        if queue.contains(where: { $0.1 > now.1 }) {
            queue.append(now)
        } else {
            printOrder += 1
            if now.0 == m {
                print(printOrder)
                break
            }
        }
    }
}