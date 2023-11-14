var passenger = 0
var maxPassenger = 0

for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (out, new) = (input[0], input[1])

    passenger -= out
    passenger += new

    maxPassenger = max(passenger, maxPassenger)
}
print(maxPassenger)