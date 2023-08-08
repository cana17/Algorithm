while true {
    let n = Int(readLine()!)!
    var arr = [Int]()
    var sum = 0
    
    if n == -1 { break }
    
    for i in 1..<n {
        if n % i == 0 {
            arr.append(i)
            sum += i
        }
    }
    if sum != n {
        print ("\(n) is NOT perfect.")
    } else {
        let output = arr.compactMap { $0 }
        print(n,"=",output.map(String.init).joined(separator: " + "))
    }
}