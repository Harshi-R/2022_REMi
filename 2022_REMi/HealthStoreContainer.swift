/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A protocol for objects that access the health store.
 */

import HealthKit


class HealthStoreContainer : ObservableObject{
    @Published
    var sleepState : [String] = []
    var healthStore: HKHealthStore!
    @Published
    var timeAsleep: TimeInterval = 0
    init() {
        guard HKHealthStore.isHealthDataAvailable() else { fatalError("This app requires a device that supports HealthKit") }
        
        healthStore = HKHealthStore()
        let sleepCategory : Set = [HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!]
        let sleepSampleType = HKCategoryType(.sleepAnalysis)
        
        print("Requesting HealthKit authorization to read Sleep Data")
        // Request permission to read and write heart rate and heartbeat data.
        healthStore.requestAuthorization(toShare: sleepCategory, read: sleepCategory) { (success, error) in
            print("Request Authorization -- Success: ", success, " Error: ", error ?? "nil")
            
            let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
            // the block completion to execute
            
            let query = HKSampleQuery(sampleType: sleepSampleType, predicate: nil, limit: 100000, sortDescriptors: [sortDescriptor]) { [self] (query, tmpResult, error) -> Void in
                if error != nil {
                    // Handle the error in your app gracefully
                    return
                }
                
                if let result = tmpResult {
                    for item in result {
                        if let sample = item as? HKCategorySample {
                            let startDate = sample.startDate
                            let endDate = sample.endDate
                            print(sample.endDate.timeIntervalSince(sample.startDate))
                        }
                        
                        
                    }
                }
                
            }
            self.healthStore.execute(query)
        }
    }
}
