let n = Int(readLine()!)!
let nCard = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let m = Int(readLine()!)!
let mCard = readLine()!.split(separator: " ").map { Int($0)! }

var dict = [Int: Int]()
for card in nCard {
    dict.updateValue((dict[card] ?? 0)+1, forKey: card)
}

var ans = [Int]()
for card in mCard {
    ans.append(dict[card] ?? 0)
}
print(ans.map{ String($0) }.joined(separator: " "))