var n = Int(readLine()!)!
var set = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

while n > 0 {
    let i = n % 10
    set[i] += 1
    n /= 10
}

let sixNineCount = (set[6] + set[9] + 1) / 2
set[6] = sixNineCount
set[9] = sixNineCount

let setNeeded = set.max()!
print(setNeeded)