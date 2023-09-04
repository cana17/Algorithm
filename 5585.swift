var change = 1000 - Int(readLine()!)!
var coinTypes = [500, 100, 50, 10, 5, 1]
var cnt = 0

for coin in coinTypes {
    cnt += change / coin
    change %= coin
}
print(cnt)