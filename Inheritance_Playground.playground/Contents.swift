import UIKit

class Employee{
    var name=""
    var salary = 0
    var role=""
    
    func doWork(){
        print("Hi my name is \(name)")
        salary+=1
    }
}

class Manager:Employee {
    
    override func doWork() {
        
        super.doWork() //this will also run the doWork on the EMployee
        print("I am a Manager")
        salary += 2
    }
    

    
    
    
}

var m = Manager()

m.name = "shivi"
m.role = "Professor"
m.doWork()

//ARRAY - Collection type
    
    var a = "dog"
    var b = "cat"
    var c = "bird"
    
   var myArray = ["dog","cat","bird"]
    
    print(myArray[1])

for counter in 0...myArray.count-1 {
    myArray[counter] = "My" + myArray[counter]
    print(myArray[counter])
}

var myArray2:[String] = ["aa","bb"]

var emptyArray:[String] = [] //way to declare an empty array
var emptyArray1 = [String]() //Another way

//add item in array

myArray.insert("shark", at: 0)

//anothe way to add
myArray += ["monkey","cow"]

myArray.append("append animal") //will be added at the last

myArray.remove(at: 5) //delete a object in the list

for item in myArray {
    print(item)
}

//to find index of any element
myArray.firstIndex(of: "cow")
if let i = myArray.firstIndex(of: "shark")
{
myArray[i] = "replaced item"
}
print(myArray)

//COLLECTION TYPE - SET
//SET cannot have duplicates but had no index and UNORDERED

var players: Set<String> = ["ANdres","Part","Ryan","Ayush"]

players.insert("Part")//inserted false as set only accepts unique element
players.remove("Ayush") //removing elements
players.count

//To find if a set has a certain values or not
players.contains("ANdres")

print(players)


//OPErations on SETS

var mySet1:Set<Int> = [1,2,3]
var mySet2:Set<Int> = [7,8,9,3]

//union
let unionSets:Set<Int> = mySet1.union(mySet2)

print(unionSets)

//intersection
let intersectionSets:Set<Int> = mySet1.intersection(mySet2)
print(intersectionSets) // will copy the duplicate values

//substraction

let substractionSet:Set<Int> = mySet1.subtracting(mySet2)

print(substractionSet) //remove elements from mySet2 and also the duplicate



var numbers: [Int] = [1,2,3,4]

print(numbers)

var numbersSet: Set<Int> = [1,2,3,4,5]


print(numbersSet)

//COLLECTION TYPE - DICTIONARY (LIKE MAP WITH KEYS AND VALUES)

//var sDict1 = [Datatype of key : Datatype of value]() - how to declare a dictionary
//sDict1["key"] = "value" - how to add a value

var sDict1 = [String: String]() //empty dictionary
sDict1["Key1"] = "pogi"
sDict1["Key2"] = "pogi2"
print(sDict1)

print(sDict1["Key2"])

var sDict2:[Int:String] = [1:"One",2:"Two",3:"Three"] //Another way to declare with values

sDict2[4]="Four"
sDict2[4]="Fooor"

sDict2[4] = nil //Removing values

for(key,value) in sDict2 { //to loop dictionary

print(key)
    
    print(value)
}
print(sDict2)





