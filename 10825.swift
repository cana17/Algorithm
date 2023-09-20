let n = Int(readLine()!)!
var group : [(name: String, korean: Int, english: Int, math: Int)] = []

for _ in 0..<n {
    let student = readLine()!.split(separator: " ").map{ String($0) }
    group.append((student[0], Int(student[1])!, Int(student[2])!, Int(student[3])!))
}
group.sort {
    if $0.korean != $1.korean {
        return $0.korean > $1.korean //1. 국어 점수가 감소하는 순서로
    } else if $0.english != $1.english {
        return $0.english < $1.english //2. 국어 점수가 같으면 영어 점수가 증가하는 순서로
    } else if $0.math != $1.math {
        return $0.math > $1.math //3. 국어 점수와 영어 점수가 같으면 수학 점수가 감소하는 순서로
    } else {
        return $0.name < $1.name //4. 모든 점수가 같으면 이름이 사전 순으로 증가하는 순서로 (단, 아스키 코드에서 대문자는 소문자보다 작으므로 사전순으로 앞에 온다.)
    }
}
group.forEach{ print($0.name) }