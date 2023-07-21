let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (x, y, w, h) = (input[0], input[1], input[2], input[3])

let arr = [x,y,w-x,h-y].sorted()

print(arr[0])