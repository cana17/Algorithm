let n = readLine()!.split(separator: " ").map({ Int($0)! })
var arr = Array(repeating: 0, count: n[0])

for _ in 0..<n[1] {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    for i in input[0]...input[1] {
        arr[i - 1] = input[2]
    }
}

let output = arr[0...].compactMap { $0 } // 1차원 배열로 변환
print(output.map(String.init).joined(separator: " ")) // 배열 원소들을 공백으로 구분하여 출력