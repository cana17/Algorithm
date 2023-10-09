//let ab = readLine()!.split(separator: " ").map{ Int($0)! }
//let cd = readLine()!.split(separator: " ").map{ Int($0)! }
//let apple = ab[0]+cd[1]
//let banana = ab[1]+cd[0]
//print(apple <= banana ? apple : banana)

let ab = readLine()!.split(separator: " ").map{ Int($0)! }
let cd = readLine()!.split(separator: " ").map{ Int($0)! }
print(ab[0]+cd[1] <= ab[1]+cd[0] ? ab[0]+cd[1] : ab[1]+cd[0])