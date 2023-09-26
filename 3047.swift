let n = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let order = readLine()!

for char in order {
    switch char {
    case "A":
        print(n[0], terminator: " ")
    case "B":
        print(n[1], terminator: " ")
        
    case "C":
        print(n[2], terminator: " ")
    default:
        break
    }
}