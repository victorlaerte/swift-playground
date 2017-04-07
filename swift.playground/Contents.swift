//: Playground - noun: a place where people can play

import UIKit

/* 
#############################################
Declarations with Implicit and Explicit Types
#############################################
*/
let str = "Hello, playground"
var name:String = "Victor"
var midName:String! // Optional Variable

let explicitDouble:Double = 50.5
let explicitInt:Int = 5
let explictiBoolean:Bool = true

func helloWorld(midName: String?) {
	
	print("\(str) \(name) \(midName!)") //String concat with \(str)
}

midName = "Laerte"
helloWorld(midName: midName)


/*
##################################################
Array, for and problemns with implicit declaration
##################################################
*/
var arrayExample = [explicitDouble, 100, 200, 300]
arrayExample.append(500)

//let arrayErro = []; NOT IMPLICIT TYPE CAN BE DETECTED, you can try: let arrayErro = Array<Double>()

print(arrayExample)

for i in 0...3 {
	print(arrayExample[i])
}

for i in 0...(arrayExample.count - 1) {
	print(arrayExample[i])
}

for example in arrayExample {
	print(example)
}

func sumArray(arrayToSum:Array<Double>) -> Double { // -> equals RETURN
	var sum:Double = 0 // or var sum = 0.0
	for s in arrayToSum {
		sum += s
	}
	
	return sum;
}

sumArray(arrayToSum: arrayExample)

var values:Array<Double> = [1,2]
var total:Double = 0 // THIS MUST TO BE EXPLICT TO RETURN 1.5
for v in values {
	total += v
}
print(total / Double(values.count))

/*
##################################################
Classes, Optional
##################################################
*/

class Person {
	let name:String
	var midName:String? // If midName:String! is used and the value is nil, execution fails like RunTimeException
	let lastName:String
	
	convenience init(name:String, lastName:String) { // If you want to add other initializers to delegate to the Designated one, they will be known as Convenience initializers
		
		self.init(name: name, midName: nil, lastName: lastName)
	}
	
	init(name:String, midName:String?, lastName:String) {
		
		self.name = name
		self.midName = midName
		self.lastName = lastName
	}
	
	func printFullName() {
		
		if let midName = self.midName {
			print("\(self.name) \(self.midName!) \(self.lastName)")
		} else {
			print("\(self.name) \(self.lastName)")
		}
	}
}

let person = Person(name:"Victor", lastName: "Oliveira")

person.printFullName()

person.midName = "Laerte"

person.printFullName()


//IBOutlet for connect elements
//IBAction for assign action. Button for example