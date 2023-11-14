var t = Int(readLine()!)!

let microwave = [300, 60, 10]
var buttonPressed = [0, 0, 0]

for i in 0..<3 {
    buttonPressed[i] = t / microwave[i]
    t %= microwave[i]
}

t > 0 ? print(-1) : print(buttonPressed.map{ String($0) }.joined(separator: " "))