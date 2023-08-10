let n = Int(readLine()!)!

var arrX = [Int]()
var arrY = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arrX.append(input[0])
    arrY.append(input[1])
}
let a = arrX.max()! - arrX.min()!
let b = arrY.max()! - arrY.min()!
print(a*b)