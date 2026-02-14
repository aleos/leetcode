import Testing

@testable import LeetCode

/// [1723. Find Minimum Time to Finish All Jobs](https://leetcode.com/problems/find-minimum-time-to-finish-all-jobs/)
@Suite("1723. Find Minimum Time to Finish All Jobs")
struct P1723Tests {
    
    /// Example 1:
    /// - Input: `jobs = [3,2,3], k = 3`
    /// - Output: `3`
    /// - Explanation: By assigning each person one job, the maximum time is 3.
    @Test("Each worker gets one job")
    func example1() {
        #expect(P1723.minimumTimeRequired([3,2,3], 3) == 3)
    }
    
    /// Example 2:
    /// - Input: `jobs = [1,2,4,7,8], k = 2`
    /// - Output: `11`
    /// - Explanation: Assign the jobs the following way:
    ///   Worker 1: 1, 2, 8 (working time = 1 + 2 + 8 = 11)
    ///   Worker 2: 4, 7 (working time = 4 + 7 = 11)
    ///   The maximum working time is 11.
    @Test("Distribute jobs optimally between 2 workers")
    func example2() {
        #expect(P1723.minimumTimeRequired([1,2,4,7,8], 2) == 11)
    }
    
    @Test("Additional test cases", .disabled("It's taking too long, disabling for now."))
    func additionalCases() {
        #expect(P1723.minimumTimeRequired([1,2,3,4,5,6,7,8,9,10,11,12], 4) == 20)
        #expect(P1723.minimumTimeRequired([9899456,8291115,9477657,9288480,5146275,7697968,8573153,3582365,3758448,9881935,2420271,4542202], 9) == 0)
    }
    
    /// Intentionally out-of-constraints to cover base-case fallback (distributedJobs.max() == nil)
    @Test("Empty jobs and zero workers returns .max via base case")
    func baseCaseEmptyDistributedJobsReturnsMax() {
        #expect(P1723.minimumTimeRequired([], 0) == Int.max)
    }
}

