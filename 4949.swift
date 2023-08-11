while let input = readLine(), input != "." {
    var stack: [Character] = []

    for char in input {
        switch char {
        case "[", "(": stack.append(char)
        case "]":
            if stack.last == "[" {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        case ")":
            if stack.last == "(" {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        default:
            break
        }
    }

    print(stack.isEmpty ? "yes" : "no")
}