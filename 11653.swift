var n = Int(readLine()!)!
var i = 2

while n > 1 {
    if n % i == 0 {
        print(i)
        n /= i
    }
    else {
        i += 1
    }
}