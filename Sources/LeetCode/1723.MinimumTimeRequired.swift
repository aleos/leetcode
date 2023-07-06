//
//  1723.MinimumTimeRequired.swift
//  
//
//  Created by Alexander Ostrovsky on 6/7/2023.
//

/// [1723. Find Minimum Time to Finish All Jobs](https://leetcode.com/problems/find-minimum-time-to-finish-all-jobs/description/)
///
/// You are given an integer array `jobs`, where `jobs[i]` is the amount of time it takes to complete the `ith` job.
///
/// There are `k` workers that you can assign jobs to. Each job should be assigned to exactly one worker. The working time of a worker is the sum of  the time it takes to complete all jobs assigned to them. Your goal is to devise an optimal assignment such that the maximum working time of  any worker is minimized.
///
/// Return the **minimum** possible **maximum working time** of any assignment.
class MinimumTimeRequired {
    
    /// - Parameters:
    ///   - jobs: An integer array, where `jobs[i]` is the amount of time it takes to complete the `ith` job.
    ///   - k: There are `k` workers that you can assign jobs to.
    /// - Returns: The **minimum** possible **maximum working time** of any assignment.
    func minimumTimeRequired(_ jobs: [Int], _ k: Int) -> Int {
        
        func assign(job: Int, distributedJobs: [Int], freeWorkers: Int) -> Int {
            guard jobs.count - job >= freeWorkers else { return .max }
            guard job < jobs.count else {
                return distributedJobs.max() ?? .max
            }
            var maxWorkingTime: Int = .max
            for worker in 0..<k {
                var freeWorkers = freeWorkers
                let workerGets = distributedJobs[worker] + jobs[job]
                if workerGets < maxWorkingTime {
                    if distributedJobs[worker] == 0 {
                        freeWorkers -= 1
                    }
                    var distributedJobs = distributedJobs
                    distributedJobs[worker] += jobs[job]
                    maxWorkingTime = min(maxWorkingTime, assign(job: job + 1, distributedJobs: distributedJobs, freeWorkers: freeWorkers))
                }
            }
            return maxWorkingTime
        }
        
        return assign(job: 0, distributedJobs: [Int](repeating: 0, count: k), freeWorkers: k)
    }
}
