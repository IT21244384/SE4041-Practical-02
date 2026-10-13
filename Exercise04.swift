// SE4041 Practical 02 - Exercise 04: if, else if, and else
// Conditions are tested top to bottom; the first match runs.

let mark = 68

if mark >= 75 {
    print("Distinction")
} else if mark >= 50 {
    print("Pass")
} else {
    print("Fail")
}

// Activity 4
print("--- Activity 4 ---")

func describeAttendance(_ attendance: Int) {
    if attendance >= 90 {
        print("\(attendance)% - Excellent attendance")
    } else if attendance >= 80 {
        print("\(attendance)% - Good attendance")
    } else if attendance >= 70 {
        print("\(attendance)% - Acceptable attendance")
    } else {
        print("\(attendance)% - Low attendance")
    }
}

let attendance = 78
describeAttendance(attendance)

// Testing with different values
describeAttendance(95)
describeAttendance(84)
describeAttendance(62)
