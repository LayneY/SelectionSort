var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!.lowercased())
    line = readLine()
}


// Add your code below:
selectionSort(array:words)

func selectionSort(array:[String]){
    var leftToSort = array
    var finalArray = array
    var index = 0
    //var pass = 1
    //var totalSwaps = 0

    //print("Pass: 0, Swaps: 0/0, Array: \(finalArray)")
    
    for _ in 0 ..< finalArray.count - 1 {
        //var swaps = 0
        let i = findSmallest(leftToSort)
        swap(array:&finalArray, index1:index, index2: finalArray.firstIndex(of: i)!)
        //swaps += 1
        //totalSwaps += 1
        leftToSort = leftToSort.filter { $0 != i }
        index += 1

        //print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(finalArray)")
        //pass += 1
    }

    for word in finalArray {
        print(word)
    }
}

func swap(array:inout [String], index1: Int, index2: Int){
    let elem1 = array[index1]
    let elem2 = array[index2]

    array[index1] = elem2
    array[index2] = elem1
}


func findSmallest(_ array: [String]) -> String {
    var lastSmallest = array[0]
    var index = 0

    for i in array {
        if i < lastSmallest {
            lastSmallest = i
        }
        index += 1
    }
    return lastSmallest
}

