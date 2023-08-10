let n = Int(readLine()!)!
var answer = 0

for i in 0 ..< n{
    var temp = i
    var sum = 0
    
    while( temp != 0){ // 분해합
        sum += temp % 10
        temp /= 10
    }
    
    if sum + i == n {
        answer = i
        break
    }
}

print(answer)