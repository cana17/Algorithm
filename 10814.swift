let n = Int(readLine()!)!
var member: [(age: Int, name: String)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!
    let name = String(input[1])
    member.append((age, name))
}
member.sort{ $0.age < $1.age }
member.forEach{print($0.age, $0.name)}