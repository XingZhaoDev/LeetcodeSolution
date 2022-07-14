/*
 989. Add to Array-Form of Integer
 The array-form of an integer num is an array representing its digits in left to right order.

 For example, for num = 1321, the array form is [1,3,2,1].
 Given num, the array-form of an integer, and an integer k, return the array-form of the integer num + k.

  

 Example 1:

 Input: num = [1,2,0,0], k = 34
 Output: [1,2,3,4]
 Explanation: 1200 + 34 = 1234
 Example 2:

 Input: num = [2,7,4], k = 181
 Output: [4,5,5]
 Explanation: 274 + 181 = 455
 Example 3:

 Input: num = [2,1,5], k = 806
 Output: [1,0,2,1]
 Explanation: 215 + 806 = 1021
  

 Constraints:

 1 <= num.length <= 104
 0 <= num[i] <= 9
 num does not contain any leading zeros except for the zero itself.
 1 <= k <= 104
 */

func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
    if num.isEmpty { return [] }
    
    var result = [Int]()
    var carry = k
    var i = num.count - 1
    
    while i >= 0 || carry > 0 {
        print("carry in start: \(carry)")
        let x1 = i >= 0 ? num[i] : 0
        print("x1: \(x1)")
        let x2 = carry > 0 ? carry % 10 : 0
        print("x2: \(x2)")
        let sum = x1 + x2
        print("sum: \(sum)")
        result.append(sum % 10)
        
        carry /= 10
        print("carry: \(carry)")
        
        carry += sum / 10
        print("carry in end: \(carry)")
        
        i -= 1
    }
    return result.reversed()
}

let num = [1,2,0,0]
let k = 34
print(addToArrayForm(num, k))
