let input = readLine()!.split(separator: " ")

//month
var month = input[0]
let monthIndex: [String: Int] = ["January": 0, "February": 1, "March": 2, "April": 3, "May": 4, "June": 5, "July": 6, "August": 7, "September": 8, "October": 9, "November": 10, "December": 11]
let monthDays: [Double] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] //평년일때
let monthDaysIsLeap: [Double] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] //윤년일때

//day
let day = Double(input[1].filter{ $0.isNumber })!

//year
let year = Int(input[2])!
var isLeapYear = false // 윤년인지 아닌지
if (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
    isLeapYear = true
}
var fullDay: Double = isLeapYear ? 366 : 365

//time
let time = input[3].split(separator: ":").map{ Double($0)! }
let (hour, min) = (time[0], time[1])

//calculate
var answer: Double = 0
var daySum: Double = 0 // 해당 전 월까지의 일자 총합
if isLeapYear {
    for i in 0..<monthIndex[String(month)]! {
        daySum += monthDaysIsLeap[i]
    }
    answer = (((daySum + day - 1) * 1440) + hour * 60 + min) / (fullDay * 24 * 60) * 100
} else {
    for i in 0..<monthIndex[String(month)]! {
        daySum += monthDays[i]
    }
    answer = (((daySum + day - 1) * 1440) + hour * 60 + min) / (fullDay * 24 * 60) * 100
}
//정답 출력
print(answer)