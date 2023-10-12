import Foundation

let color = ["black" : 0, "brown" : 1, "red" : 2, "orange" : 3, "yellow" : 4, "green" : 5, "blue" : 6, "violet" : 7, "grey" : 8, "white" : 9]

let r1 = readLine()!
let r2 = readLine()!
let r3 = readLine()!

let result = (10 * color[r1]! + color[r2]!) * Int(pow(10.0, Double(color[r3]!)))
print(result)