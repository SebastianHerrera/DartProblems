
def getArray(arrayLenght):
    
    array = []

    strInput = input()
    strInput.split(" ")

    print(strInput)

    for i in strInput:
        if i != " ":
            array.append(int(i))

    return array


def countNumberInArray(array, numbersRange):
    
    counter = []
  
    for numberInRange in numbersRange:
        aux = 0
        for numberToEvaluate in array:
            if numberInRange == numberToEvaluate:
                aux += 1
        counter.append(aux)
    

    return counter


def run():
    arrayLenght = int(input())
    numberRange = int(input())
    numbersRange = range(1, numberRange+1)
    array = getArray(arrayLenght)

    counters =  countNumberInArray(array, numbersRange)

    for counter in counters:
        print(counter, end = ' ')




if __name__ == "__main__":
    run()