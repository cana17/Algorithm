func maxValue(s: Int, k: Int) -> Int {
    var s = s
    var k = k
    var result = 1
    
    while s > 0 && k > 0 {
        let q = s / k
        result *= q
        
        s -= q
        k -= 1
    }
    
    return result
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
print(maxValue(s: input[0], k: input[1]))