// SE4041 Practical 02 - Exercise 03: Dictionaries
// A dictionary stores Key -> Value pairs and is accessed by key, not position.

// Step 1 - Create a dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 - Retrieve a value (returns an optional because the key may not exist)
print(marks["Amal"] as Any)

// Step 3 - Safely retrieve with ??
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// Step 4 - Optional binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 - Add, update and remove
marks["Sanduni"] = 90
marks["Amal"] = 75
marks["Ruwan"] = nil
print(marks)

// Activity 3 - Phone Book
print("--- Activity 3 ---")
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0763456789",
    "Sanduni": "0754567890"
]

phoneBook["Kasun"] = "0785678901"     // add
phoneBook["Amal"] = "0779999999"      // update
phoneBook["Ruwan"] = nil              // remove

for name in phoneBook.keys.sorted() {
    print("\(name): \(phoneBook[name]!)")
}

func searchContact(_ name: String) {
    if let number = phoneBook[name] {
        print("\(name)'s number is \(number)")
    } else {
        print("Contact not found")
    }
}

searchContact("Nimali")
searchContact("Ruwan")
