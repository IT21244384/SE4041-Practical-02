// SE4041 Practical 02 - Exercise 01: Arrays
// An array keeps items in order, allows duplicates and is indexed from 0.

// Step 1 - Create an array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2 - Access elements (index starts at 0)
print(marks[0])
print(marks[2])
print(marks[4])
// print(marks[5]) // Would crash: index out of range

// Step 3 - Useful properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)   // Optional(72) - first/last are optionals because the array might be empty
print(marks.last as Any)    // Optional(55)

// Step 4 - Modify the array (needs var)
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5 - Useful methods
print("--- Methods ---")
let examMarks = [72, 65, 48, 90, 55]

print(examMarks.max()!)
print(examMarks.min()!)
print(examMarks.contains(90))
print(examMarks.sorted())
print(examMarks.sorted(by: >))

let total = examMarks.reduce(0, +)
print(total)

let average = Double(total) / Double(examMarks.count)
print(average)

// Activity 1
print("--- Activity 1 ---")
var modules = ["SE4041", "SE4010", "SE4020", "SE4030", "IT4010"]

print("All modules: \(modules)")
print("First module: \(modules.first ?? "None")")
print("Last module: \(modules.last ?? "None")")

modules.append("SE4050")
print("After adding: \(modules)")
print("Number of modules: \(modules.count)")
print("Contains SE4041: \(modules.contains("SE4041"))")
