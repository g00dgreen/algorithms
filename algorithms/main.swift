//
//  main.swift
//  algorithms
//
//  Created by Артем Макар on 30.01.23.
//
//
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
