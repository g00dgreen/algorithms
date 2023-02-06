//
//  main.swift
//  algorithms
//
//  Created by Артем Макар on 30.01.23.
//



// ЯНДЕКС КОНТЕСТЫ, тренировка по алгоритмам



import Foundation
//
//C.Все дороги ведут в Рим
//import Foundation
//var b = readLine()
//var c = b!.components(separatedBy: " ")
//var s: [Int: Set<Int>] = [:]
//var bs: [Int: Int] = [:]
//for _ in 0..<Int(c[1])! {
//    let c = readLine()
//    var g = c!.components(separatedBy: " ")
//    if g[0] != g[1] {
//        s[Int(g[0])!] = [0]
//        if s[Int(g[1])!] != [0]{
//            if s[Int(g[1])!] != nil {
//                s[Int(g[1])!]!.insert(Int(g[0])!)
//            } else {
//                s[Int(g[1])!] = [(Int(g[0])!)]
//            }
//
//        }
//    }
//}
//var counter = -1
//for i in s {
//    if i.value.count + 1 == Int(c[0])! {
//        counter = i.key
//    }
//}
//print(counter)
//
//B.Путешествие контейнера
//import Foundation
//var b = readLine()
//var s: [Int] = []
//for _ in 0..<Int(b!)! {
//    let c = readLine()
//    var g = c!.components(separatedBy: " ")
//    g.removeFirst()
//    s.append(max(Int(g[0])!, max(Int(g[1])!, Int(g[2])!)))
//}
//var counter = 0
//if s.count % 2 != 1 {
//    counter = s.sorted()[s.count / 2 - 1]
//} else {
//    counter = s.sorted()[s.count / 2]
//}
//print(counter)
/*
 B. Кольцевая линия метро
Витя работает недалеко от одной из станций кольцевой линии Московского метро, а живет рядом с другой станцией той же линии. Требуется выяснить, мимо какого наименьшего количества промежуточных станций необходимо проехать Вите по кольцу, чтобы добраться с работы домой.
Формат ввода
Станции пронумерованы подряд натуральными числами 1, 2, 3, …, N (1-я станция – соседняя с N-й), N не превосходит 100.

Вводятся три числа: сначала N – общее количество станций кольцевой линии, а затем i и j – номера станции, на которой Витя садится, и станции, на которой он должен выйти. Числа i и j не совпадают. Все числа разделены пробелом.

Формат вывода
Требуется выдать минимальное количество промежуточных станций (не считая станции посадки и высадки), которые необходимо проехать Вите.

*/
//import Foundation
//var l = readLine()
//var d = l?.components(separatedBy: " ")
//var a = Int(d![0])!
//var b = Int(d![1])!
//var c = Int(d![2])!
//var first = 0
//    if c > b {
//        first = c - b - 1
//    } else {
//        first = a - b + c - 1
//    }
//
//var second = 0
//
//    if c < b {
//        second =  b - c - 1
//    } else {
//        second = b + (a - c) - 1
//    }
//
//if b == c {
//    print(0)
//} else {
//    print(min(first, second))
//}
/*
 A. Interactor
 Лена руководит разработкой тестирующей системы, в которой реализованы интерактивные задачи.
 До заверщения очередной стадии проекта осталось написать модуль, определяющий итоговый вердикт системы для интерактивной задачи. Итоговый вердикт определяется из кода завершения задачи, вердикта интерактора и вердикта чекера по следующим правилам:

 Вердикт чекера и вердикт интерактора — это целые числа от 0 до 7 включительно.
 Код завершения задачи — это целое число от -128 до 127 включительно.
 Если интерактор выдал вердикт 0, итоговый вердикт равен 3 в случае, если программа завершилась с ненулевым кодом, и вердикту чекера в противном случае.
 Если интерактор выдал вердикт 1, итоговый вердикт равен вердикту чекера.
 Если интерактор выдал вердикт 4, итоговый вердикт равен 3 в случае, если программа завершилась с ненулевым кодом, и 4 в противном случае.
 Если интерактор выдал вердикт 6, итоговый вердикт равен 0.
 Если интерактор выдал вердикт 7, итоговый вердикт равен 1.
 В остальных случаях итоговый вердикт равен вердикту интерактора.
 Ваша задача — реализовать этот модуль.

 Формат ввода
 Входной файл состоит из трёх строк. В первой задано целое число r(−128≤r≤127) — код завершения задачи, во второй — целое число i(0≤i≤7) — вердикт интерактора, в третьей — целое число c (0≤c≤7) — вердикт чекера.
 Формат вывода
 Выведите одно целое число от 0 до 7 включительно — итоговый вердикт системы.
*/

//var c = readLine()
//var a = readLine()
//var b = readLine()
//var interactor = Int(a!)!
//var checker = Int(b!)!
//var cod = Int(c!)!
//var total = 0
//if (interactor == 0 || interactor == 4)  && cod != 0 {
//    total = 3
//} else if interactor == 0 && cod == 0 {
//    total = checker
//} else if interactor == 1 {
//    total = checker
//} else if interactor == 4 && cod == 0{
//    total = 4
//} else if interactor == 6 {
//    total = 0
//} else if interactor == 7 {
//    total = 1
//} else {
//    total = interactor
//}
//print(total)

/*
 C. Даты
 Как известно, два наиболее распространённых формата записи даты — это европейский (сначала день, потом месяц, потом год) и американски (сначала месяц, потом день, потом год). Системный администратор поменял дату на одном из бэкапов и сейчас хочет вернуть дату обратно. Но он не проверил, в каком формате дата используется в системе. Может ли он обойтись без этой информации?
 Иначе говоря, вам даётся запись некоторой корректной даты. Требуется выяснить, однозначно ли по этой записи определяется дата даже без дополнительной информации о формате.

 Формат ввода
 Первая строка входных данных содержит три целых числа — x, y и z(1≤x≤31,1≤y≤31,1970≤z≤2069. Гарантируется, что хотя бы в одном формате записьxyz
  задаёт корректную дату.
 Формат вывода
 Выведите 1, если дата определяется однозначно, и 0 в противном случае.
*/

//import Foundation
//var l = readLine()
//var d = l?.components(separatedBy: " ")
//var a = Int(d![0])!
//var b = Int(d![1])!
//var c = Int(d![2])!
//if a > 12 || b > 12 {
//    print(1)
//} else if a == b {
//    print(1)
//} else {
//    print(0)
//}


//E. Точка и треугольник
//import Foundation
//var a = readLine()
//var b = readLine()
//var d = b!.components(separatedBy: " ")
//var x = Int(d[0])!
//var y = Int(d[1])!
//var z = Int(a!)!
//var bool = x >= 0 && x <= z && y >= 0 && y <= z
//if Int(d[1])! <= Int(a!)! && Int(d[0])! <= Int(a!)! - Int(d[1])! && bool {
//    print(0)
//} else {
//    var c: Double = 0
//    var total = 1
//    c = sqrt(Double(x * x + y * y))
//    if c > sqrt(Double((x - z) * (x - z) + (y * y))) {
//        c = sqrt(Double((x - z) * (x - z) + (y * y)))
//        total = 2
//    }
//    if c > sqrt(Double(x * x + (y - z) * (y - z))) {
//        total = 3
//    }
//    print(total)
//}

//A. Возрастает ли список?
//import Foundation
//var i = readLine()
//var c = i!.components(separatedBy: " ")
//var boba = true
////print(c.count, c)
//bobas: for i in 1..<c.count {
//    if Int(c[i])! <= Int(c[i-1])! {
//        print("NO")
//        boba = false
//        break bobas
//    }
//}
//if boba {
//print("YES")
//}


//D. Больше своих соседей
//import Foundation
//var c = readLine()
//let b = c!.components(separatedBy: " ")
//var counter = 0
//if b.count > 2 {
//for i in 1..<b.count - 1 {
//if Int(b[i])! > Int(b[i-1])! && Int(b[i])! > Int(b[i+1])! {
//counter += 1
//}
//}
//}
//
//print(counter)


//A. Кондиционер
//import Foundation
//var i = readLine()
//var c = readLine()
//var s = i!.components(separatedBy: " ")
//let a = Int(s[0])!
//let b = Int(s[1])!
//
//switch c {
//case "freeze" : a > b ? print(b) : print(a)
//case "heat" : a > b ? print(a) : print(b)
//case "auto" : print(b)
//case "fan": print(a)
//default : break
//}

//B. Треугольник
//import Foundation
//var a = readLine()
//var b = readLine()
//var c = readLine()
//var boba = [Int(a!)!, Int(b!)!, Int(c!)!]
//
//if boba.sorted()[2] < boba.sorted()[1] + boba.sorted()[0] {
//print("YES")
//} else {
//print("NO")
//}

//H. Метро
//import Foundation
//var a = readLine()
//var b = readLine()
//var c = readLine()
//var d = readLine()
//var firstTime = Int(a!)!
//var secondTime = Int(b!)!
//var firstTrains = Int(c!)!
//var secondTrains = Int(d!)!
//var first1 = firstTime * (firstTrains - 1) + firstTrains
//var first2 = firstTime * (firstTrains + 1) + firstTrains
//var second1 = secondTime * (secondTrains - 1) + secondTrains
//var second2 = secondTime * (secondTrains + 1) + secondTrains
//if first1 > second2 || first2 < second1 {
//print(-1)
//} else {
//    print(max(first1, second1), min(first2, second2))
//}
//Задача: A.Простая подсказка
//var b = readLine()
//var s: [Character:Int] = [:]
//for i in 0..<Int(b!)! {
//    var c = readLine()
//    if s[c!.first!] != nil {
//        s[c!.first!]! += 1
//    } else {
//        s[c!.first!] = 1
//    }
//}
//var counter = 0
//var total = ""
//for i in s {
//    if i.value > counter {
//        counter = i.value
//        total = String(i.key)
//    }
//}
//print(total)

//не помню
//var a = readLine()
//var b = readLine()
//var c = readLine()
//var aa = Int(a!)!
//var bb = Int(b!)!
//var cc = Int(c!)!

//var boba = [Int(a!)!, Int(b!)!, Int(c!)!]
//
//if boba.sorted()[2] < boba.sorted()[1] + boba.sorted()[0] {
//print("YES")
//} else {
//print("NO")
//}
//
//print(boba.max())

//if cc < 0 {
//    print("NO SOLUTION")
//} else if aa == 0 && sqrt(Double(bb)) == Double(cc) {
//    print("MANY SOLUTIONS")
//} else if aa != 0{
//    var x: Double = Double(cc * cc - bb) / Double(aa)
//    if Int(x * 10) % 10 == 0 {
//        print(Int(x))
//    } else {
//        print(x)
//    }
//} else {
//    print("NO SOLUTION")
//}

//I. Сапер
//import Foundation
//let firstString = readLine()
//let values = firstString!.components(separatedBy: " ")
//var dict: [[Int]: Int] = [:]
//for i in 0..<Int(values[2])!{
//
//    var coordString = readLine()
//    var coord = coordString!.components(separatedBy: " ")
//    dict[[Int(coord[0])!, Int(coord[1])!]] = -100
//    for j in 0..<8 {
//        var a = 0
//        var b = 0
//        switch j {
//        case 0 : a = 0; b = 1
//        case 1 : a = 1; b = 1
//        case 2 : a = 1; b = 0
//
//        case 3 : a = -1; b = 0
//        case 4 : a = 0; b = -1
//        case 5 : a = -1; b = -1
//
//        case 6 : a = 1; b = -1
//        case 7 : a = -1; b = 1
//        default: break
//        }
//        if dict[[Int(coord[0])! + a, Int(coord[1])! + b]] != nil {
//            dict[[Int(coord[0])! + a, Int(coord[1])! + b]]! += 1
//        } else {//if dict[[Int(coord[0])! + a, Int(coord[1])! + b]]! > -1 {
//            dict[[Int(coord[0])! + a, Int(coord[1])! + b]] = 0
//            dict[[Int(coord[0])! + a, Int(coord[1])! + b]]! += 1
//        }
//    }
//}
//for i in 1...Int(values[0])!{
//    var stringTotal = ""
//    for j in 1...Int(values[1])!{
//        //print(dict[[i,j]] ?? "*", i, j )
//        if dict[[i,j]] ?? 0 > -1 {
//            stringTotal += "\(dict[[i,j]] ?? 0) "
//        } else {
//            stringTotal += "* "
//        }
//    }
//    stringTotal.removeLast()
//    print(stringTotal)
//}

//J. Треугольник Максима 6test wa

//import Foundation
//var count = readLine()
//var values = (min: 30.0, max: 4000.0)
//var early = 0.0
//for i in 0..<Int(count!)! {
//    if i == 0 {
//        early = Double(readLine()!)!
//    } else {
//        let value = (readLine())?.components(separatedBy: " ")
//        if value![1].first == "c" {
//            if Double(value![0])! > early {
//                values = (min: ((Double(value![0])! + early) / 2), max: values.max )
//            } else {
//                values = (min: values.min, max: ((Double(value![0])! + early) / 2) )
//            }
//        } else {
//            if Double(value![0])! > early {
//                values = (min: values.min, max: ((Double(value![0])! + early) / 2))
//            } else {
//                values = (min: ((Double(value![0])! + early) / 2), max: values.max )
//
//            }
//        }
//        early = Double(value![0])!
//    }
//}
//print(values.min, values.max)

//E. Чемпионат по метанию коровьих лепешек
//import Foundation
//var a = readLine()
//var b = readLine()
//var c = b!.components(separatedBy: " ")
//var abba: [Int] = []
//    for i in c {
//        abba.append(Int(i)!)
//    }
//var top = 0
//var topPos = 0
//for (j, i) in c.enumerated() {
//    if Int(i)! > top{
//        top = Int(i)!
//        topPos = j
//    }
//}
//var result = 0
//var lastValue = 0
//for (j, i) in c.enumerated() {
//    if Int(i)! % 10 == 5 && j > topPos && j < c.count - 1 &&  Int(c[j+1])! < Int(i)! && Int(i)! > lastValue{
//        lastValue = Int(i)!
//        var ac = 1
//        for f in abba.sorted(by: >){
//            if f == lastValue {
//                result = ac
//            } else {
//                ac += 1
//            }
//        }
//    }
//}
//print(result)


//A. Количество различных чисел
//import Foundation
//var a = readLine()
//var b = a!.components(separatedBy: " ")
//var dict: [Int: Int] = [:]
//for i in b {
//    dict[Int(i)!] = 1
//}
//print(dict.count)

//B. Пересечение множеств
//var a = readLine()!.split(separator: " ").map { Int($0)! }
//var b = readLine()!.split(separator: " ").map { Int($0)! }
//var total = ""
//for i in Set(a).intersection(Set(b)).sorted() {
//    total += "\(i)" + " "
//}
//total.removeLast()
//print(total)

//C. Кубики
//var cubes = readLine()!.split(separator: " ")
//var cubesValue: (ann: Set<Int>, boris: Set<Int>) = ([], [])
//for _ in 0..<Int(cubes[0])! {
//    cubesValue.ann.insert(Int(readLine()!)!)
//}
//for _ in 0..<Int(cubes[1])! {
//    cubesValue.boris.insert(Int(readLine()!)!)
//}
//var intersection = cubesValue.ann.intersection(cubesValue.boris).sorted()
//var fisrtPrint = ""
//for i in intersection.sorted() {
//    fisrtPrint += "\(i) "
//}
//print(intersection.count, "\n\(fisrtPrint)")
//var secondPrint = ""
//for i in cubesValue.ann.subtracting(cubesValue.boris).sorted() {
//    secondPrint += "\(i) "
//}
//print(cubesValue.ann.subtracting(cubesValue.boris).count, "\n\(secondPrint)")
//var thridPrint = ""
//for i in cubesValue.boris.subtracting(cubesValue.ann).sorted() {
//    thridPrint += "\(i) "
//}
//print(cubesValue.boris.subtracting(cubesValue.ann).count, "\n\(thridPrint)")

//D. Количество слов в тексте

//import Foundation
//
//let fileName = "input.txt"
//
//func readNums() {
//guard let line = try? String(contentsOfFile: fileName) else {
//return
//}
//let split = line.split(separator: "\n")
//var words: Set<String> = []
//for i in split {
//    for j in i.split(separator: " ") {
//        words.insert(String(j))
//    }
//}
//let result = String(words.count)
//try? result.write(toFile: "output.txt", atomically: true, encoding: .utf8)
//}
//
//readNums()


//E. OpenCalculator
//var numbers = readLine()!.split(separator: " ")
//var number: [String.SubSequence] = []
//for i in readLine()! {
//    number.append("\(i)")
//}
//print(Set(number).subtracting(Set(numbers)).count)

//F. Инопланетный геном
//var firstString: [String] = []
//for i in readLine()! {
//    firstString.append("\(i)")
//}
//var secondString: [String] = []
//for i in readLine()! {
//    secondString.append("\(i)")
//}
//var firstArr: [String: Int] = [:]
//var secondDict: [String: Int] = [:]
//for (j,_) in firstString.enumerated() {
//    if j != firstString.count - 1 {
//        if firstArr["\(firstString[j])\(firstString[j+1])"] != nil {
//            firstArr["\(firstString[j])\(firstString[j+1])"]! += 1
//        } else {
//            firstArr["\(firstString[j])\(firstString[j+1])"] = 1
//        }
//    }
//}
//for (j,_) in secondString.enumerated() {
//    if j != secondString.count - 1 {
//        if secondDict["\(secondString[j])\(secondString[j+1])"] != nil {
//            secondDict["\(secondString[j])\(secondString[j+1])"]! += 1
//        } else {
//            secondDict["\(secondString[j])\(secondString[j+1])"] = 1
//        }
//    }
//}
////print(firstArr, secondDict)
//var total: Int = 0
//for (key, _) in secondDict {
//    if firstArr[key] != nil {
//        //print(firstArr[key]!, secondDict[key]!, key)
//        total += firstArr[key]!
//    }
//}
//print(total)
//


//G. Черепахи
//let count = Int(readLine()!)!
//var setOfInt:Set<Int> = []
//
//for _ in 0..<count  {
//    let values = readLine()!.split(separator: " ").map{Int($0)!}
//    if values.reduce(0){$0 + $1} + 1 == count && values[0] >= 0 && values[1] >= 0 {
//        setOfInt.insert(values[0])
//    }
//}
//print(setOfInt.count)


//H. Злые свинки
//let count = Int(readLine()!)!
//var dict: [Int: Bool] = [:]
//for _ in 0..<count {
//    let value = readLine()!.split(separator: " ")
//    dict[Int(value[0])!] = true
//}
//print(dict.count)


//I. Полиглоты
//let count = Int(readLine()!)!
//var dict: [String: Int] = [:]
//for _ in 0..<count {
//    let count2 = Int(readLine()!)!
//    for _ in 0..<count2 {
//        let value = readLine()!
//        if dict[value] != nil {
//            dict[value]! += 1
//        } else {
//            dict[value] = 1
//        }
//    }
//}
//var firstResponse: [String] = []
//var secondResponse: [String] = []
//for i in dict {
//    if i.value == count {
//        firstResponse.append(i.key)
//        secondResponse.append(i.key)
//    } else {
//        secondResponse.append(i.key)
//    }
//}
//print(firstResponse.count)
//firstResponse.forEach { str in
//    print(str)
//}
//print(secondResponse.count)
//secondResponse.forEach { str in
//    print(str)
//}
