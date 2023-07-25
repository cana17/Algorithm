let n = readLine()!
let setN = Set(readLine()!.split(separator: " "))
let m = readLine()!
let setM = readLine()!.split(separator: " ")

for i in setM {
    if setN.contains(i) {
        print(1)
    } else {
        print(0)
    }
}