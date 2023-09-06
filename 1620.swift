let nm = readLine()!.split(separator: " ").map{Int($0)!}
var dogam = [String: String]()

for i in 1...nm[0] {
    let pokemon = readLine()!
    dogam[String(i)] = pokemon
    dogam[pokemon] = String(i) // 도감에 미러값 입력. 즉, 원래는 dogam 딕셔너리를 두개 두는게 더 바람직하지만 하나에 두개를 넣었다 생각하면 된다.
}
for _ in 0..<nm[1] {
    let guess = readLine()!
    print(dogam[guess]!)
}
print(dogam)