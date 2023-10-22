let sp = readLine()!.split(separator: " ").compactMap { Int($0) }
let (s, p) = (sp[0], sp[1])

let dna = Array(readLine()!)

let acgt = readLine()!.split(separator: " ").compactMap { Int($0) }
let (a, c, g, t) = (acgt[0], acgt[1], acgt[2], acgt[3])

var count = 0
var acgtCount: [Character: Int] = ["A": 0, "C": 0, "G": 0, "T": 0]

for i in 0..<s {
    let char = dna[i]
    acgtCount[char]! += 1

    if i >= p {
        let leftChar = dna[i - p]
        acgtCount[leftChar]! -= 1
    }

    if i >= p - 1 && acgtCount["A"]! >= a && acgtCount["C"]! >= c && acgtCount["G"]! >= g && acgtCount["T"]! >= t {
        count += 1
    }
}
print(count)