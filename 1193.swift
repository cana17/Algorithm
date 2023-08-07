var n = Int(readLine()!)!
var huddle = 1

while n > huddle {
    n -= huddle
    huddle += 1
}

if huddle % 2 != 0 {
    print("\(huddle + 1 - n)/\(n)") //  홀수일때
} else {
    print("\(n)/\(huddle + 1 - n)") // 짝수일때
}