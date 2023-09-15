var answer = Int(readLine()!)!
for _ in 1...9 {
    let price = Int(readLine()!)!
    answer -= price
}
print(answer)