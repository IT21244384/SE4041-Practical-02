// SE4041 Practical 02 - Exercise 05: switch and Ranges

// switch with multiple values in one case
let grade = "B"

switch grade {
case "A":
    print("Excellent")
case "B", "C":
    print("Good")
case "D":
    print("Needs Work")
default:
    print("Unknown Grade")
}

// switch with ranges: ... includes both ends, ..< stops before the upper bound
let mark = 68

switch mark {
case 75...100:
    print("Distinction")
case 50..<75:
    print("Pass")
case 0..<50:
    print("Fail")
default:
    print("Invalid Mark")
}

// Activity 5 - Temperature Description
print("--- Activity 5 ---")

func describeTemperature(_ temperature: Int) {
    switch temperature {
    case ..<0:
        print("\(temperature)°C - Freezing")
    case 0...15:
        print("\(temperature)°C - Cold")
    case 16...25:
        print("\(temperature)°C - Moderate")
    case 26...35:
        print("\(temperature)°C - Warm")
    default:
        print("\(temperature)°C - Hot")
    }
}

let temperature = 27
describeTemperature(temperature)

// Testing with other temperatures
describeTemperature(-5)
describeTemperature(10)
describeTemperature(20)
describeTemperature(40)
