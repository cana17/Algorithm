let n = Int(readLine()!)!
var coordinate: [(x: Int, y: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    coordinate.append((a, b))
}
coordinate.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 } // y좌표 같으면 x좌표 증가순으로
coordinate.forEach{print($0.x, $0.y)}