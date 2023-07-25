var arr = [Int]()

for _ in 0..<5 {
    let input = Int(readLine()!)!
    arr.append(input)
}
arr.sort()
let avg = (arr[0]+arr[1]+arr[2]+arr[3]+arr[4])/5

print(avg)
print(arr[2])