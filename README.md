
# HName

  

All about name strings.

If you are like me and got tired of working with names like this
```swift
    let fullName = "testing abducio medina"
    var components = fullName.components(separatedBy: " ")
    if components.count > 0 {
     let firstName = components.removeFirst()
     let lastName = components.joined(separator: " ")
     debugPrint(firstName)
     debugPrint(lastName)
    } 

```

Then this small package is for you, because you can do it now like this
```swift
    let name: HName = "Hady Nourallah"
    debugPrint(name.firstName)    //Hady
    debugPrint(name.LastName)    //Nourallah

```

## Usage 

 - **Initialization**:
  

```swift
let name: HName = "Hady Nourallah" 
let name = "Hady Nourallah" as HName
let name = HName(stringLiteral: String)
```
For Objective-C: 
Unfortunately I still need to do some more work 
```objective-c
HName *name = [[HName alloc] initWithStringLiteral:@"Hady Nourallah"];
name.firstName; //Hady
```
 - **Supports Codables**
 
```swift
struct Person: Codable {
    let name: HName
    ...
}
```
 

- **Features**
```swift
    let name: HName = "Mr. Hady Nourallah Sr."
    //you can compare directly between HName and Strings
    print(name == "Mr. Hady Nourallah Sr.")    //true
    print (name.firstName!)                 //Hady
    print (name.lastName!)                     //Nourallah
    print (name.abbrivation!)                 //HN
    print (name.fullName!)                     //Hady Nourallah
    print (name.namePrefix!)                 //Mr.
    print(name.formatted(.default)!)         //Hady Nourallah
    print(name.formatted(.short)!)             //Hady
    print(name.formatted(.medium)!)         //Hady Nourallah
    print(name.formatted(.long)!)             //Mr. Hady Nourallah Sr.
```

