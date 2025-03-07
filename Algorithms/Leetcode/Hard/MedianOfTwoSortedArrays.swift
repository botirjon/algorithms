//
//  MedianOfTwoSortedArrays.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//


/// Leetcode / 4. Median of two sorted arrays
/// https://leetcode.com/problems/median-of-two-sorted-arrays/description/
public final class MedianOfTwoSortedArrays: LeetcodeSolution {
    public func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var r = [Int]()

        let m = nums1.count
        let n = nums2.count

        let t = m + n
        let mid = Int(t / 2)

        var i = 0;
        var j = 0;
        
        // Merge them
        while i < m, j < n {
            if nums1[i] < nums2[j] {
                r.append(nums1[i])
                i += 1
            } else if nums2[j] < nums1[i] {
                r.append(nums2[j])
                j += 1
            } else {
                r.append(nums1[i])
                r.append(nums2[j])
                i += 1
                j += 1
            }

            if r.count > mid {
                if t % 2 == 0 {
                    return Double(r[mid] + r[mid-1]) / Double(2)
                } else {
                    return Double(r[mid])
                }
            }
        }

        if i < m {
            r.append(contentsOf: Array(nums1[i...]))
        } else if j < n {
            r.append(contentsOf: Array(nums2[j...]))
        }
        
        guard !r.isEmpty else { return 0 }
        
        if t % 2 == 0 {
            return Double(r[mid] + r[mid-1]) / Double(2)
        } else {
            return Double(r[mid])
        }
    }

    func median(t: Int, mid: Int, r: [Int]) -> Double {
        guard !r.isEmpty else { return 0 }
        
        if t % 2 == 0 {
            return Double(r[mid] + r[mid-1]) / Double(2)
        } else {
            return Double(r[mid])
        }
    }
}
