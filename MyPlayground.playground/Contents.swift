//: Playground - noun: a place where people can play

import UIKit

// Enum implementation
enum RelationType {
    case Friend
    case Family
    case CoWorker
    case Other
    
    init(){ // With default initialization
        self = .Friend
    }
}
var relationType = RelationType()
print(relationType)
relationType = RelationType.Family
print(relationType)

enum AddressType { // Without default initialization
    case Home
    case Office
    case Other
}
let addressType = AddressType.Office
print(addressType)


// Struct implementation
struct Contact {
    var firstName: String
    var middleName: String?
    var lastName: String
    var type: RelationType
}
var contact = Contact(firstName: "Akash", middleName: nil, lastName: "Rastogi", type: RelationType.Friend)
print(contact)


// Optional variable
var optionalString:String?
if let value = optionalString
{
    print(value)
}
optionalString = "This is a optional variable"
if let value2 = optionalString
{
    print(value2)
}

var name:String? = "akash"
print(name)
print(name!)// unwrap optional value


// Functions
func sum(a:Int, b:Int) ->(Int)
{
    return a+b
}
let x:Int = 10
let y:Int = 20
let result = sum(a: x, b: y);
print("Sum of \(x) and \(y) is \(result)")

func getName(title:String) -> (title:String, first:String, last:String)
{
    return (title, "akash", "rastogi")
}
let employee = getName(title: "Mr");
print("Employee title is \(employee.title), first name is \(employee.first) and last name is \(employee.last)")

//Variadic functions
func printColours(colours: String...) ->()
{
    print("Printing colours-")
    for colour in colours{
        print(colour);
    }
}
printColours(colours: "Red","Green","Blue")


// Closures
func processString(input: String, completionhandler: (String) -> Void) ->()
{
    let output = "Input= " + input + "\nOutput= putput string"
    completionhandler(output)
}
processString(input: "input string") { (output) in
    print(output);
}
