// var is a variable
// let is a constant
// variable types are implicit, but can be explicitly defined
// for arithmetic operations, the values have to be of the same type. This means an int cannot be operated with a double.

let x = 5
let y = 6.0 // implicit double?
var z = Double(x) * y // x has to be cast into a Double using the Double() function
print(z)

// functions are defined with func
func greet(name: String) {
    print("Hello \(name)")
}
// the name of the parameter has to be included in the function call
greet(name: "Hunter")

// however, if an underscore is provided before the variable name, then the parameter is not required in the function call
func greet2(_ name: String) {
    print("Hello2 \(name)")
}

greet2("Hunter")

// The above is overriding external and internal parameter names
// by giving the parameter an external name, it can be more readable.
func greet3(person name: String) {
    print("Hello3 \(name)")
}

greet3(person: "Hunter")

/**

Only optionals can contain the nil value.
When variables are created, they MUST be given a value.
If the variable may not have a value, then it must be an optional.
Optionals are good for when some kind of input is supplied. That way,
if the value is not there, it can be treated correctly.
*/
var word: String? = nil

if let w = word {
    print(w)
}
else {
    print("Word is nil")
}

word = "Happy Birthday"
if let w = word {
    print(w)
}
else {
    print("Word is nil")
}
// nil collascing. Not sure if I spelled that correctly. 
var word2: String? = nil ?? "Collasce"

if let w2 = word2 {
    print(w2)
}
else {
    print("This shouldn't happen because the variable was given a value")
}


