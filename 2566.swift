var array: [[Int]] = []
for _ in 0..<9 {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let maxValue = array.flatMap { $0 }.max()! // 입력된 배열 요소 중 매핑해서 최대값찾기

// 베열 순회하며 최대값의 위치 찾기
for y in 0..<9 {
    for x in 0..<9 {
        if array[y][x] == maxValue {
            print(maxValue)
            print(y + 1, x + 1) // 결과 출력
            break
        }
    }
}