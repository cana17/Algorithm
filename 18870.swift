let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict = [Int:Int]()
var rank = 0

for i in input.sorted() {
    if dict[i] == nil {
        dict[i] = rank
        rank += 1
    }
}
print("\(input.map{ String(dict[$0]!) }.joined(separator: " "))")