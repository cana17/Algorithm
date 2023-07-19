let n = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let (a,b,c) = (n[0], n[1], n[2])

func findPrize(_ a:Int,_ b: Int,_ c: Int) -> Int {
    var prize = 0
    if a == c {
        prize = 10000 + a*1000
    } else if a==b || b==c {
        prize = 1000+b*100
    } else {
        prize = c*100
    }
    return prize
}
print(findPrize(a, b, c))