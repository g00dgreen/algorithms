//
//  main.swift
//  algorithms
//
//  Created by Артем Макар on 30.01.23.
//



// ЯНДЕКС КОНТЕСТЫ, тренировка по алгоритмам



//import Foundation
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


//A. Словарь синонимов
//var count = Int(readLine()!)!
//var dict1: [String: String] = [:]
//var dict2: [String: String] = [:]
//for _ in 0..<count {
//    let str = readLine()!.split(separator: " ")
//    dict1[String(str[0])] = String(str[1])
//    dict2[String(str[1])] = String(str[0])
//}
//var word = readLine()!
//if dict1[word] != nil {
//    print(dict1[word]!)
//} else {
//    print(dict2[word]!)
//}


//B. Номер появления слова
//import Foundation
//
//let fileName = "input.txt"
//
//func readNums() {
//guard let line = try? String(contentsOfFile: fileName) else {
//return
//}
//let split = line.split(separator: "\n")
//var counter: [String: Int] = [:]
//var words: Set<String> = []
//    var result = ""
//for i in split {
//    for j in i.split(separator: " ") {
//        let wordsCount = words.count
//        words.insert(String(j))
//        if words.count > wordsCount {
//            counter[String(j)] = 1
//            result += "\(0) "
//        } else {
//            result += "\(counter[String(j)]!) "
//            counter[String(j)]! += 1
//        }
//    }
//}
//try? result.write(toFile: "output.txt", atomically: true, encoding: .utf8)
//}
//
//readNums()


//C. Самое частое слово
//import Foundation
//
//let fileName = "input.txt"
//
//func readNums() {
//guard let line = try? String(contentsOfFile: fileName) else {
//return
//}
//let split = line.split(separator: "\n")
//var counter: [String: Int] = [:]
//var words: [Int: [String]] = [1:[]]
//for i in split {
//    for j in i.split(separator: " ") {
//        if  counter[String(j)] == nil {
//            counter[String(j)] = 1
//            words[1]!.append(String(j))
//        } else {
//            if  words[counter[String(j)]! + 1] != nil {
//                counter[String(j)]! += 1
//                words[counter[String(j)]!]!.append(String(j))
//            } else {
//                counter[String(j)]! += 1
//                words[counter[String(j)]!] = []
//                words[counter[String(j)]!]!.append(String(j))
//            }
//        }
//    }
//}
//
//var maxKey = 0
//for (key, _) in words {
//    if key > maxKey {
//        maxKey = key
//    }
//}
//try? words[maxKey]!.sorted()[0].write(toFile: "output.txt", atomically: true, encoding: .utf8)
//}
//
//readNums()
//

//D. Клавиатура
//var keysCount = Int(readLine()!)!
//var maxPressing = readLine()!.split(separator: " ").map({ Int($0)!})
//var pressingCount = Int(readLine()!)!
//var pressing = readLine()!.split(separator: " ").map({ Int($0)!})
//for i in pressing {
//    maxPressing[i-1] -= 1
//}
//for i in maxPressing {
//    if i >= 0 {
//        print("NO")
//    } else {
//        print("YES")
//    }
//}



// G. Снеговик для Гарри
//var dict: [Int: Bool] = [:]
//var count = Int(readLine()!)!
//var values = readLine()!.split(separator: " ").compactMap({Int($0)})
//for i in values {
//    if i == count {
//        var string = ""
//        string += "\(i) "
//        count -= 1
//        while dict[count] != nil {
//            string += "\(count) "
//            count -= 1
//        }
//        print(string)
//    } else {
//        print("")
//        dict[i] = true
//    }
//}

// Вкусная (хз)
//import Foundation
//var count = Int(readLine()!)!
//var pricesCount = Int(readLine()!)!
//var prices = readLine()!.split(separator: " ").compactMap({Double($0)})
//var tuple: [(priceForOne: Double, count: Int)] = []
//for i in 0..<pricesCount {
//    tuple.append((prices[i] / (pow(Double(2),Double(i))), Int(pow(Double(2),Double(i)))))
//}
//tuple = tuple.sorted(by: {$0.0 < $1.0})
//print(tuple[0])
//var totalPrice: Double = 0
//print(count)
//while count > 0 {
//    if count / tuple[0].count > 0 {
//        print((count / tuple[0].count) * tuple[0].count)
//        count -= (count / tuple[0].count) * tuple[0].count
//        totalPrice += Double((count / tuple[0].count) * tuple[0].count) *  tuple[0].priceForOne
//    } else {
//        tuple.removeFirst()
//    }
//}
//print(count)
//print(totalPrice)


//var read = Int(readLine()!)!
//var read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var bol = true
//boba1: for i in 1..<read2.count {
//    if read2[i] < read2[i-1] {
//        bol = false
//        break boba1
//    }
//}
//var max = read2.last!
//read2 = read2.reversed()
//var counter = 0
//
//if bol {
//    for (j, i) in read2.enumerated() {
//        while read2[j] < max {
//            for i in j..<read2.count {
//                read2[i] += 1
//            }
//            counter += 1
//        }
//    }
//}
//
//if bol {
//    print(counter)
//} else {
//    print(-1)
//}




//I. Вкусная арифметика TL 26

//import Foundation
//var count = Int(readLine()!)!
//var pricesCount = Int(readLine()!)!
//var prices = readLine()!.split(separator: " ").compactMap({Int($0)})
//func found(count1: Int) -> Int{
//    var arr: [Int] = []
//    var bool = true
//    for (j,i) in prices.enumerated() {
//
//        if j < 31 && bool  {
//            let num = Int(truncating: (pow(2, j)) as NSNumber)
//            if num > count {
//                bool = false
//                arr.append(i)
//            } else {
//                if (count1 % num == 0 ){
//                    arr.append((count1 / num) * i)
//                } else if (count1 / num) > 0 && ((Double(num)) / Double(i)) > 1{
//                    arr.append((count1 / num) * i + found(count1: count1 % num))
//                } else if (count1 / num) == 0 {
//                    arr.append(i)
//                }
//            }
//        }
//    }
//    return arr.min() ?? 0
//}
//print(found(count1: count))


//H. Подарки для друзей OK

//var first = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [(price:Int, fun:Int, friend: Int)] = []
//var finalArr = Array(repeating: 0, count: first[0])
//var FinalPrice = Array(repeating: 0, count: first[0])
//for i in 0..<first[0] {
//    let str = Int(readLine()!)!
//    for _ in 0..<str {
//        let price = readLine()!.split(separator: " ").compactMap({Int($0)})
//        arr.append((price: price[0], fun: price[1], friend: i))
//    }
//}
//arr = arr.sorted(by: { first, second in
//    if first.friend == second.friend {
//        if first.price == second.price {
//            return first.fun > second.fun
//        } else {
//            return first.price < second.price
//        }
//    } else {
//        return first.fun < second.fun
//    }
//})
//
////print(arr)
//var num = 0
//while first[1] > 0 && num < arr.count{
//    let value = arr[num]
//    if first[1] - value.price - FinalPrice[value.friend] >= 0 && value.fun > finalArr[value.friend] {
//        finalArr[value.friend] = value.fun
//        first[1] -= value.price - FinalPrice[value.friend]
//        FinalPrice[value.friend] = value.price
//    } else if value.fun > finalArr[value.friend]{
//        first[1] = 0
//    }
//    num += 1
//}
//print(finalArr.min()!)




//F.  Баннерная реклама OK

//var size = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = Array(repeating: [], count: size[0] * size[1])
//
//for _ in 0..<3 {
//    for j in 0..<size[0] {
//        let str1 = readLine()!//.split(separator: " ").compactMap({Int($0)})
//        for (l,i) in str1.enumerated() {
//            arr[l + j * size[1]].append(Int(String(i))!)
//        }
//    }
//}
//
//
//var response = true
//for i in 0..<size[0] {
//    let str = readLine()!
//    var arrStr: [String] = []        //.split(separator: " ").compactMap({String($0)})
//    for value in str {
//        arrStr.append(String(value))
//    }
//    for j in 0..<size[1]{
//        var char: Set<String> = []
//                    switch (arr[j + i * size[1]]) {
//                    case [1,0,0] : char = char.union(["B","D"])
//                    case [0,1,0] : char = char.union(["R", "D"])
//                    case [0,0,1] : char = char.union(["Y", "D"])
//                    case [1,1,0] : char = char.union(["B","R", "P", "D"])
//                    case [1,0,1] : char = char.union(["G","B", "D", "Y"])
//                    case [0,1,1] : char = char.union(["D", "O", "Y", "R"])
//                    case [0,0,0] : char = char.union(["D"])
//                    case [1,1,1] : char = char.union(["G","B", "D", "R", "Y", "P", "O", "V"])
//                    default: break
//                    }
//        if !char.contains(arrStr[j].uppercased()) {
//            response = false
//        }
//    }
//}
//if response == true {
//    print("YES")
//} else {
//    print("NO")
//}


// Тренировка 3.0

//4 котнтрольная работа
//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//let c = Int(readLine()!)!
//let d = Int(readLine()!)!
//let dMirror = d == 1 ? 2 : 1
//let posVan = (((c-1)*2 + d))
//let posVas = posVan + b
//let posVas2 = posVan - b
//
//func test(pos: Int) -> Int {
//    if pos <= 0 || pos > a {
//        return -1
//    } else {
//        return (pos - (b % 2 == 0 ? d : dMirror)) / 2 + 1
//    }
//}
//let test1 = test(pos: posVas)
//let test2 = test(pos: posVas2)
////print(test1, test2)
//if test1 != -1 && test2 != -1 {
//    if test1 - c <= c - test2 {
//        print(test1, b % 2 == 0 ? d : dMirror)
//    } else {
//        print(test2, b % 2 == 0 ? d : dMirror)
//    }
//} else {
//    if test1 != -1 && test2 == -1 {
//        print(test1, b % 2 == 0 ? d : dMirror)
//    } else if test2 != -1 && test1 == -1{
//        print(test2, b % 2 == 0 ? d : dMirror)
//    } else {
//        print(-1)
//    }
//}


// 5 хорошая строка  OK

//
//var a = Int(readLine()!)!
//var arr: [Int] = []
//var dict: [Int] = []
//var totalCounter = 0
//for _ in 0..<a {
//    let str = Int(readLine()!)!
//    arr.append(str)
//}
//
//func test(arrFunc: inout [Int]) {
//    var counter = 0
//    var arrOfArr: [[Int]] = []
//    arrOfArr.append([])
//    //print(arrFunc)
//    if arrFunc.count > 1 {
//        let min = arrFunc.min()!
//        totalCounter += ((arrFunc.count-1) * min)
//
//        for (j,_) in arrFunc.enumerated() {
//            arrFunc[j] -= min
//            if arrFunc[j] > 0 {
//                arrOfArr[counter].append(arrFunc[j])
//            } else {
//                arrOfArr.append([])
//                counter += 1
//            }
//        }
//       // print(arrOfArr)
//        for i in 0..<arrOfArr.count {
//            test(arrFunc: &(arrOfArr[i]))
//        }
//    }
//}
//test(arrFunc: &arr)
//print(totalCounter)


// 7 SNTP  OK
//var first = readLine()!.split(separator: ":").compactMap({Int($0)})
//var response = readLine()!.split(separator: ":").compactMap({Int($0)})
//var second = readLine()!.split(separator: ":").compactMap({Int($0)})
//var firstSec = first[0]*60*60 + first[1]*60 + first[2]
//var secondSec = second[0]*60*60 + second[1]*60 + second[2]
//if secondSec > firstSec {
//    var q = (secondSec - firstSec) % 2 == 0 ? secondSec - firstSec : (secondSec - firstSec + 1)
//    var h = (q / 2) / 3600
//    var m = (q / 2) / 60 - (h * 60)
//    let s = (q / 2) - (h * 3600) - (m * 60)
//    if (response[2] + s) >= 60 {
//        response[2] = (response[2] + s) % 60
//        m += 1
//    } else {
//        response[2] = (response[2] + s)
//    }
//    if (response[1] + m) >= 60 {
//        response[1] = (response[1] + m) % 60
//        h += 1
//    } else {
//        response[1] = (response[1] + m)
//    }
//    response[0] = (response[0] + h) % 24
//} else {
//    var q = (secondSec - firstSec) % 2 == 0 ? secondSec - firstSec : (secondSec - firstSec + 1)
//    var h = ((q + 24 * 60 * 60) / 2) / 3600
//    var m = ((q + 24 * 60 * 60) / 2 ) / 60 - (h * 60)
//    let s = ((q + 24 * 60 * 60) / 2) - (h * 3600) - (m * 60)
//    if (response[2] + s) >= 60 {
//        response[2] = (response[2] + s) % 60
//        m += 1
//    } else {
//        response[2] = (response[2] + s)
//    }
//    if (response[1] + m) >= 60 {
//        response[1] = (response[1] + m) % 60
//        h += 1
//    } else {
//        response[1] = (response[1] + m)
//    }
//    response[0] = (response[0] + h) % 24
//}
//print("\(String(format: "%02d", response[0])):\(String(format: "%02d", response[1])):\(String(format: "%02d", response[2]))")

//8 Минимальный прямоугольник  OK
//var first = Int(readLine()!)!
//var setX: Set<Int> = []
//var setY: Set<Int> = []
//for _ in 0 ..< first {
//    let first = readLine()!.split(separator: " ").compactMap({Int($0)})
//    setX.insert(first[0])
//    setY.insert(first[1])
//}
//var sortedX = setX.sorted()
//var sortedY = setY.sorted()
//print(sortedX[0], sortedY[0], sortedX.last!, sortedY.last!)

// 9. Сумма в прямоугольнике   OK
//var a = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = []
//for i in 0..<a[0] {
//    var counter = 0
//    arr.append([0])
//    let str = readLine()!.split(separator: " ").compactMap({Int($0)})
//    for j in str {
//        counter += j
//        arr[i].append(counter)
//    }
//}
//for _ in 0..<a[2] {
//    var total = 0
//    let str = readLine()!.split(separator: " ").compactMap({Int($0)})
//    let sizeX = str[2] - str[0] + 1
//    for i in 0..<sizeX {
//      total +=  arr[str[0] - 1 + i][str[3]] - (arr[str[0] - 1 + i][str[1] - 1])
//    }
//    print(total)
//}

//Test
//import Foundation
//var dict: [Int: [Int:Int]] = [:]
//var arr: [[Int]] = [] //первый раунд
//
//var counter1 = CFAbsoluteTimeGetCurrent()
//for j in 0..<100 {
//    dict[j] = [:]
//    for i in 0..<100{
//        dict[j]![i] = i
//    }
//}
//var counter2 = CFAbsoluteTimeGetCurrent()
//for j in 0..<100 {
//    arr.append([])
//    for i in 0..<100 {
//        arr[j].append(i)
//    }
//}
//var counter3 = CFAbsoluteTimeGetCurrent()
//print(counter2 - counter1 < counter3 - counter2)
//
//print(counter2 - counter1)
//print(counter3 - counter2)
//
//var counter11 = CFAbsoluteTimeGetCurrent()
//for j in 0..<dict.count {
//    for i in 0..<dict[j]!.count {
//        dict[j]![i]! += 1
//    }
//}
//var counter22 = CFAbsoluteTimeGetCurrent()
//for j in 0..<arr.count {
//    for i in 0..<arr[j].count {
//        arr[j][i] += 1
//    }
//}
//var counter33 = CFAbsoluteTimeGetCurrent()
//
//print(counter22 - counter11 < counter33 - counter22)
//
//print(counter22 - counter11)
//print(counter33 - counter22)

//false
//0.007362961769104004
//0.005160927772521973
//false
//0.007995963096618652
//0.004416108131408691


//10. Скучная лекция  OK
//var str = readLine()!
//var dict: [Character: Int] = [:]
//var count = str.count
//for (j,i) in str.enumerated() {
//    //print(j, i, count, (j + 1) * count - j)
//    if dict[i] != nil {
//        dict[i]! += (j + 1) * (count - j)
//    } else {
//        dict[i] = (j + 1) * (count - j)
//    }
//}
//for i in dict.sorted(by: {$0.key < $1.key}) {
//    print("\(i.key): \(i.value)")
//}

//6  Операционные системы lite  OK

//var first = Int(readLine()!)!
//var second = Int(readLine()!)!
//var dict: [[Int]] = []
//for _ in 0..<second {
//    let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//    dict.append(read)
//}
//var set: Set<[Int]> = []
//if second > 0 {
//    for i in dict {
//        if set.count > 0 {
//            for j in set {
//                if i[0] + i[1] > j[0] + j[1] {
//                    if i[0] <= j[1] || i[1] <= j[1] {
//                        set.remove(j)
//                    }
//                } else {
//                    if i[0] >= j[0] || i[1] >= j[0] {
//                        set.remove(j)
//                    }
//                }
//            }
//        }
//        set.insert([i[0], i[1]])
//    }
//    print(set.count)
//
//} else {
//    print(0)
//}


// 3 Коллекционер Диего OK

//
//var first = Int(readLine()!)!
//var setDiego = Set(readLine()!.split(separator: " ").compactMap({Int($0)}))
//var arrDiego = setDiego.sorted()
//var second = Int(readLine()!)!
//let k = readLine()!.split(separator: " ").compactMap({Int($0)})
//var right = arrDiego.count
//if right > 1 {
//    let maxArr = arrDiego.max()!
//    let minArr = arrDiego.min()!
//    for i in 0..<second {
//        if maxArr < k[i] {
//            print(right)
//        } else if minArr >= k[i] {
//            print(0)
//        } else {
//            print(binarSearch( arr: arrDiego, key: k[i]))
//        }
//    }
//} else {
//    for i in 0..<second {
//        print(arrDiego[0] >= k[i] ? 0 : 1)
//    }
//}
//func binarSearch(arr: [Int], key: Int) -> Int {
//    var left = 0
//    var right = arr.count - 1
//    var total = 8
//    while left <= right {
//        let midIndex = (left + right) / 2
//        let midValue = arr[midIndex]
//        if midValue == key {
//            return midIndex
//        }
//        if midValue > key {
//            right = midIndex - 1
//        }
//        if midValue < key {
//            left = midIndex + 1
//        }
//        if left > right {
//            if midIndex == 0 {
//                if midValue > key {
//                    total = 0
//                } else {
//                    total = 1
//                }
//            } else if  midIndex == arr.count - 1 {
//                if key > midValue {
//                    total = arr.count
//                } else {
//                    total = arr.count - 1
//                }
//            } else if midValue >= key  {
//                total = midIndex
//            } else if midValue < key {
//                total = midIndex + 1
//            }
//        }
//    }
//    return total
//}

//1. Гистограмма OK

//import Foundation
//
//let fileName = "input.txt"
//
//func readNums() {
//    guard let line = try? String(contentsOfFile: fileName) else {
//        return
//    }
//    let split = line.split(separator: "\n")
//    
//    var counter: [Character: Int] = [:]
//    var words: [Character] = []
//    var result = ""
//
//    for i in split {
//        for j in i {
//            if j != " " {
//                if counter[j] != nil {
//                    counter[j]! += 1
//                } else {
//                    words.append(j)
//                    counter[j] = 1
//                }
//            }
//        }
//    }
//    var max = 0
//    for i in counter {
//        if i.value > max {
//            max = i.value
//        }
//    }
//    var str1 = ""
//    while max > 0  {
//        var str = ""
//        for i in words.sorted() {
//            if counter[i]! >= max {
//                str += "#"
//            } else {
//                str += " "
//            }
//            if max == 1 {
//                str1 += "\(i)"
//            }
//        }
//        result += str + "\n"
//        max -= 1
//    }
//
//    result += str1
//    try? result.write(toFile: "output.txt", atomically: true, encoding: .utf8)
//}
//
//readNums()

// 2. Красивая строка OK
//var count = Int(readLine()!)!
//var str = readLine()!.compactMap({Character(extendedGraphemeClusterLiteral: $0)})
////var dict: [Character : [(Int,Int)]] = [:]
//var result = 0
//var char1: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//var char: [Character] = ["a","d"]
//for i in char {
//    var z = 0
//    var change = -1
//    for j in 0..<str.count {
//        if i != str[j] {
//            z += 1
//        }
//        while z > count && change < str.count {
//            if str[change + 1] != i {
//                z -= 1
//            }
//            change += 1
//        }
//        result = max(result, j - change)
//        print(j - change, i)
//    }
//}
//print(result)
//

//


// 11 OK
//var bool = true
//var arr: [String] = []
//while bool == true {
//
//    var read = readLine()!.split(separator: " ")
//    if read.count == 2 {
//        arr.append(String(read[1]))
//        print("ok")
//    } else if read[0] == "pop" {
//        if arr.count > 0 {
//            print(arr.removeLast())
//        } else {
//            print("error")
//        }
//    } else if read[0] == "back" {
//        if arr.count > 0 {
//            print(arr.last!)
//        } else {
//            print("error")
//        }
//    } else if read[0] == "size" {
//        print(arr.count)
//    } else if read[0] == "clear" {
//        arr = []
//        print("ok")
//    } else if read[0] == "exit" {
//        bool = false
//        print("bye")
//    }
//}

// 12. Правильная скобочная последовательность OK
//
//var arr: [Character] = []
//var str = readLine()!.compactMap({Character(extendedGraphemeClusterLiteral: $0)})
//var coonter1 = true
//boba: for i in str {
//    if i == "}" || i == ")" || i == "]" {
//        var value: Character = "0"
//        switch i {
//        case "}" : value = "{"
//        case ")" : value = "("
//        case "]" : value = "["
//        default: break
//        }
//
//        if arr.count > 0 && arr[arr.count - 1] == value {
//            arr.removeLast()
//        } else {
//            coonter1 = false
//            break boba
//
//        }
//    } else if i == "{" || i == "(" || i == "[" {
//        arr.append(i)
//    }
//}
//if !coonter1 || arr.count != 0 {
//    print("no")
//} else {
//    print("yes")
//}

//13. Постфиксная запись OK
//var arr: [Int] = []
//var str = readLine()!.compactMap({String($0)})
//for i in str {
//    if i == "+" {
//        let one = arr.removeLast()
//        let two = arr.removeLast()
//        arr.append(one + two)
//    }
//    if i == "*" {
//        let one = arr.removeLast()
//        let two = arr.removeLast()
//        arr.append(one * two)
//    }
//    if i == "-" {
//        let one = arr.removeLast()
//        let two = arr.removeLast()
//        arr.append(two - one)
//    }
//    if let intik = Int(i) {
//        arr.append(intik)
//    }
//}
//if arr.count == 1 {
//    print(arr[0])
//}

//14. Сортировка вагонов lite OK
//var arr: [Int] = []
//var count = Int(readLine()!)!
//var bool = true
//var counter = 1
//var str = readLine()!.split(separator: " ").compactMap({Int($0)})
//boba: for i in str {
//    if arr.count != 0 {
//        while arr.count > 0 && arr[arr.count - 1] < i {
//            if arr[arr.count - 1] == counter {
//                arr.removeLast()
//                counter += 1
//            } else {
//                bool = false
//                break boba
//            }
//        }
//        arr.append(i)
//    } else {
//        arr.append(i)
//    }
//}
//if bool {
//    print("YES")
//} else {
//    print("NO")
//}
//15. Великое Лайнландское переселение OK
//var first = Int(readLine()!)!
//var second = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [(Int,Int)] = []
//var total : [Int: Int] = [:]
//for (j,i) in second.enumerated() {
//
//    while arr.count > 0 && arr[arr.count - 1].0 > i  {
//        var a = arr.removeLast()
//        total[a.1] = j
//    }
//        arr.append((i, j))
//}
//for i in arr {
//    total[i.1] = -1
//}
//var totalStr = ""
//for i in 0..<first {
//    totalStr += "\(total[i]!) "
//}
//print(totalStr)

//16. Очередь с защитой от ошибок OK
//var bool = true
//var arr: [String] = []
//while bool == true {
//var number = 0
//    var read = readLine()!.split(separator: " ")
//    if read.count == 2 {
//        arr.append(String(read[1]))
//        print("ok")
//    } else if read[0] == "pop" {
//        if arr.count > 0 {
//            print(arr.removeFirst())
//        } else {
//            print("error")
//        }
//    } else if read[0] == "front" {
//        if arr.count > 0 {
//            print(arr.first!)
//        } else {
//            print("error")
//        }
//    } else if read[0] == "size" {
//        print(arr.count)
//    } else if read[0] == "clear" {
//        arr = []
//        print("ok")
//    } else if read[0] == "exit" {
//        bool = false
//        print("bye")
//    }
//}
//17. Игра в пьяницу OK
//var first = readLine()!.split(separator: " ").compactMap({Int($0)})
//var second = readLine()!.split(separator: " ").compactMap({Int($0)})
//var counter = 0
//while counter < 1000000 && first.count > 0 && second.count > 0 {
//    if (first[0] > second[0] && !(first[0] == 9 && second[0] == 0)) || (first[0] == 0 && second[0] == 9){
//        first.append(first.removeFirst())
//        first.append(second.removeFirst())
//    } else {
//        second.append(first.removeFirst())
//        second.append(second.removeFirst())
//    }
//    counter += 1
//    //print(first, second, counter)
//}
//if counter >= 1000000 {
//    print("botva")
//}  else {
//    print(second.count > first.count ? "second" : "first", counter)
//}


// 18. Дек с защитой от ошибок OK
//var bool = true
//var arrTest: [String] = Array(repeating: "", count: 202)
//var arr: [String] = []
//while bool == true {
//    let read = readLine()!.split(separator: " ")
//    if read[0] == "push_front" {
//        arr.insert(String(read[1]), at: 0)
//        print("ok")
//    } else if read[0] == "push_back" {
//        arr.append(String(read[1]))
//        print("ok")
//    } else if read[0] == "pop_back" {
//        if arr.count > 0 {
//            print(arr.last!)
//            arr.removeLast()
//        } else {
//            print("error")
//        }
//    } else if read[0] == "pop_front" {
//        if arr.count > 0 {
//            print(arr.first!)
//            arr.removeFirst()
//        } else {
//            print("error")
//        }
//    } else if read[0] == "front" {
//        if arr.count > 0 {
//            print(arr.first!)
//        } else {
//            print("error")
//        }
//    } else if read[0] == "back" {
//        if arr.count > 0 {
//            print(arr.last!)
//        } else {
//            print("error")
//        }
//    } else if read[0] == "size" {
//        print(arr.count)
//    } else if read[0] == "clear" {
//        arr = []
//        print("ok")
//    } else if read[0] == "exit" {
//        bool = false
//        print("bye")
//    }
//}

//19. Хипуй OK
//var read = Int(readLine()!)!
//var arr: [Int] = []
//for i in 0..<read {
//    var str = readLine()!.split(separator: " ").compactMap({Int($0)})
//    if str[0] == 0 {
//        if arr.count == 0 {
//            arr.append(str[1])
//        } else {
//            append(value: str[1])
//          //  print(arr)
//        }
//    } else {
//        if arr.count == 1 {
//            print(arr[0])
//            arr = []
//        } else {
//            print(del())
//           // print(arr.max() == del())
//        }
//    }
//}
// func append(value: Int) {
//    arr.append(value)
//    var pos = arr.count - 1
//    while pos > 0 && arr[pos] > arr[(pos - 1)/2]{
//        let value = arr[pos]
//        arr[pos] = arr[(pos - 1)/2]
//        arr[(pos - 1)/2] = value
//        pos = (pos - 1)/2
//    }
//}
//func del() -> Int {
//    let start = arr[0]
//    arr[0] = arr[arr.count - 1]
//    var pos = 0
//    while pos * 2 + 1 < arr.count - 1{
//        var maxIndex = pos*2 + 1
//        if arr[pos*2 + 2] > arr[maxIndex] {
//            maxIndex = pos*2 + 2
//        }
//        if arr[pos] < arr[maxIndex] {
//            let value = arr[pos]
//            arr[pos] = arr[maxIndex]
//            arr[maxIndex] = value
//            pos = maxIndex
//        } else {
//            break
//        }
//    }
//    arr.removeLast()
//    return start
//}

// 20. Пирамидальная сортировка OK
//var read = readLine()
//var arr = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr2: [Int] = []
//var str = ""
//var j = arr.count
//var count = j/2
//if j > 1 {
//    for i in 0...count {
//        sortPir(value: count - i)
//        //print(arr)
//    }
//    while arr.count >= 1 {
//        arr.swapAt(0, arr.count - 1)
//        arr2.append(arr.removeLast())
//        sortPir(value: 0)
//    }
//    for i in arr2.reversed() {
//        str += "\(i) "
//    }
//    print(str)
//
//    func sortPir(value: Int) {
//        var pos = value
//        while pos * 2 + 1 < arr.count {
//            var maxIndex = pos*2 + 1
//            if pos*2 + 2 <= arr.count - 1 {
//                if arr[pos*2 + 2] > arr[maxIndex] {
//                    maxIndex = pos*2 + 2
//                }
//            }
//            if arr[pos] < arr[maxIndex] {
//            let value = arr[pos]
//            arr[pos] = arr[maxIndex]
//            arr[maxIndex] = value
//            pos = maxIndex
//            } else {
//                break
//            }
//        }
//    }
//    func del() -> Int {
//        let start = arr[0]
//        arr[0] = arr[arr.count - 1]
//        var pos = 0
//        while pos * 2 + 1 < arr.count - 1{
//            var maxIndex = pos*2 + 1
//            if arr[pos*2 + 2] > arr[maxIndex] {
//                maxIndex = pos*2 + 2
//            }
//            if arr[pos] < arr[maxIndex] {
//                let value = arr[pos]
//                arr[pos] = arr[maxIndex]
//                arr[maxIndex] = value
//                pos = maxIndex
//            } else {
//                break
//            }
//        }
//        arr.removeLast()
//        return start
//    }
//} else {
//    print(arr[0])
//}


//22. Кузнечик OK

//let line = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arrayOfValue: [Int] = Array(repeating: -1, count: line[0] + 1)
//var counter = 0
//func find(value: Int) -> Int {
//    counter += 1
//    if arrayOfValue[value] == -1 {
//        arrayOfValue[value] = 0
//        for i in 1...line[1] {
//            if value - i >= 0 {
//                arrayOfValue[value] += find(value: value - i)
//            }
//        }
//    }
//    return arrayOfValue[value]
//}
//arrayOfValue[0] = 1
//arrayOfValue[1] = 1
//print(find(value: line[0] - 1))
//print(counter)


//21. Три единицы подряд OK
//import Foundation
//var line = Int(readLine()!)!
//var arrayOfInt = Array(repeating: -1, count: 36)
//func find(value: Int) -> Int {
//    if arrayOfInt[value] == -1 {
//        arrayOfInt[value] =  find(value: value - 1) + find(value: value - 2) + find(value: value - 3)
//    }
//    return arrayOfInt[value]
//
//}
//arrayOfInt[0] = 1
//arrayOfInt[1] = 2
//arrayOfInt[2] = 4
//print(find(value: line))

//23. Калькулятор OK
//let finalValue = Int(readLine()!)!
//var str = "\(finalValue)"
//var arrayDP = Array(repeating: 1000001, count: finalValue+1)
//var arrayOfParent = Array(repeating: 0, count: finalValue+1)
//arrayDP[1]=0
//arrayDP[0]=0
//for (j,i) in arrayDP.enumerated(){
//    if j > 1 {
//        var a = 1000001
//        var b = 1000001
//        var c = 1000001
//        if j % 3 == 0 {
//            a = arrayDP[j/3] + 1
//        }
//        if j % 2 == 0 {
//            b = arrayDP[j/2] + 1
//        }
//        c = arrayDP[j-1] + 1
//        var minimum = min(a, min(b,c))
//        arrayDP[j] = minimum
//        if minimum == a {
//            arrayOfParent[j] = j/3
//        } else if minimum == b {
//            arrayOfParent[j] = j/2
//        } else {
//            arrayOfParent[j] = j-1
//        }
//    }
//
//}
//var i = arrayOfParent[finalValue]
//while i != 0 {
//    str = "\(i) " + str
//    i = arrayOfParent[i]
//}
//print(arrayDP[finalValue])
//print(str)

//24. Покупка билетов OK
//var n = Int(readLine()!)!
//var totalAR: [Int] = [0, 0, 0]
//var ar: [(Int,Int,Int)] = [(1000000, 1000000, 1000000), (1000000, 1000000, 1000000), (1000000, 1000000, 1000000)]
//for i in 3..<n + 3 {
//    let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//    ar.append((read[0], read[1], read[2]))
//    let a = ar[i].0 + totalAR[totalAR.count - 1]
//    let b = ar[i-1].1 + totalAR[totalAR.count - 2]
//    let c = ar[i-2].2 + totalAR[totalAR.count - 3]
//    let d = min(a, min(b,c))
//    totalAR.append(d)
//
//}
//print(totalAR.last!)

// 26. Самый дешевый путь Ok
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var array: [[Int]] = []
//array.append([])
//for i in 0..<read[0] {
//    if i == 0 {
//        readLine()!.split(separator: " ").compactMap({Int($0)}).reduce(0) { a, b in
//            array[0].append(a+b)
//            return a + b
//        }
//    } else {
//        array.append([])
//        var red2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//        for j in 0..<red2.count {
//            if j == 0 {
//                array[i].append(red2[j] + array[i-1][j])
//            } else {
//                array[i].append( red2[j] + min(array[i-1][j], array[i][j-1]))
//            }
//        }
//    }
//}
//print(array[array.count - 1][array[array.count - 1].count - 1])
//
// 31. Поиск в глубину
//let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = Array(repeating: [], count: read[0] + 1)
//var visited: [Bool] = Array(repeating: false, count: read[0] + 1)
//for _ in 0..<read[1] {
//    var read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr[read1[0]].append( read1[1])
//    arr[read1[1]].append( read1[0])
//}
//func dfs(now: Int) {
//    visited[now] = true
//    for i in arr[now] {
//        if visited[i] != true {
//            dfs(now: i)
//        }
//    }
//}
//dfs(now: 1)
//var totalStr = ""
//var counter = 0
//for i in 1...visited.count - 1 {
//    if visited[i] == true {
//        totalStr += "\(i) "
//        counter += 1
//    }
//
//}
//print(counter)
//print(totalStr)

//32. Компоненты связности OK

//let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = Array(repeating: [], count: read[0] + 1)
//var visited: [(Bool, Int)] = Array(repeating: (false, 0), count: read[0] + 1)
//for _ in 0..<read[1] {
//    var read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr[read1[0]].append( read1[1])
//    arr[read1[1]].append( read1[0])
//}
//
//func dfs(now: Int, value: Int) {
//    visited[now] = (true, value)
//    for i in arr[now] {
//        if visited[i].0 != true {
//            dfs(now: i, value: value)
//        }
//    }
//}
//var valueForCicle = 0
//for i in 1...visited.count - 1 {
//    if visited[i].0 != true {
//        valueForCicle += 1
//        dfs(now: i, value: valueForCicle)
//    }
//}
//var dict: [Int: [Int]] = [:]
//for i in 1...visited.count - 1 {
//    if dict[visited[i].1] != nil {
//        dict[visited[i].1]!.append(i)
//    } else {
//        dict[visited[i].1] = [i]
//    }
//}
//print(dict.count)
//for i in dict {
//    var str = ""
//    print(i.value.count)
//    for j in i.value {
//        str += "\(j) "
//    }
//    print(str)
//}
//
//

//33. Списывание OK
//let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = Array(repeating: [], count: read[0] + 1)
//var visited: [(Bool, Int)] = Array(repeating: (false, 0), count: read[0] + 1)
//for _ in 0..<read[1] {
//    let read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr[read1[0]].append( read1[1])
//    arr[read1[1]].append( read1[0])
//}
//var boolError = false
//func dfs(now: Int, value: Int) {
//    let valueReverce = 3 - value
//    visited[now] = (true, valueReverce)
//    for i in arr[now] {
//        if visited[i].0 == false {
//            dfs(now: i, value: valueReverce)
//        }
//        if visited[i].1 == valueReverce {
//            boolError = true
//            return
//        }
//    }
//}
//for i in 1...visited.count - 1 {
//    if visited[i].0 != true {
//        dfs(now: i, value: 2)
//    }
//}
//
//if boolError {
//    print("NO")
//} else {
//    print("Yes")
//}

//34. Топологическая сортировка OK
//let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var arr: [[Int]] = Array(repeating: [], count: read[0] + 1)
//var visited: [(Bool, Int)] = Array(repeating: (false, 0), count: read[0] + 1)
//for _ in 0..<read[1] {
//    let read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr[read1[0]].append( read1[1])
//    //arr[read1[1]].append( read1[0])
//}
//var boolError = false
//var totalStr = ""
//func dfs(now: Int, value: Int, older: Int) {
//    visited[now] = (true, value)
//    if arr[now].isEmpty {
//        totalStr += "\(String((String(now)).reversed())) "
//        visited[now].1 = 2
//    } else {
//        for i in arr[now] {
//            if visited[i].0 == false {
//                dfs(now: i, value: value, older: now)
//            }
//            if visited[i] == (true, 1) {
//                //print(now, i, "кукарача", older)
//                boolError = true
//            }
//        }
//        visited[now].1 = 2
//
//        totalStr += "\(String((String(now)).reversed())) "
//    }
//
//
//}
//var valueForIdentify = 1
//for i in 1...visited.count - 1 {
//
//    if visited[i].0 != true {
//        dfs(now: i, value: valueForIdentify, older: 0)
//    }
//}
//
//if !boolError {
//    totalStr.removeLast()
//    print(String(totalStr.reversed()))
//} else {
//    print(-1)
//}
//

//35. Поиск цикла OK

//let read = Int(readLine()!)!
//var pointArr: [[Int]] = Array(repeating: [], count: read+1)
//var visited: [Int] = Array(repeating: 0, count: read+1)
//var first = -1
//var last = -1
//for i in 0..<read {
//    //let read1 = split[i].split(separator: " ").compactMap({Int($0)})
//    let read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    for j in 0..<read1.count {
//        if read1[j] == 1 {
//            pointArr[i+1].append(j+1)
//        }
//    }
//}
//var bolik = true
//func dfs(now: Int, value: Int, oldest: Int){
//    visited[now] = oldest
//        for i in pointArr[now] {
//            if visited[i] == 0 {
//                dfs(now: i, value: value, oldest: now)
//            } else {
//                if visited[now] != i  {
//                    if first == -1 {
//                        first = now
//                        last = i
//                    }
//                    bolik = false
//                }
//            }
//        }
//}
//
//for i in 1...read {
//    if visited[i] == 0 && bolik == true {
//        dfs(now: i, value: 1, oldest: -6)
//    }
//}
//if !bolik {
//    print("YES")
//    var counter = 2
//    var totalString = ""
//    var i = visited[first]
//    totalString += "\(first) "
//    while i != -6 {
//        if visited[i] != -6  && i != last{
//            counter += 1
//            totalString += "\(i) "
//            i = visited[i]
//        } else {
//            i = -6
//        }
//    }
//    totalString += "\(last) "
//    print(counter)
//    print(totalString)
//
//} else {
//    print("NO")
//}


//27. Вывести маршрут максимальной стоимости OK
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var array: [[Int]] = []
//array.append([])
//var str = ""
//for i in 0..<read[0] {
//    if i == 0 {
//        readLine()!.split(separator: " ").compactMap({Int($0)}).reduce(0) { a, b in
//            array[0].append(a+b)
//            return a + b
//        }
//    } else {
//        array.append([])
//        var red2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//        for j in 0..<red2.count {
//            if j == 0 {
//                array[i].append(red2[j] + array[i-1][j])
//            } else {
//                if array[i-1][j] > array[i][j-1] {
//                    array[i].append(red2[j] + array[i-1][j])
//                } else {
//
//                    array[i].append(red2[j] + array[i][j-1])
//                }
//
//            }
//        }
//    }
//}
//var i = 0
//var j = 0
//var counter = (read[0] + read[1] - 2)
//while counter > 0 {
//    counter -= 1
//    if array.count - 1 - j == 0 {
//        i += 1
//        str = "R " + str
//        continue
//    }
//    if array[array.count - 1 - j].count - 1 - i == 0 {
//        j += 1
//        str = "D " + str
//        continue
//    }
//    if array[array.count - 1 - j - 1][array[array.count - 1 - j - 1].count - 1 - i] > array[array.count - 1 - j][array[array.count - 1 - j].count - 1 - 1 - i] {
//        j += 1
//        str = "D " + str
//    } else {
//        i += 1
//        str = "R " + str
//    }
//}
//print(array[array.count - 1][array[array.count - 1].count - 1])
//
//print(str)


//28. Ход конём OK
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var array: [[Int]] = Array(repeating: Array(repeating: 0, count: read[1]), count: read[0])
//array[0][0] = 1
//for i in 0..<read[0] {
//        for j in 0..<read[1] {
//                if i - 2 >= 0 && j - 1 >= 0 {
//                    array[i][j] += array[i-2][j-1]
//                }
//                if i - 1 >= 0 && j - 2 >= 0 {
//                    array[i][j] += array[i-1][j-2]
//                }
//            }
//        }
//print(array[array.count - 1][array[array.count - 1].count - 1])


//25. Гвоздики OK
//var read = readLine()
//var read1 = readLine()!.split(separator: " ").compactMap({Int($0)}).sorted()
//var nails: [Int] = []
//nails.append(read1[1] - read1[0])
//nails.append(read1[1] - read1[0])
////var boolik = false
//if read1.count == 2 {
//    print(read1[1]-read1[0])
//} else {
//    for i in 2...read1.count - 1 {
//        if i >= 2 {
//            nails.append(min(nails[i-2] + (read1[i] - read1[i-1]), nails[i-1] + (read1[i] - read1[i-1])))
//
//        } else {
//            nails.append(nails[i-1] + read1[i] - read1[i-1])
//        }
//
//    }
//    print(nails.last!)
//}

//36. Длина кратчайшего пути  OK
//let read = Int(readLine()!)!
//var pointArr: [[Int]] = Array(repeating: [], count: read+1)
//var visited: [Int] = Array(repeating: 0, count: read+1)
//var parents: [Int] = Array(repeating: 0, count: read+1)
//for i in 0..<read {
//    let read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    for j in 0..<read1.count {
//        if read1[j] == 1 {
//            pointArr[i+1].append(j+1)
//        }
//    }
//}
//
//let points = readLine()!.split(separator: " ").compactMap({Int($0)})
//var finish = points[1]
//var boolik = false
//func dfs(start: Int, counter: Int, older: Int) {
//    visited[start] = counter
//    parents[start] = older
//    for i in pointArr[start] {
//        if i == finish {
//            boolik = true
//        }
//        if visited[i] == 0 || visited[i] > counter+1 {
//            dfs(start: i, counter: counter+1, older: start)
//        }
//    }
//}
//dfs(start: points[0], counter: 0, older: -1)
//if boolik {
//    var i = points[1]
//    var str = ""
//    var counter = 0
//
//    while i != points[0] {
//        counter += 1
//        str = "\(i) " + str
//        i = parents[i]
//    }
//    str = "\(i) " + str
//    print(counter)
//   // print(str)
//} else {
//    print(-1)
//}

// 37. Путь в графе OK
//let read = Int(readLine()!)!
//var pointArr: [[Int]] = Array(repeating: [], count: read+1)
//var visited: [Int] = Array(repeating: 0, count: read+1)
//var parents: [Int] = Array(repeating: 0, count: read+1)
//for i in 0..<read {
//    let read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    for j in 0..<read1.count {
//        if read1[j] == 1 {
//            pointArr[i+1].append(j+1)
//        }
//    }
//}
//
//let points = readLine()!.split(separator: " ").compactMap({Int($0)})
//var finish = points[1]
//var boolik = false
//func dfs(start: Int, counter: Int, older: Int) {
//    visited[start] = counter
//    parents[start] = older
//    for i in pointArr[start] {
//        if i == finish {
//            boolik = true
//        }
//        if visited[i] == 0 || visited[i] > counter+1 {
//            dfs(start: i, counter: counter+1, older: start)
//        }
//    }
//}
//dfs(start: points[0], counter: 0, older: -1)
//if boolik {
//    var i = points[1]
//    var str = ""
//    var counter = 0
//
//    while i != points[0] {
//        counter += 1
//        str = "\(i) " + str
//        i = parents[i]
//    }
//    str = "\(i) " + str
//    if counter != 0 {
//        print(counter)
//        print(str)
//    } else {
//           print(0)
//    }
//
//} else {
//    print(-1)
//}

// 38. Блохи OK
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var x = read[0]
//var y = read[1]
//var pointArr: [[Int]] = Array(repeating: Array(repeating: 1000, count: read[1]), count: read[0])
//
//
//var arrayOfPoints: [(valueX: Int, valueY: Int, count: Int)] = []
//func test(valueX: Int, valueY: Int, count: Int) {
//    pointArr[valueX][valueY] = count
//    if valueX - 2 >= 0 && valueY - 1 >= 0 {
//        if pointArr[valueX - 2][valueY - 1] > count {
//            pointArr[valueX - 2][valueY - 1] = count
//            arrayOfPoints.append((valueX: valueX - 2, valueY: valueY - 1, count: count+1))
//        }
//    }
//    if valueX - 2 >= 0 && valueY + 1 < y {
//        if pointArr[valueX - 2][valueY + 1] > count {
//            pointArr[valueX - 2][valueY + 1] = count
//            arrayOfPoints.append((valueX: valueX - 2, valueY: valueY + 1, count: count+1))
//        }
//    }
//    if valueX + 2 < x && valueY - 1 >= 0 {
//        if pointArr[valueX + 2][valueY - 1] > count {
//            pointArr[valueX + 2][valueY - 1] = count
//            arrayOfPoints.append((valueX: valueX + 2, valueY: valueY - 1, count: count+1))
//        }
//    }
//    if valueX + 2 < x && valueY + 1 < y {
//        if pointArr[valueX + 2][valueY + 1] > count {
//            pointArr[valueX + 2][valueY + 1] = count
//            arrayOfPoints.append((valueX: valueX + 2, valueY: valueY + 1, count: count+1))
//        }
//    }
//    if valueX - 1 >= 0 && valueY + 2 < y {
//        if  pointArr[valueX - 1][valueY + 2] > count {
//            pointArr[valueX - 1][valueY + 2] = count
//            arrayOfPoints.append((valueX: valueX - 1, valueY: valueY + 2, count: count+1))
//        }
//    }
//    if valueX + 1 < x && valueY + 2 < y {
//        if pointArr[valueX + 1][valueY + 2] > count {
//            pointArr[valueX + 1][valueY + 2] = count
//            arrayOfPoints.append((valueX: valueX + 1, valueY: valueY + 2, count: count+1))
//        }
//    }
//    if valueX - 1 >= 0 && valueY - 2 >= 0 {
//        if pointArr[valueX - 1][valueY - 2] > count {
//            pointArr[valueX - 1][valueY - 2] = count
//            arrayOfPoints.append((valueX: valueX - 1, valueY: valueY - 2, count: count+1))
//        }
//    }
//    if valueX + 1 < x && valueY - 2 >= 0 {
//        if pointArr[valueX + 1][valueY - 2] > count {
//            pointArr[valueX + 1][valueY - 2] = count
//            arrayOfPoints.append((valueX: valueX + 1, valueY: valueY - 2, count: count+1))
//        }
//    }
//}
//test(valueX: read[2]-1, valueY: read[3]-1, count: 0)
//while arrayOfPoints.count != 0 {
//    var a = arrayOfPoints.removeFirst()
//    test(valueX: a.valueX, valueY: a.valueY, count: a.count)
//}
//var total = 0
//for _ in 0..<read[4] {
//        var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//    if pointArr[read[0]-1][read[1]-1] == 1000 {
//        print(-1)
//        total = 0
//        break
//    } else {
//        total += pointArr[read[0]-1][read[1]-1]
//    }
//}
//if total != 0 {
//    print(total)
//}


// 39. Путь спелеолога OK
//let read = Int(readLine()!)!
//var ar: [[Int]] = Array(repeating: [], count: read*read*read + 1)
//var visited: [Int] = Array(repeating: 0, count: read*read*read + 1)
//var parent1: [Bool] = Array(repeating: false, count: read*read*read + 1)
//var globalStart = 0
//for l in 0..<read {
//    let _ = readLine()
//    for i in 0..<read {
//        let read1 = readLine()!.compactMap({$0})
//        for j in 0..<read1.count {
//            let pos = l * read * read + i * read + j
//            if read1[j] == "." || read1[j] == "S" {
//                if l == 0 {
//                    ar[pos+1].append(0)
//                } else {
//                    ar[pos+1].append(-1)
//                }
//                if j > 0 {
//                    if ar[pos].count > 0 {
//                        ar[pos+1].append(pos)
//                        ar[pos].append(pos+1)
//                    }
//                }
//                if i > 0 {
//                    if ar[pos + 1 - read].count > 0 {
//                        ar[pos+1].append(pos + 1 - read)
//                        ar[pos + 1 - read].append(pos+1)
//                    }
//                }
//                if l > 0 {
//                    if ar[pos + 1 - read*read].count > 0 {
//                        ar[pos+1].append(pos + 1 - read*read)
//                        ar[pos + 1 - read*read].append(pos+1)
//                    }
//                }
//            }
//            if read1[j] == "S" {
//                globalStart = l * read * read + i * read + j + 1
//            }
//        }
//    }
//}
////print(ar, ar.count)
////print(globalStart)
//var funcArr: [(Int, Int)] = []
//var setik: Set<Int> = []
////var counerik = 0
//func dfs(start: Int, counter: Int) {
//    parent1[start] = true
//    visited[start] = counter
//    for i in ar[start].sorted() {
//        if i == 0 {
//            setik.insert(counter)
//            return
//        }
//        if i == -1 {
//            continue
//        }
//        if visited[i] == 0 && parent1[i] != true {
//            parent1[i] = true
//            funcArr.append((i, counter+1))
//        }
//    }
//}
////funcArr.append((globalStart, 0))
//dfs(start: globalStart, counter: 0)
//while funcArr.count > 0 {
//    var a = funcArr.removeFirst()
//    dfs(start: a.0, counter: a.1)
//}
//print(setik.min()!)



//40. Метро OK
//var read1 = Int(readLine()!)!
//var read2 = Int(readLine()!)!
//var linesArray: [Set<Int>] = []
//var dict: [Int: [Int]] = [:]
//var lines = Array(repeating: 0, count: read2+1)
//var parents: [Int] = Array(repeating: 0, count: read2+1)
//for i in 0..<read2 {
//    dict[i+1] = []
//    var read3 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    read3.removeFirst()
//    if linesArray.count > 0 {
//        for (b, j) in linesArray.enumerated() {
//            if Set(j).intersection(Set(read3)) != [] {
//                dict[i+1]!.append(b+1)
//                dict[b+1]!.append(i+1)
//            }
//        }
//    }
//    linesArray.append(Set(read3))
//}
////print(dict)
//var counterik = 0
//var read4 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var start = read4[0]
//var finish = read4[1]
//var startArray: [Int] = []
//for (j, i) in linesArray.enumerated() {
//    if i.contains(start) {
//        lines[j+1] = 0
//        startArray.append(j+1)
//    }
//    if i.contains(finish) {
//        lines[j+1] = -1
//    }
//}
//var total: Set<Int> = []
//func dfs(start: Int, counter: Int, older: Int) {
//    if lines[start] == -1 {
//        total.insert(counter)
//        return
//    }
//    lines[start] = counter
//    parents[start] = older
//    for i in dict[start]! {
//        if lines[i] == -1 {
//            total.insert(counter+1)
//        }
//        if lines[i] == 0 || lines[i] > counter+1 {
//            dfs(start: i, counter: counter+1, older: start)
//        }
//    }
//}
////print(startArray.count)
////print(lines)
//for i in startArray {
//    dfs(start: i, counter: 0, older: -1)
//}
//if total.count > 0 {
//    print(total.min()!)
//} else {
//    print(-1)
//}

//30. НОП с восстановлением ответа OK
//let l = readLine()!.split(separator: " ").map { Int($0)! }
//var n = l[0]
//let a = readLine()!.split(separator: " ").map { Int($0)! }
//
//let z = readLine()!.split(separator: " ").map { Int($0)! }
//var m = z[0]
//let b = readLine()!.split(separator: " ").map { Int($0)! }
//
//var dp = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
//
//for i in 1...n {
//    for j in 1...m {
//        if a[i-1] == b[j-1] {
//            dp[i][j] = dp[i-1][j-1] + 1
//        } else {
//            dp[i][j] = max(dp[i-1][j], dp[i][j-1])
//        }
//    }
//}
//
//var lcs = [Int]()
//var i = n, j = m
//while i > 0 && j > 0 {
//    if a[i-1] == b[j-1] {
//        lcs.append(a[i-1])
//        i -= 1
//        j -= 1
//    } else if dp[i-1][j] > dp[i][j-1] {
//        i -= 1
//    } else {
//        j -= 1
//    }
//}
//
//lcs.reverse()
//print(lcs.map { String($0) }.joined(separator: " "))


//29. Кафе
//
//let read = Int(readLine()!)!
//var count = 0
//var valuesCountArray: [[Int]] = Array(repeating: Array(repeating: 1000000, count: read+1), count: read+1)
//var test: [[Int]] = Array(repeating: Array(repeating: 0, count: read+1), count: read+1)
//valuesCountArray[0] = Array(repeating: 1000000, count: read+1)
//valuesCountArray[0][0] = 0
//var str = ""
//var counter1 = 0
//
//for i in 0..<read {
//    let read1 = Int(readLine()!)!
//    if count != 0 {
//        if read1 > 100 {
//            for j in 0...count+1 {
//                if j == 0 {
//                    valuesCountArray[i+1][j] = valuesCountArray[i][j+1]
//                }
//                if j > 0 && j < read{
//                    if valuesCountArray[i][j-1] + read1 > valuesCountArray[i][j+1] {
//                        valuesCountArray[i+1][j] = valuesCountArray[i][j+1]
//                        test[i+1][j] = i
//
//                    } else {
//                        valuesCountArray[i+1][j] = valuesCountArray[i][j-1] + read1
//                    }
//                }
//            }
//            if i != read-1 {
//                count += 1
//            }
//        } else {
//            for j in 0...count {
//                if j == 0 {
//                    valuesCountArray[i+1][j] = min(valuesCountArray[i][1], valuesCountArray[i][j] + read1)
//
//                }
//                if j > 0 && j < read{
//                    if valuesCountArray[i][j+1] + read1 > valuesCountArray[i][j] {
//                        valuesCountArray[i+1][j] = valuesCountArray[i][j]
//                        test[i+1][j] = i
//                    } else {
//                        valuesCountArray[i+1][j] = valuesCountArray[i][j+1] + read1
//                    }
//                }
//            }
//        }
//    } else {
//        if read1 > 100 {
//            count += 1
//            if read == 1 {
//                counter1 = 1
//            }
//            valuesCountArray[i+1][count] = valuesCountArray[i][count-1] + read1
//        } else {
//            valuesCountArray[i+1][0] = valuesCountArray[i][0] + read1
//        }
//    }
//}
//var totalMin = valuesCountArray[read].min()!
//var pos = 0
//
//var boolik = false
//for (j,i) in valuesCountArray[read].enumerated() {
//    if i > totalMin && boolik {
//        pos = j-1
//        break
//    }
//    if i == totalMin {
//        boolik = true
//    }
//    if i == totalMin && j == read {
//        pos = j
//    }
//
//
//}
//print(totalMin)
//var localPos = pos
//if read > 1 {
//    for i in 1..<valuesCountArray.count {
//        if counter1 > ((count / 2) == 0 ? 1 : count / 2 ){
//            break
//        }
//        if valuesCountArray[read-i][localPos+1] == valuesCountArray[read-i+1].min()! {
//            str = "\(read-i+1) \n" + str
//            counter1 += 1
//
//
//        }
//
//    }
//}

//print(totalMin)
//if counter1 == 0 {
//    counter1 = 1
//}
//print(pos, counter1 - 1 + pos)
//
//if str != "" {
//    str.removeLast()
//    print(str)
//}


//6
//101
//201
//101
//201
//101
//300
//
//5
//35
//40
//101
//59
//63


//3
//101
//102
//103

//1
//101 ok

//1
//4 ok

//4
//5
//101
//4
//130


//1
//var read = Int(readLine()!)!
//var ar: [(String, Int)] = []
//var dictOfValue: [String: Int] = [:]
//for _ in 0..<read {
//    let read1 =  readLine()!.split(separator: " ")
//    if read1[0] == "add" {
//        ar.append((String(read1[2]), Int(read1[1])!))
//        if dictOfValue[String(read1[2])] != nil {
//            dictOfValue[String(read1[2])]! += Int(read1[1])!
//        } else {
//            dictOfValue[String(read1[2])] = Int(read1[1])!
//        }
//    }
//    if read1[0] == "get" {
//        if dictOfValue[String(read1[1])] != nil {
//            print(dictOfValue[String(read1[1])]!)
//        } else {
//            print(0)
//        }
//
//    }
//    if read1[0] == "delete" {
//        var value = Int(read1[1])!
//        while value != 0 {
//            if value >= ar.last!.1 {
//                value = value - ar[ar.count-1].1
//                dictOfValue[ar[ar.count-1].0]! -= ar[ar.count-1].1
//                ar.removeLast()
//            } else {
//                dictOfValue[ar[ar.count-1].0]! -= value
//                ar[ar.count-1].1 -= value
//                value = 0
//            }
//        }
//    }
//}

// 3
//var read = Int(readLine()!)!
//var arr1: [Int] = []
//var arr2: [Int] = []
//var max1 = 0
//var max2 = 0
//var totalArr: [[(Int, Int)]] = []
//totalArr.append([])
//totalArr.append([])
//for _ in 0..<read {
//    let read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr1.append(read2[0])
//    arr2.append(read2[1])
//    max1 += read2[0]
//    max2 += read2[1]
//    totalArr[1].append((0,max1))
//    totalArr.append([(max2, 0)])
//
//}
//print(totalArr)
//for i in 0..<read {
//    for j in 0..<read {
//        if j == 0 {
//            totalArr.append(<#T##newElement: [(Int, Int)]##[(Int, Int)]#>)
//        }
//    }
//}
//print(totalArr)

//
//for i in 0..<read {
//    if i == 0 {
//        readLine()!.split(separator: " ").compactMap({Int($0)}).reduce(0) { a, b in
//            array[0].append(a+b)
//            return a + b
//        }
//    } else {
//        array.append([])
//        var red2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//        for j in 0..<red2.count {
//            if j == 0 {
//                array[i].append(red2[j] + array[i-1][j])
//            } else {
//                array[i].append( red2[j] + min(array[i-1][j], array[i][j-1]))
//            }
//        }
//    }
//}
//print(array[array.count - 1][array[array.count - 1].count - 1])
//2

//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//
//
//for i in 0..<read[0] {
//    var read1 = readLine()!.split(separator: " ").compactMap({Int($0)})
//
//}

// Tinkoff algorithms
//1 задание OK
//var str = readLine()!.split(separator: " ").compactMap({Int($0)})
//var first = false
//var second = false
//var a = str.first!
//for (j,i) in str.enumerated() {
//    if j > 0 {
//        if i > a {
//            first = true
//        }
//        if i < a {
//            second = true
//        }
//    }
//    a = i
//}
//if first != second || (second == false && first == false){
//    print("YES")
//} else {
//    print("NO")
//}
//
//2 задание OK
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//let totalTime = read[0] * read[2]
//if totalTime % read[1] < 1 {
//    print(totalTime/read[1])
//} else {
//    print((totalTime/read[1]) + 1)
//}
// 3 2 2 - 3
// 7 3 2 - 5
// 2 3 3 - 3
// 4 3 2 - 3


//3 задание OK
////import Foundation
//var read1 = readLine()
//var read = readLine()!
//var aPos = -100
//var bPos = -100
//var cPos = -100
//var dPos = -100
//var minValue = 1000000
//for (j,i) in read.enumerated() {
//    switch i {
//    case "a" : aPos = j
//    case "b" : bPos = j
//    case "c" : cPos = j
//    case "d" : dPos = j
//    default: break
//    }
//    if aPos != -100 && bPos != -100 && cPos != -100 && dPos != -100 {
//        var maxPos = max(aPos, max(bPos, max(cPos, dPos)))
//        var minPos = min(aPos, min(bPos, min(cPos, dPos)))
//        minValue = min(minValue, (maxPos - minPos + 1))
//    }
//}
//if minValue == 1000000 {
//    print(-1)
//} else {
//    print(minValue)
//}
////var b = CFAbsoluteTimeGetCurrent()
////print(b-a)


//4 задание
//3 3 3 1
//4 4 4 1
//5 5 5 1
//6 6 6 1
//var read1 = Int(readLine()!)!
//var valueDict: [Int: Int] = [:]
//var countDict: [Int: Set<Int>] = [:]
//let read = readLine()!.split(separator: " ").compactMap({Int($0)})
//read.forEach({
//    if valueDict[$0] == nil {
//        valueDict[$0] = 1
//    } else {
//        valueDict[$0]! += 1
//    }
//})
//for i in valueDict {
//    if countDict[i.value] == nil {
//        countDict[i.value] = [i.key]
//    } else {
//        countDict[i.value]!.insert(i.key)
//    }
//}
//found: for i in read.reversed() {
//    if countDict.count == 2 {
//        let a = countDict.keys
//        let max = a.max()!
//        let min = a.min()!
//        if countDict[max]!.count == 1 || countDict[min]!.count == 1 {
//            print(read1)
//            break found
//        }
//    }
//    if countDict.count == 1 {
//        print(read1)
//        break found
//    }
//    let value = valueDict[i]!
//    countDict[value]!.remove(i)
//    if countDict[value]!.count == 0 {
//        countDict[value] = nil
//    }
//    valueDict[i]! -= 1
//    if valueDict[i]! != 0 {
//        if countDict[value-1] == nil {
//            countDict[value-1] = [i]
//        } else {
//            countDict[value-1]!.insert(i)
//        }
//    } else {
//        valueDict[i] = nil
//    }
//    read1 -= 1
//}
// 13
//1 2 3 1 2 2 3 3 3 1 4 4 5 ok
//5
//1 2 3 4 5 ok
//10
//1 2 4 2 3 1 3 9 15 23 ok

// записывать в словарь повторки
//5 задание OK
//(длинна правой части + 1) * (длинна левой части до второго элемента последнего разумного +1)
// print("кукарача", j, currentPos, lastPos - currentPos + 1)
//var read1 = readLine()
//var read = readLine()!.split(separator: " ").compactMap({Int($0)})
//var count = read.count
//var total = 0
//var pos = 0
//var sum = 0
//var lastPos = 0
//for (j,i) in read.enumerated() {
//    var currentPos = pos
//    for b in 0..<j-pos {
//        for g in currentPos...j {
//            sum += read[g]
//        }
//        if sum == 0 {
//            total += (read.count - j) * (currentPos - lastPos + 1)
//            pos = currentPos + 1
//            lastPos = currentPos + 1
//        }
//        sum = 0
//        currentPos += 1
//    }
//}
//print(total)

// ШМР 2023 ==========================================================================================================
// Яндекс   ==========================================================================================================

//1
//var first = readLine()!.split(separator: " ").compactMap({Int($0)})
//first = first.sorted()
//print(first[1])

//2 возможно проблема с чтением? бред, не работает из-за условий говна
//var read = Int(readLine()!)!
//var dict: [Int: Bool] = [:]
//var counter = 0.0
//var counterCrash = 0.0
//for _ in 0..<read {
//    var read1 = readLine()!
//    var read2 = Int(readLine()!)!
//    if read1 == "APPLICATION_FINISHED_LAUNCHING" {
//        counter += 1.0
//        if dict[read2] != nil {
//            if dict[read2] == true {
//                counterCrash += 1.0
//            }
//        }
//        dict[read2] = true
//    } else if read1 == "APPLICATION_TERMINATED" {
//        dict[read2] = false
//    }
//
//}
//for i in dict {
//    if i.value == true {
//        counterCrash += 1.0
//
//    }
//}
//print(counterCrash/(counter/100.0))

//2 тест
//let read = Int(readLine()!)!
//var counter1 = 0
//var counter2 = 0
//for _ in 0..<read {
//    let read1 = readLine()!
//    let _ = readLine()
//    if read1 == "APPLICATION_FINISHED_LAUNCHING" {
//        counter1 += 1
//    }
//    if read1 == "APPLICATION_TERMINATED" {
//        counter2 += 1
//    }
//}
//print((Double(counter1-counter2))/(Double(counter1)/100.0))

//3 тест Вроде норм
//var read1 = Int(readLine()!)!
//var read2 = Int(readLine()!)!
//var read3 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var total = 0
//var total1 = 0
//for (j, i) in read3.enumerated() {
//    total1 += (j+2) * i
//    total += (j+1) * i
//}
//
//var max = read1 + total1
////print(total, total1, max)
//for (j, i) in read3.enumerated(){
//    if (total1 - i) + ((j+2) * read1) > max {
//        max = (total1 - i) + (j+2) * read1
//    }
//    total1 -= i
//}
//print(max - total)

//3 Надо удалить, неправильно
//var read1 = Double(readLine()!)!
//var read2 = Double(readLine()!)!
//var total = 0.0
//var total2 = 0.0
//var sum = 0.0
//var read3 = readLine()!.split(separator: " ").compactMap({Double($0)})
//for (j, i) in read3.enumerated() {
//    total += Double(j+1) * i
//    sum += i
//}
//var midle: Double = sum / read2
//if midle <= read1 {
//    var b = 2
//    var bool = true
//    for (j,i) in read3.reversed().enumerated() {
//        if i <= read1 && bool {
//            bool = false
//            print(Double((read3.count-1 - j)+b) * read1, "кукарача")
//            total2 += Double((read3.count-1 - j)+b) * read1
//            b -= 1
//        }
//        total2 += Double((read3.count-1 - j)+b) * i
//        print(Double((read3.count-1 - j)+b) * i)
//
//    } // тоже самое ток реверснутое что и после else
//    print(total2)
//    print(Int(total2 - total), "ответ 1")
//} else { // else всегда правильно отрабатывает
//    var b = 1
//    var bool = true
//    for (j,i) in read3.enumerated() {
//        if i >= read1 && bool {
//            bool = false
//            total2 += Double(j+b) * read1
//            b += 1
//        }
//        total2 += Double(j+b) * i
//
//    }
//        print(Int(total2 - total), "ответ 2")
//}
//print((1+2+3+4+125+6+35)-total, (1+2+3+4+25+150+7)-total) //1 1 1 1 25 1
//print((6+2+3+4+100+6+35)-total, (6+2+3+4+25+120+7)-total, (5+12+3+4+5+120+7)-total) //6 1 1 1 20 1


//5
//var read1 = readLine()
//var read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var read3 = readLine()!.split(separator: " ").compactMap({Int($0)})
//func findEqualSubarrays(a: [Int], b: [Int]) -> Int {
//    let n = a.count, m = b.count
//    // Вычисляем префиксные суммы
//    var sumA: [Int] = [0]
//    for (j,i) in a.enumerated() {
//        sumA.append(sumA[j]+i)
//    }
//    //print(sumA, sumA.count)
//    var sumB: [Int] = [0]
//    var max = 0
//    for (j,i) in b.enumerated() {
//        sumB.append(sumB[j]+i)
//    }
//    //print(sumB, sumB.count)
//    if sumB.last! == sumA.last! {
//        return a.count - 1
//    }
//    // создаем словарь
//    var dict: [Int: Int] = [:]
//    // считаем разность префиксных сумм по индексу и добавляем в словарь. Если такая сумма уже есть в словаре, считаем разность старого значения с новым, и если оно больше max то записываем его в max
//    for i in 1...a.count {
//        if dict[sumA[i]-sumB[i]] != nil {
//            if i - dict[sumA[i]-sumB[i]]! > max {
//                max = i - dict[sumA[i]-sumB[i]]!
//                //print(dict[sumA[i]-sumB[i]]!)
//                //print(max, "rerfhfxf")
//            }
//        } else {
//            // если префиксные суммы равны, значит отрезком будет 0..i, и больше его на данный момент быть не может
//            if sumA[i]-sumB[i] == 0 {
//                max = i
//                //print(max, "кукарача")
//            } else {
//                dict[sumA[i]-sumB[i]] = i
//            }
//        }
//    }
//   // print(dict)
//    return max-1
//}
//print(findEqualSubarrays(a: read2, b: read3))
//
//// Пример использования
////let a = [1, 2, 3, 4, 6, 4, 2], b = [5, 3, 2, 4, 0, 0, 4] // 2
////let a = [2, 3], b = [3, 2] //1
////let a = [10], b = [2] -1
////let a = [1,0,0,0,0,0,-2,-2,5], b = [-1,-2,2,0,0,0,0,6,7] // 6
////let a = [-10, 10, 100, 100, 12], b = [12, 50, 100, 12, 100] // 2
////let a = [5,100, 2, 3, 4, 6], b = [12, 1, 3, 2, 103, 8] // 3
////let a = [0, 1, 2, 1, 3, 2, 0], b = [1, 2, 2, 1, 2, 2, 2] // 4
////let a = [1, 2, 10, 3, 0, 0, 5], b = [0, 2, 8, 1, 1, 1, 6] //  2
////let a = [1, 2, 3], b = [-1, 2, 8] // 0
////let a = [ -1, -2, -3], b = [-1, -2, -8] // 1
//let a = [100, 2, 3, 1, 0, 0, 0, -1, 0, 0, 4], b = [10, 1, 2, 3, 0, 0, 0, -2, 0, 0, 3] //7
//print(findEqualSubarrays(a: a, b: b))

//4 хз, странная задача, но решенная
//var read1 = readLine()
//var read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var numberArr: [[Int]] = []
//var arr: [Int] = []
//var counter = 0
//for i in read2 {
//    if i != 1 {
//        arr.append(i)
//    } else {
//        numberArr.append(arr)
//        arr = []
//    }
//}
//if arr.count > 0 {
//    numberArr.append(arr)
//}
//if Set(read2) == [1] {
//    var b = read2.count
//    while b > 0 {
//        counter += b
//        b -= 1
//    }
//} else {
//    for i in numberArr {
//        var b = i.count
//        while b > 0 {
//            counter+=b
//            b -= 1
//        }
//    }
//}
//print(counter)


//          ==========================================================================================================
//          ==========================================================================================================

//struct Player {
//    let name: String
//    var level: Int
//}
//extension Player {
//    mutating func increaseLevel() {
//        self.level += 1
//    }
//}
//var player = Player(name: "Kirito", level: 96)
//var player1 = Player(name: "Boba", level: 5)
//print(player.level)
//print(player1.level)
//player.increaseLevel()
//player1.increaseLevel()
//print(player.level)
//print(player1.level)

//class Player {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//struct PlayerQueue {
//    var players: [Player]
//    init(players: [Player]) {
//        self.players = players
//    }
//}
//extension Array where Element == Player {
//    var allPlayersName: String {
//        return reduce("") {"\($0) \($1.name )"}
//        }
//}
//
// let queue = PlayerQueue(
//    players: [
//        Player (name: "A"),
//        Player (name: "B"),
//        Player (name: "C" )
//    ]
//)
//
//var copy = queue
//for i in [copy, queue] { i.players.forEach({ character in if character.name == "C"  {i.players.last!.name = "D"} else if character.name == "D" {copy.players.removeLast()}})}
//print (queue.players.allPlayersName ) // A B D
//print(copy.players.allPlayersName) // A B

//queue.players.last!.name = "D"
//copy.players.removeLast()


//ШМР 2023

//var read1 = Int(readLine()!)!
//var read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var read3 = Int(readLine()!)!
//var arr: [(value: Int, count: Int)] = []
//for _ in 0..<read3 {
//    let read4 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    arr.append((read4[0], read4[1]))
//}
//arr = arr.sorted(by: { first, second in
//    first.value < second.value
//})
////print(arr, read2.sorted(by: >))
//var bool = true
//test: for i in read2.sorted(by: >) {
//    if arr.count > 0 {
//        if i > arr[arr.count-1].value {
//            print("NO")
//            bool = false
//            break test
//        } else {
//            if arr[arr.count-1].count > 1 {
//                arr[arr.count-1].count -= 1
//            } else {
//                arr.removeLast()
//            }
//        }
//    } else {
//        bool = false
//        print("NO")
//    }
//}
//if bool {
//    print("YES")
//}

//2


//var read2 = readLine()!.split(separator: " ").compactMap({Int($0)})
//var dict: [Int : Set<Int>] = [:]
//var setik: Set<Int> = []
//for _ in 0..<read2[1] {
//    let read4 = readLine()!.split(separator: " ").compactMap({Int($0)})
//    if read4[0] != read4[1] {
//        if dict[read4[1]] != nil {
//            dict[read4[1]]!.insert(read4[0])
//        } else {
//            dict[read4[1]] = [read4[0]]
//        }
//        setik.insert(read4[0])
//    }
//}
//
//var total = -1
//for i in dict {
//        if i.value.count == read2[0]-1 && !setik.contains(i.key) {
//            total = i.key
//        }
//}
//print(total)
//

