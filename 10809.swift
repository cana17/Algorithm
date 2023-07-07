let s = Array(readLine()!)

for i in Character("a").asciiValue!...Character("z").asciiValue! { // a~z까지를 아스키값으로 변환
    var char = Character(UnicodeScalar(i)) // 아스키값을 변수로 변환
    if s.contains(char){
        print("\(s.firstIndex(of: char)!)",terminator: " ") // 알파벳이 처음등장하는 위치를 print
    }else{
        print("-1", terminator: " ") // 등장하지 않을 경우 -1 출력
    }
}