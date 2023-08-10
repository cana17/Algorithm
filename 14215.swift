var n = readLine()!.split(separator: " ").map{ Int($0)! }

while true {
    n.sort()
    
    if n[0]+n[1] > n[2] {
        print(n[0]+n[1]+n[2])
        break
    } else {
        n[2] -= 1
    }
}