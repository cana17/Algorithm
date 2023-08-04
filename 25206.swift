var 점수: Double = 0
var 총수강학점: Double = 0
var 성적: Double = 0
var 수강학점: Double = 0
var 이전계산: Double = 0

func getScore(수강학점:Double,점수:Double, 총수강학점:Double)-> Double {
    성적 = (수강학점 * 점수 + 이전계산)/총수강학점
    이전계산 += 수강학점 * 점수
    return 성적
}

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ").map({ String($0)})
    let 수강학점 = Double(input[1])!

    switch input[2] {
    case "A+":
        점수 = 4.5
        총수강학점 += 수강학점
    case "A0":
        점수 = 4.0
        총수강학점 += 수강학점
    case "B+":
        점수 = 3.5
        총수강학점 += 수강학점
    case "B0":
        점수 = 3.0
        총수강학점 += 수강학점
    case "C+":
        점수 = 2.5
        총수강학점 += 수강학점
    case "C0":
        점수 = 2.0
        총수강학점 += 수강학점
    case "D+":
        점수 = 1.5
        총수강학점 += 수강학점
    case "D0":
        점수 = 1.0
        총수강학점 += 수강학점
    case "F":
        점수 = 0
        총수강학점 += 수강학점
    case "P":
        continue
    default:
        break
    }
    
    getScore(수강학점: 수강학점, 점수: 점수, 총수강학점: 총수강학점)
}
print(getScore(수강학점: 수강학점, 점수: 점수, 총수강학점: 총수강학점))