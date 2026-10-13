// SE4041 Practical 02 - Exercise 02: Sets
// A set stores unique values with no guaranteed order.

// Step 1 - Create a set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// Step 2 - Insert values ("Kandy" is already there, so it is not added again)
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// Step 3 - Check membership
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// Step 4 - Remove an item
towns.remove("Galle")
print(towns)

// Step 5 - Set operations
print("--- Set operations ---")
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2
print("--- Activity 2 ---")
let mobileDevelopmentStudents: Set = ["Abisheak", "Nimali", "Ruwan", "Kavindu"]
let gameTechnologyStudents: Set = ["Nimali", "Ruwan", "Sanduni", "Tharindu"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("Only one of the modules: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")
