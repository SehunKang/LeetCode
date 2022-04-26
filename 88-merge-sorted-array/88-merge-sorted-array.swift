class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {return}
        if m == 0 {
            nums1 = nums2
            return
        }
        
        var nums1Index = m - 1
        var nums2Index = n - 1
        var totalIndex = m + n - 1
        
        while nums1Index >= 0 && nums2Index >= 0 {
            if nums1[nums1Index] > nums2[nums2Index] {
                nums1[totalIndex] = nums1[nums1Index]
                nums1Index -= 1
                totalIndex -= 1
            } else {
                nums1[totalIndex] = nums2[nums2Index]
                nums2Index -= 1
                totalIndex -= 1
            }
        }
        
        while nums2Index >= 0 {
            nums1[nums2Index] = nums2[nums2Index]
            nums2Index -= 1
        }
        
    }
}
