import UIKit

// MARK: - Task 1 - Classes + Initialization
// 1. Создайте 3 любых класса и реализуйте в них инициализаторы разного типа



// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.

//1
struct Student {
    let firstName: String
    let lastName: String
    let birthDate: String
    var averageRate: Float
}

let Vasya = Student(firstName: "Vasiliy", lastName: "Vasilyev", birthDate: "03.03.1998", averageRate: 6.7)
let Petya = Student(firstName: "Pyotr", lastName: "Petrov", birthDate: "24.06.1998", averageRate: 7)
let Sasha = Student(firstName: "Aleksandr", lastName: "Alexandrov", birthDate: "05.11.1998", averageRate: 8.8)

var journal: [Student] = [Vasya, Petya, Sasha]
//2
func printSudents (studJournal: [Student]) {
    for (index, student) in studJournal.enumerated() {
        print("\(index+1). \(student.lastName) \(student.firstName) \(student.birthDate)г.р. Средний балл - \(student.averageRate)")
    }
}
printSudents(studJournal: journal)
//3
journal.sort(by: {$0.averageRate > $1.averageRate})
for student in journal {
    print(student)
}
//4
journal.sort(by: {$0.lastName < $1.lastName})
for student in journal {
    print(student)
}
//5
// не изменится, т.к. массив - тип ссылочный, а структуры - тип значений, переприсвоение создает копию в памяти и это два разных экземпляра


// MARK: - Task 3 - Classes
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте класс Студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
class StudentButClass {
    var firstName, lastName, birthDate: String
    var averageRate: Float
    init(firstName: String, lastName: String, birthDate: String, averageRate: Float) {
            self.firstName   = firstName
            self.lastName = lastName
            self.birthDate  = birthDate
            self.averageRate = averageRate
        }
}

let againVasya = StudentButClass(firstName: "Vasiliy", lastName: "Vasilyev", birthDate: "03.03.1998", averageRate: 6.7)
let againPetya = StudentButClass(firstName: "Pyotr", lastName: "Petrov", birthDate: "24.06.1998", averageRate: 7)
let againSasha = StudentButClass(firstName: "Aleksandr", lastName: "Alexandrov", birthDate: "05.11.1998", averageRate: 8.8)

var journalButClass: [StudentButClass] = [againVasya, againPetya, againSasha]
//2
func printSudentsClass (studJournal: [StudentButClass]) {
    for (index, student) in studJournal.enumerated() {
        print("\(index+1). \(student.lastName) \(student.firstName) \(student.birthDate)г.р. Средний балл - \(student.averageRate)")
    }
}
printSudentsClass(studJournal: journalButClass)
//3
journalButClass.sort(by: {$0.averageRate > $1.averageRate})
for student in journalButClass {
    print("\(student.lastName) \(student.firstName)")
}
//4
journalButClass.sort(by: {$0.lastName < $1.lastName})
for student in journalButClass {
    print("\(student.lastName) \(student.firstName)")
}
//5
// изменится, т.к. classes - тип ссылочный, переприсвоение создает еще одно "имя" в памяти для того же экземпляра


// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?

// отвечено ранее)

// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?

// разница типа данных и вытекающиъ свойств. Структуры лучше для оптимизации т.к. валяются в стеке, их проще контролировать на изменение из-за этого, но у классов есть три столпа ООП), поэтому классы - более гибкая штука. Считаю, что где можно обойтись структурами, надо использовать их, классы подключать тогда, когда без них не обойтись


// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)
struct Birthday {
    var day: Int
    var month: Int
    var year: Int
    init(day: Int, month: Int, year: Int) {
        self.day = 0
        self.month = 0
        self.year = 0
    }
}

class NewStudent: StudentButClass{
    var dateOfBirth: Birthday
    var age: Int {
        let current = Calendar.current.dateComponents([.year], from: Date())
        return current.year ?? 2021 - self.dateOfBirth.year
    }
    var studyYears: Int {
        let study = self.age - 6
        if (study < 0){
            return 0
        }else{
            return study
        }
    }
    init(){
        self.dateOfBirth = Birthday(day: 24, month: 05, year: 1997)
        super.init(firstName: "a", lastName: "A", birthDate: "05.11.2001", averageRate: 6.2)
    }
}


// MARK: - Task 5 - Properties
// 1. Создайте класс Человек, который будет содержать имя, фамилию, возраст, рост и вес.
// 2. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
// - минимальный и максимальный возраст каждого объекта
// - минимальную и максимальную длину имени и фамилии
// - минимально возможный рост и вес
// - создайте свойство, которое будет содержать количество созданных объектов этого класса

class Huuuuman {
    var firstName: String {
        willSet(fName) {
            let minRange: Int = 3
            let maxRange: Int = 20
            let nameRange = fName.count
            if (nameRange < minRange || nameRange > maxRange) {
                print("Invalid range")
            }
        }
    }
    var lastName: String {
        willSet(lName) {
            let minRange: Int = 3
            let maxRange: Int = 20
            let nameRange = lName.count
            if (nameRange < minRange || nameRange > maxRange) {
                print("Invalid range")
            }
        }
    }
    var age: Int {
        willSet(age) {
            let minRange: Int = 7
            let maxRange: Int = 60
            if (age < minRange || age > maxRange) {
                print("Invalid Range")
            }
        }
    }
    var weight: Float {
        willSet(weight) {
            let minRange: Int = 50
            if (weight < Float(minRange)) {
                print("Invalid Range")
            }
        }
    }
    var height: Int {
        willSet(height) {
            let minRange: Int = 155
            if (height < minRange) {
                print("Invalid Range")
            }
        }
    }
    var counter: Int = 0
    
    init(firstName: String, lastName: String, age: Int, weight: Float, height: Int) {
        self.counter += 1
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.weight = weight
        self.height = height
    }
}



// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

class Cat {
    var hasTail: Bool
    var weight: Float
    var species: String
    var isWild: Bool
    private let meowVoice: String = "MEOOOOW!!!"
    init(species: String, hasTail: Bool, weight: Float, isWild: Bool) {
        self.species = species
        self.hasTail = hasTail
        self.weight = weight
        self.isWild = isWild
    }
}

class foxyCat: Cat{
    static let color: String = "foxy"
    static let sex: Character = "M"
    var size: String
    private var catName: String{
        return "Lucky"
    }
    init (size: String) {
        self.size = size
        super.init(species: "cat", hasTail: true, weight: 3.4, isWild: false)
    }
}
class blackKittty: Cat{
    static let color: String = "black"
    static let sex: Character = "F"
    var size: String
    private var catName: String{
        return "Missy"
    }
    init (size: String) {
        self.size = size
        super.init(species: "cat", hasTail: true, weight: 2.8, isWild: false)
    }
}



// MARK: - Task 7 - Overriding
// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет

class Figure {
    var description: String{
        return "I'm a figure"
    }
    var color: String // можно было и через перезапись, как и дескрипшн
    func calcSquare () {
        print("Square is big!")
    }
    init(color: String){
        self.color = color
    }
}
class Circle: Figure{
    var R: Float
    override func calcSquare() {
        return print("Square of \(String(describing: self)) is \(R*R*3.14)")
    }
    override var description: String {
        return "I'm a Circle"
    }
    init(radius: Float){
        R = radius
        super.init(color: "red")
    }
}
class Square: Figure{
    var a: Float
    override func calcSquare() {
        return print("Square of \(String(describing: self)) is \(a*a)")
    }
    override var description: String {
        return "I'm a Square"
    }
    init(side: Float){
        a = side
        super.init(color: "green")
    }
}
class Triangle: Figure{
    var a: Double
    var b: Double
    var c: Double
    override func calcSquare() {
        let p: Double = (a+b+c)/2
        let S: Double = sqrt(p*(p-a)*(p-b)*(p-c))
        return print("Square of \(String(describing: self)) is \(S)")
    }
    override var description: String {
        return "I'm a Triangle"
    }
    init(a: Double, b: Double, c: Double){
        self.a = a
        self.b = b
        self.c = c
        super.init(color: "red")

    }
}
class Trapez: Figure{
    var a: Double
    var b: Double
    var h: Double
    override func calcSquare() {
        return print("Square of \(String(describing: self)) is \((a + b)/2*h)")
    }
    override var description: String {
        return "I'm a Trapez"
    }
    init(a: Double, b: Double, h: Double){
        self.a = a
        self.b = b
        self.h = h
        super.init(color: "green")
    }
}
class Rhombus: Figure{
    var a: Float
    var h: Float
    override func calcSquare() {
        return print("Square of \(String(describing: self)) is \(a*h)")
    }
    override var description: String {
        return "I'm a Rhombus"
    }
    init(side: Float, height: Float){
        a = side
        h = height
        super.init(color: "red")

    }
}


// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."

extension Int {
    var isNegative: Bool {
        if (self<0) {
            return true
        } else {
            return false
        }
    }
    var isPositive: Bool {
        if (self>=0) {
            return true
        } else {
            return false
        }
    }
    var lenth: Int {
        return String(self).count
    }
}

extension String {
    func trimText(n: Int) -> String {
        return String(self.prefix(self.count-n))
    }
    func truncate(length: Int) -> String{
        return String(self.prefix(length-1)+"...")
    }
}



// MARK: - Task 9 - Inheritance + Protocol
// 1. Создайте базовый класс «Артист», у которого должны быть:

/// `Свойства`
// - имя (структура) - разрешить только чтение
// - возраст - сделать проверку на положительное значение
// - страна работы (Беларусь, Россия, Украина, другое (enum associated value))
// - стаж работы
// - зарплата в неделю - артист может отказаться её озвучивать
// - зарплата за день - вычисляется на основе зарплаты в неделю после того, как было установлено новое значение
// - сколько процентов своей жизни работал артистом - computed property

/// `Инициализаторы`
// 2 разных инициализатора (имя в каждом инициализаторе - обязательно)

/// `Методы`
// статический метод, возвращающий возможные страны проживания артиста. сделать недоступным к переопределению
// статический метод, выводящий информацию о названии класса в консоль
// метод с информацией об артисте - выводит все свойства в читаемом виде. недоступен к переопределению
// метод «выступить», выводящий информацию об артисте, в каком жанре выступает и что показывает

// Создать классы «Музыкант», «Художник», «Танцор», наследующиеся от артиста.
// В каждом классе переопределить метод с информацией о классе.
// - Танцор отказывается выступать, если его зарплата за день меньше 100, о чем сообщает в консоли.
// - Художник не хочет использовать своё родное имя, заменяя его на сценическое, которое состоит из перемешанных букв родного имени.
// - Музыканты не хотят работать в Турции, уезжая в любую другую страну из списка доступных, а также у них появляется новый параметр - любимый инструмент.

// Создать по два экземпляра каждого класса (в том числе родителя) с различными данными, положив их в массив типа Артист.
// Пройтись по массиву и вызвать у каждого элемента метод выступить. Если в списке попался Танцор, то вывести его зарплату за день, если Музыкант, то отобразить любимый инструмент.

// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.

struct ArtistName {
    let firstName: String
    let secondName: String
    let lastName: String
    init(fName: String, sName: String, lName: String) {
        firstName = fName
        secondName = sName
        lastName = lName
    }
}

enum Country: CaseIterable {
    case BLR, RUS, UKR, ETC
}

class Artist {
    /* props */
    var fullName: ArtistName
    
    var liveCountry: Country
    
    var age: Int
    
    var exp: Int
    var weekSalary: Float?
    var daySalary: Float {
        return weekSalary! / Float(7)
    }
    var percentOfWork: Float {
        return Float(age * 100) / Float(exp)
    }
    
    /* inits */
    
    init (fullName: ArtistName, liveCountry: Country, age: Int, exp: Int, weekSalary: Float) {
        self.fullName = fullName
        if (age > 0) {
            self.age = age
        }else{
            self.age = 0
        }
        self.liveCountry = liveCountry
        self.exp = exp
        self.weekSalary = weekSalary
    }
    
    init (fullName: ArtistName, age: Int, weekSalary: Float) {
        self.fullName = fullName
        if (age > 0) {
            self.age = age
        }else{
            self.age = 0
        }
        self.liveCountry = .BLR
        self.exp = 0
        self.weekSalary = weekSalary
    }
    
    /* methods */
    static func returnLiveCountry() -> [Country]{
        var countries: [Country] = []
        Country.allCases.forEach {
            countries.append($0)
        }
        return countries
    }
    static func getClassName () -> String{
        return String(describing: self)
    }
    
    final func getInfo () -> String {
        return "Имя артиста: \(self.fullName.firstName) \(self.fullName.secondName) \(self.fullName.lastName)\n Возраст: \(self.age)\n Страна жительства:\(self.liveCountry)\n Опыт: \(self.exp)\n Зарплата в день: \(self.daySalary)\n"
    }
    
    func perform (genre: String, show: String) -> String { // описать словом жанр и что показать (фокус, танец, песня)
        let artistInfo = getInfo()
        return "Информация(\(artistInfo)). Артист выступает в жанре: \(genre), показанный номер: \(show)"
    }
}

class Musician: Artist {
    
}
class Painter: Artist {
    
}
class Dancer: Artist {
    override func perform(genre: String, show: String) -> String{
        if (self.daySalary < 100) {
            return "Танцор отказался выступать из-за низкой оплаты"
        }else{
            return "Танцор \(fullName) исполнил чудесный \(show), потому что ваша щедрость не знает границ"
        }
    }
}

protocol BusinessTrip {
    var tripCountry: String {get set}
    var duration: Int {get set} //number of days
    func startTrip() -> String
    func endTrip()
    func expressIndignation()
}
extension Artist: PayableBusinessTrip {
    var salaryInBusinessTrip: Float {
        return Float(duration) * daySalary * salaryCoefficient
    }
    
    var salaryCoefficient: Float {
        if (exp < 3) {
            return 1
        }else{
            if ((3...5).contains(exp)) {
                return 1.5
            }else{
                return 2
            }
        }
    }
    
    var tripCountry: String {
        get {
            return self.tripCountry
        }
        set (newTripCntry){
            self.tripCountry = newTripCntry
        }
    }
    
    var duration: Int {
        get {
            return self.duration
        }
        set (newDuration){
            self.duration = newDuration
        }
    }
    
    func startTrip() -> String {
        return "Страна гастролей: \(self.tripCountry), продолжительность гастролей: \(self.duration)"
    }
    func endTrip() {
        
    }
    
    func expressIndignation() {

    }
    
}
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.
extension Painter {
    override func expressIndignation() {
        print("Oh, this sh*t again")
    }
}

protocol PayableBusinessTrip: BusinessTrip {
    var salaryInBusinessTrip: Float {get}
    var salaryCoefficient: Float {get}
}

