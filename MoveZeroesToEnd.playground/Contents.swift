import UIKit

func moveZeroesToEnd(_ arr: inout [Int]) -> [Int]{
    var j : Int = -1
    for i in 0..<arr.count {
        if(arr[i] == 0){
            j = i
            break
        }
    }
    if j == -1 {
        return arr
    }
    for i in j+1..<arr.count {
        if(arr[i] != 0){
            (arr[i],arr[j]) = (arr[j],arr[i])
            j += 1
        }
    }
    
    return arr
}

func moveZeroes(_ nums: inout [Int]) {
        var j : Int = 0
        for i in 0..<nums.count {
            if(nums[i] != 0){
                nums.swapAt(i,j)
                j += 1
            }
        }
    }

var arr = [0,1,0,3,12]
print(moveZeroes(&arr))
print(arr)
moveZeroesToEnd(&arr)
print(arr)
