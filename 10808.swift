let word = Array(readLine()!)
var alphabetCount = [Int](repeating: 0, count: 26)

for alphabet in word {
    alphabetCount[Int(alphabet.asciiValue!) - 97] += 1
}
print(alphabetCount.map{ "\($0)" }.joined(separator: " "))