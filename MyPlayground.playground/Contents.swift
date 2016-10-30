//: Playground - noun: a place where people can play

import UIKit

// Enum implementation
enum RelationType {
    case Friend
    case Family
    case CoWorker
    case Other
    
    init(){ // With default initialization
        self = Friend
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

