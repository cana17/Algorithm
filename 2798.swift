let card = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = card[0]
let m = card[1]

let cardNumbers = readLine()!.split(separator: " ").compactMap { Int($0) }

func newBlackjack(cards: [Int], target: Int) -> Int {
    var result = 0
    
    // 3장의 카드를 고르는 모든 경우의 수를 탐색
    for i in 0..<n {
        for j in i+1..<n {
            for k in j+1..<n {
                let sum = cards[i] + cards[j] + cards[k]
                
                // 합이 target보다 작거나 같으면서 현재 결과값보다 큰 경우, 결과값 갱신
                if sum <= target && sum > result {
                    result = sum
                }
            }
        }
    }
    
    return result
}

let maxSum = newBlackjack(cards: cardNumbers, target: m)
print(maxSum)