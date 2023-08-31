while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    }else if n == 1 {
        print(1)
        continue
    }
    
    var arr = Array(repeating: true, count: 2 * n + 1)
    
    for number in 2...2*n {
        arr[number] = true
    }
    
    for i in 2...2*n {
        for j in stride(from: i+i, through: 2*n, by: i) {
            arr[j] = false
        }
    }
    
    var cnt = 0
    
    for i in n+1...2*n {
        if arr[i] == true {
            cnt += 1
        }
    }
    print(cnt)
}