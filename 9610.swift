var arr = [0, 0, 0, 0, 0]
let n = Int(readLine()!)!
for _ in 0..<n {
    let xy = readLine()!.split(separator: " ").map{ Int($0)! }
    let x = xy[0]
    let y = xy[1]
    
    if x == 0 || y == 0 {
        arr[4] += 1
    } else if x > 0 && y > 0 {
        arr[0] += 1
    } else if x < 0 && y > 0{
        arr[1] += 1
    } else if x < 0 && y < 0{
        arr[2] += 1
    } else {
        arr[3] += 1
    }
}
print("Q1: \(arr[0])")
print("Q2: \(arr[1])")
print("Q3: \(arr[2])")
print("Q4: \(arr[3])")
print("AXIS: \(arr[4])")