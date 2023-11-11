let n = Int(readLine()!)!
let stockPrice = readLine()!.split(separator: " ").map{ Int($0)! }

var minPrice = Int.max
var goodSell = 0

for i in 0..<n {
    minPrice = min(minPrice, stockPrice[i])
    goodSell = max(stockPrice[i] - minPrice, goodSell)
}
print(goodSell)