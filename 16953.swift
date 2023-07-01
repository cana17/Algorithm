let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (A,B) = (input[0],input[1]) // 입력1 -> A, 입력2 -> B

var cnt = 1 // 정답(몫) 초기값 1

while A < B { // 입력1이 2보다 작을 경우 로직 실행
    if B % 2 == 0 {
        B /= 2 // B가(구하려는수가) 짝수일때는 2로 나눈다
    }
    else if B % 10 == 1 { // 끝자리가 1일때는
        B /= 10 // 1을 제거한다(10으로 나눠서)
    }
    else {
        break
    }
    cnt += 1
}

if A == B {
    print(cnt) // 입력1,2가 같아질 경우 또는 애초에 같은 경우 정답 출력
} else {
    print(-1) // 답을 구할수 없을 경우 -1 출력
}
