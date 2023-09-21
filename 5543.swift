var burgers = [Int]()
var drinks = [Int]()
for _ in 1...3 {
    let burger = Int(readLine()!)!
    burgers.append(burger)
}
for _ in 1...2 {
    let drink = Int(readLine()!)!
    drinks.append(drink)
}
let setMenu = burgers.min()! + drinks.min()! - 50
print(setMenu)