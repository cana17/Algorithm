let time = readLine()!.split(separator: " ").map{ Int($0)! }
let hour = time[0]
let min = time[1]

let input = Int(readLine()!)!

let output = (hour * 60 + min + input) % (60 * 24)
print(output / 60, output % 60)