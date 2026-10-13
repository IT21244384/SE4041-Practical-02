// SE4041 Practical 02 - Final Practical Task: Student Performance Manager

// Part A - Store student marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

// Part C - Determine grade using switch and ranges
func grade(for mark: Int) -> String {
    switch mark {
    case 80...100: return "A"
    case 75..<80: return "A-"
    case 70..<75: return "B+"
    case 65..<70: return "B"
    case 60..<65: return "B-"
    case 55..<60: return "C+"
    case 45..<55: return "C"
    case 40..<45: return "C-"
    case 0..<40: return "F"
    default: return "Invalid"
    }
}

print("==================================")
print("STUDENT PERFORMANCE")
print("==================================")

// Part B - Display all students (keys sorted because dictionary order isn't guaranteed)
for name in studentMarks.keys.sorted() {
    let mark = studentMarks[name]!
    let studentGrade = grade(for: mark)
    print("\(name) - \(mark) - \(studentGrade)")

    // Part E - Unique grades
    gradesAwarded.insert(studentGrade)

    // Part D - Passed students
    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

print("----------------------------------")
print("Passed Students:")
for name in passedStudents {
    print(name)
}

print("----------------------------------")
print("Grades Awarded:")
for awarded in gradesAwarded.sorted() {
    print(awarded)
}

// Part F - Average mark
let allMarks = Array(studentMarks.values)
let total = allMarks.reduce(0, +)
let average = Double(total) / Double(allMarks.count)

print("----------------------------------")
print("Class Average: \(average)")

// Part G - Highest and lowest marks
print("Highest Mark: \(allMarks.max() ?? 0)")
print("Lowest Mark: \(allMarks.min() ?? 0)")

// Additional Challenge - Count passes and fails
print("----------------------------------")
print("Passed: \(passCount)")
print("Failed: \(failCount)")

// Additional Challenge - Search for a student
print("----------------------------------")
func searchStudent(_ searchName: String) {
    if let mark = studentMarks[searchName] {
        print("\(searchName)'s mark is \(mark)")
    } else {
        print("Student not found")
    }
}

let searchName = "Amal"
searchStudent(searchName)
searchStudent("Kamal")
