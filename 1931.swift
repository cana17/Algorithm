let n = Int(readLine()!)!
var meetings = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    meetings.append((input[0], input[1]))
}

meetings.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }

var cnt = 0
var endTime = -1

for time in meetings {
    if endTime <= time.0 {
        cnt += 1
        endTime = time.1
    }
}

print(cnt)