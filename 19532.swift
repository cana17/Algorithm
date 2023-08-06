let n = readLine()!.split(separator: " ").map{ Int($0)! }
let (a,b,c,d,e,f) = (n[0],n[1],n[2],n[3],n[4],n[5])
var x = Int()
var y = Int()

for x in -999...999 {
    for y in -999...999{
        if a*x+b*y==c && d*x+e*y==f {
            print(x,y)
        }
    }
}