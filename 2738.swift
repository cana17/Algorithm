// n과 m을 입력 받음
let arr = readLine()!.split(separator: " ").compactMap { Int($0) } // compactMap: non-nil(옵셔널제거)
let n = arr[0]
let m = arr[1]

// 행렬 A와 B를 입력 받아 2차원 배열로 만듦
var matrixA = [[Int]]()
var matrixB = [[Int]]()

for _ in 0..<n {
    matrixA.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

for _ in 0..<n {
    matrixB.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

// 행렬 덧셈 결과를 저장할 배열. 0으로 요소 초기화
var answer = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

// 행렬 A와 B를 더하여 answer에 저장
for y in 0..<n {
    for x in 0..<m {
        answer[y][x] = matrixA[y][x] + matrixB[y][x]
    }
}

// 결과 출력
for y in answer {
    print(y.map { String($0) }.joined(separator: " "))
}