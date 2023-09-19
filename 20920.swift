let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, m) = (nm[0], nm[1])

var voca = Dictionary<String,Int>()

for _ in 0..<n {
    let word = readLine()!
    if word.count < m { continue }
    voca[word, default: 0] += 1
}

let sortedVoca = voca.sorted {
    if $0.value != $1.value {
        return $0.value > $1.value //1. 자주 나오는 단어일수록 앞에 배치한다. -> Dictionary value 큰 값 우선
    } else if $0.key.count != $1.key.count {
        return $0.key.count > $1.key.count //2. 해당 단어의 길이가 길수록 앞에 배치한다. -> value 같으면 단어가 더 길면 우선
    } else {
        return $0.key < $1.key //3. 알파벳 사전 순으로 앞에 있는 단어일수록 앞에 배치한다. -> 길이 같으면 사전순으로 정렬 -> sort
    }
}
sortedVoca.forEach{ print($0.key) }