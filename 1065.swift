var n = Int(readLine()!)!
var cnt = 0

while n > 0 {
   var arr = [Int]()
   var temp = n

   while temp > 0 {
       arr.append(temp%10)
       temp /= 10
   }
   if arr.count == 1 || arr.count == 2 {
       cnt += 1
   } else if arr.count == 3 {
       if arr[0] - arr[1] == arr[1] - arr[2] {
           cnt += 1
       }
   }
   n -= 1
}

print(cnt)