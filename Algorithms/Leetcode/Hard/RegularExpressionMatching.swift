//
//  RegularExpressionMatching.swift
//  Algorithms
//
//  Created by MAC-Nasridinov-B on 28/02/25.
//


/// Leetcode / 10. Regular Expression Matching
/// https://leetcode.com/problems/regular-expression-matching/description/
public final class RegularExpressionMatching: LeetcodeSolution {
    public func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s), p = Array(p)
        let m = s.count, n = p.count
        var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)

        dp[0][0] = true  // Empty pattern matches empty string

        // Fill first row (when s is empty but p has patterns like "a*" or ".*")
        for j in 1...n {
            if p[j-1] == "*" {
                dp[0][j] = dp[0][j-2] // '*' acts as zero occurrences
            }
        }

        for i in 1...m {
            for j in 1...n {
                if p[j-1] == s[i-1] || p[j-1] == "." {
                    dp[i][j] = dp[i-1][j-1] // Inherit previous state
                } else if p[j-1] == "*" {
                    dp[i][j] = dp[i][j-2] // '*' as zero occurrences
                    if p[j-2] == s[i-1] || p[j-2] == "." {
                        dp[i][j] = dp[i][j] || dp[i-1][j] // '*' as multiple occurrences
                    }
                }
            }
        }

        return dp[m][n]
    }
}
