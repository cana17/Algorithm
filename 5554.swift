let t1 = Int(readLine()!)!
let t2 = Int(readLine()!)!
let t3 = Int(readLine()!)!
let t4 = Int(readLine()!)!

let min = (t1+t2+t3+t4)/60
let sec = (t1+t2+t3+t4)%60

print(min)
print(sec)