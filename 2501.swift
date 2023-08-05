let input = readLine()!.split(separator: " ").map{ Int($0)! }

let num = input[0]
let index = input[1]
var div = [Int]()

for i in 1...num {
    if num % i == 0 {
        div.append(i)
    }
}
if index > div.count {
    print(0)
} else {
    print(div[index-1])
}