let n = Int(readLine()!)!
var bookList = [String: Int]()
for _ in 0..<n {
    let book = readLine()!
    if bookList.keys.contains(book) {
        bookList[book]! += 1
    } else {
        bookList[book] = 1
    }
}
let answer = bookList.max(by: { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value})!.key
print(answer)