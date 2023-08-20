func calculatePeopleInApt(_ k: Int, _ n: Int) -> Int {
    var apt: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: k + 1)

    for i in 0...n {
        apt[0][i] = i
    }

    for i in 1...k {
        for j in 1...n {
            apt[i][j] = apt[i-1][j] + apt[i][j-1]
        }
    }

    return apt[k][n]
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(calculatePeopleInApt(k, n))
}