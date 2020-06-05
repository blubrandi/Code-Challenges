//John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
//For example, there are  socks with colors . There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .
//Function Description
//Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
//sockMerchant has the following parameter(s):
//n: the number of socks in the pile
//ar: the colors of each sock
//Input Format
//The first line contains an integer , the number of socks represented in .
//The second line contains  space-separated integers describing the colors  of the socks in the pile.
//Constraints
//
// where
//Output Format
//Return the total number of matching pairs of socks that John can sell.
//Sample Input
//9
//10 20 20 10 10 30 50 10 20
//Sample Output
//3


func sockMerchant(n: Int, ar: [Int]) -> Int {

    var colorDict: [Int: Int] = [:]
    var pairTotal = 0

    for (_, color) in ar.enumerated() {
        if colorDict.keys.contains(color) {
            if var colorCount = colorDict[color] {

                colorCount += 1
                colorDict.updateValue(colorCount, forKey: color)
            }
        } else {
            colorDict.updateValue(1, forKey: color)
        }
    }

    for color in colorDict {
        if color.value % 2 == 0 && color.value >= 2 {
            let pairCount = color.value / 2
            pairTotal += pairCount
        } else if color.value % 2 > 0 {
            let validCount = color.value - 1
            let pairCount = validCount / 2
            pairTotal += pairCount
        } else {
            continue
        }
    }

    return pairTotal
}

print(sockMerchant(n: 10, ar: [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]))




// [10: 4, 20: 3, 30: 1, 50: 1]
// 10 -> 4/2 because it's even, will get back 2 pair
// 20 -> 3 - 1, because it's odd, 2/2 because it's even (divide if >= 2), will get back 1 pair
// 30 -> 0 pairs, it's odd, but when you subtract 1, you get 0
// 50 -> 0 pairs, it's odd, but when you subtract 1, you get 0

// Add pairs, 2 + 1 = 3 total pair

