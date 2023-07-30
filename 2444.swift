func printStar(n:Int)->String {
    var starPrint = String()

    for i in 1...n {
        let print = String(repeating: " ", count: n-i) + String(repeating: "*", count: 2*i-1)
        starPrint += print + "\n"
    }

    for i in (1...(n-1)).reversed() {
        let print = String(repeating: " ", count: n-i) + String(repeating: "*", count: 2*i-1)
        starPrint += print + "\n"
    }

    return starPrint
}
let n = Int(readLine()!)!

if n == 1 {
    print("*")
}
else {
    print(printStar(n: n))
}