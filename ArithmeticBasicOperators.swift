#!/usr/bin/swift
let One: Int8 = 1
let One_Thousand_One = UInt16(-(-2_002 + Int32(One)))
print (type(of: One_Thousand_One), One_Thousand_One)

let string: String = String(UInt8.max)
//print ("UInt8.max", string)

let tuple1 = (UInt16:200,String:"Found", "some info")
let (code, msg, _) = tuple1
//print ("tuple1", tuple1, "\n let (code, msg) = tuple1 => [", "code:", code,"|", "msg:", msg, "]")

let defaultValue: String? = "#fff"
var userDefinedValue: String?
userDefinedValue = "#f0e"
var color = defaultValue ?? userDefinedValue
let someUndef: Int? //optional value: either Int or nil
// print("\""+color!+" concat val\"")

var arr = ["Jack", "Jill", "Mark", "Bill", "Tim"]

for i in 0...arr.count-1{
	print ("\(arr[i])")
}

func ceil(_ a: Double) -> Int {
	let result = (a>Double(Int(a))) ? Int(a+1) : Int(a);
	return result
}
func floor(_ a: Double) -> Int {
	let result = (a<(Double(Int(a))+1)) ? Int(a) : Int(a+1);
	return result
}
func round(_ a: Double) -> Int {
	let result = (a<(Double(Int(a))+0.5)) ? Int(a) : Int(a+1);
	return result
}
print (" ceil(2.1) =",ceil(2.1),"\nfloor(2.1) =",floor(2.1),"\nround(2.5) =",round(2.5))

// Array iteration
for i in 0..<ceil(Double(arr.count)/2){
	print ("Person \(i) is \(arr[i]) and Person \(arr.count-i-1) is \(arr[arr.count-i-1])")
}


func swapValues(_ a:inout String, _ b:inout String) {
	let temp = a
	a = b
	b = temp
}
var a = "abc", b = "def";
swapValues(&a, &b)
//print(["swapValues",a, b])
