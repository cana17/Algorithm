while let input = readLine() {
    let arr = input.split(separator: " ")
    let sum = Int(arr[0])!+Int(arr[1])!
    if sum == 0 { break }
    else {print(sum)}
}