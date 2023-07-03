import Foundation

let t = Int(readLine()!)! // 테스트케이스 수

for _ in 0..<t { // t만큼 반복

    let line = readLine()!
    var count = 0


    for char in line {
        if char == "(" {  // "(" 일때는 +1
            count += 1
        } else if char == ")" {  // ")" 일때는 -1
            count -= 1
            if count < 0 { // count가 구간중 한번이라도 -1이 된다면 NO
                break
            }
        }
    }

    print(count == 0 ? "YES" : "NO")
}
