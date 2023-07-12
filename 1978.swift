import Foundation

// 소수 판별 함수
func isPrime(number: Int) -> Bool {
    if number == 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
// compactMap으로 String을 Int로 변환
guard let n = Int(readLine() ?? ""), let input = readLine()?.components(separatedBy: " ").compactMap({ Int($0) }) else {
    fatalError("유효하지 않은 입력입니다.")
}

let answer = input.reduce(0) { $0 + (isPrime(number: $1) ? 1 : 0) } // 소수 계수 누적 더하기
print(answer)