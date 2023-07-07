import Foundation

let input = Int(readLine()!)!
if input<0 || input>99 {print("잘못된 입력입니다.")}

var newNumber = input
var count = 0

repeat {
    
    let tensPlace = newNumber / 10
    let onesPlace = newNumber % 10
    let sum = tensPlace + onesPlace
    
    if sum < 10 {
        newNumber = onesPlace * 10 + sum
    } else {
        newNumber = onesPlace * 10 + sum % 10
    }
    count += 1
    
} while input != newNumber

print(count)