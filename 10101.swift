var arr = [Int]()

for _ in 0..<3 {
    let angle = Int(readLine()!)!
    arr.append(angle)
}

if arr[0]+arr[1]+arr[2] != 180 {
    print("Error")
} else {
    if arr[0] == arr[1] && arr[1] == arr[2] {
        print("Equilateral")
    }
    else if arr[0] == arr[1] || arr[1] == arr[2] || arr[0] == arr[2] {
        print("Isosceles")
    }
    else {
        print("Scalene")
    }
}