import Foundation

var word = readLine()!
var count = word.count


var arr = ["c=","c-","dz=","d-","lj","nj","s=","z="]

for i in 0...arr.count-1 {
    word = word.replacingOccurrences(of: arr[i] , with: "@")
}

print(word.count)