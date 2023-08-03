let word = readLine()!.map{ String($0) }
let len = word.count
var isPalindrome: Bool = true

for i in 0..<len {
    if word[i] != word[len-1-i] {
        isPalindrome = false
        break
    }
}

print(isPalindrome ? "1" : "0")

/* 간단한 풀이
let s = readLine()!
print(s == String(s.reversed()) ? 1 : 0)
*/