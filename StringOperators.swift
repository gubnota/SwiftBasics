#!/usr/bin/swift

/* trim chars */
// func trim(_ a: String) -> String {
// 	var out: String = ""
// 	let l = a.startIndex
// 	for i in 0..<a.count{
// 		let f = a.index(a.startIndex, offsetBy: i)
// }
// }
// print (trim(" a "))

/* reverse string */
func reverse(_ a: inout String) {
	// let l = a.startIndex
	var out: String = ""
	for i in 0..<a.count{
		let f = a.index(a.startIndex, offsetBy: a.count-i-1)
/*
Index(_rawBits: 1)
Index(_rawBits: 65793)
Index(_rawBits: 131329)
Index(_rawBits: 197377)
*/
out.append(a[f])
	}
a = out;
//	return a;
}
// var str = "Cafe\u{0301}";
print ("Please, enter a string and hit Enter")
if let str2 = readLine(){
var str3 = str2
reverse(&str3)
print(str3)
}
// reverse(&str)
// print(str)
// let scalarsIndex = cafe.unicodeScalars.firstIndex(of: "C")!
// let stringIndex = String.Index(scalarsIndex, within: cafe)!
