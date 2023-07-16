let input = readLine()!.split(separator: " ").map{ Int($0)! }

let (a, b, c) = (input[0], input[1], input[2])

if b >= c {
    print(-1) // b가 c보다 크거나 같으면 손익분기점이 없다
} else {
    let n = a / (c - b) + 1 // 이익이 발생하는 지점
    print(n)
}