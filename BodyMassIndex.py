
def getBMI(weight, height):
    BMI = weight / (height)**2
    return BMI

def evalueData(BMI):
    if(BMI < 18.5):
        return "under"
    elif(BMI >= 18.5 and BMI < 25.0):
        return "normal"
    elif(BMI >= 25.0 and BMI < 30.0):
        return "over"
    else:
      return "obese"

def run():
    testCases = int(input())
    for i in range(testCases):
        weight = float(input())
        height  = float(input())

        BMI = getBMI(weight, height)
        print(evalueData(BMI))



if __name__ == "__main__":
    run()