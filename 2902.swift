print(readLine()!.filter{ $0.isUppercase })

//다른풀이1
//let name = readLine()!.split(separator: "-").map{ String($0).first! }
//print(name.map{ String($0) }.joined())

//다른풀이2
//print(readLine()!.split(separator: "-").map{ String($0).first! }.map{ String($0) }.joined())