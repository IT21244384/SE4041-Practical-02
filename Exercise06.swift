// SE4041 Practical 02 - Exercise 06: Loops

// Part A - for-in over a range
for i in 1...5 {
    print("Week \(i)")
}

// for-in over an array
let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print(name)
}

// enumerated() gives the index and the value
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B - while (condition checked first, may run zero times)
var balance = 1000
var week = 0

while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C - repeat-while (body runs first, so it always runs at least once)
var attempts = 0

repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
print("--- break and continue ---")
let sampleMarks = [72, -1, 65, 48, 90]

for mark in sampleMarks {
    if mark < 0 {
        continue    // skip this repetition
    }
    if mark == 90 {
        break       // stop the loop completely
    }
    print(mark)
}

// Activity 6
print("--- Activity 6 ---")
let marks = [72, -1, 55, 43, 90, 88]

for mark in marks {
    if mark < 0 {
        continue
    }
    if mark == 90 {
        print("Found 90 - stopping")
        break
    }
    print("Processed mark: \(mark)")
}

// Putting collections and control flow together
print("--- Collections + control flow ---")
let students = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]
let passMark = 50
var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(students[index])
        print("\(students[index]): \(mark) - Pass")
    } else {
        print("\(students[index]): \(mark) - Fail")
    }
}
print("Passed Students: \(passedStudents)")

// Knowledge Check
// 1. An array is ordered and allows duplicates; a set is unordered and only stores unique values.
// 2. An array stores items by position, so the same value can sit at different indexes.
// 3. A set stores values by their hash, so an equal value is already "there" and isn't added again.
// 4. By index in square brackets, e.g. marks[0].
// 5. By key in square brackets, e.g. marks["Amal"].
// 6. Because the key might not exist, so the result could be nil.
// 7. a...b includes b; a..<b stops before b.
// 8. For true/false decisions or a few conditions that are checked in order.
// 9. When one value is matched against many possible values or ranges.
// 10. for-in runs over a known collection or range; while repeats until a condition becomes false.
// 11. while checks the condition first (may run zero times); repeat-while runs at least once.
// 12. continue skips the rest of the current repetition and moves to the next one.
// 13. break stops the loop completely.
