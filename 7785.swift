let n = Int(readLine()!)!
var dict = [String:String]()

for _ in 0..<n {
    let name = readLine()!.split(separator: " ").map { String($0) }
    dict.updateValue(name[1], forKey: name[0])
}
let reversedDict = dict.sorted { $0.key > $1.key }

for (key, value) in reversedDict {
    if value == "enter" {
        print(key)
    }
}