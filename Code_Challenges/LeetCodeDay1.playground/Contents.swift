var nums = [1,2,3,17, 15, 90, 64]

func containsDuplicate(_ nums: [Int]) -> Bool {

    if Set(nums).count < nums.count {
        return true
    } else {
        return false
    }
}

print(containsDuplicate(nums))

//var nums = [2,7,11,15]
//var target = 9
//
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//let sumTarget = target
//var newArr: [Int] = []
//var pointer = 0
//
//    for i in nums {
//
//        var currentIndex = nums.index(of: i)
//
//    print("nums[pointer]: ", nums[pointer])
//        print("i: ", i)
//
//        print(sumTarget - nums[pointer] == i, nums[pointer], i)
//
//    if sumTarget - nums[pointer] == i {
//        print("From inside: ", sumTarget - i)
//        newArr = [pointer, i]
//    }
//}
//
//    print("newArr: ", newArr)
// return newArr
//}
//
//twoSum(nums, target)
