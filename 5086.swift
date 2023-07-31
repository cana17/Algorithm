while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0,0] {
    if input[1] % input[0] == 0{
        print("factor")
    }
    else if input[0] % input[1] == 0 {
        print("multiple")
    }
    
    else {
        print("neither")
    }
}