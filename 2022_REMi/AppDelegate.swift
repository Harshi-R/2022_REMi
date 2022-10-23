/*
See LICENSE folder for this sample’s licensing information.

Abstract:
An app delegate that requests permission to read and share heart rate, heart beat, and heart rate variability data.
*/


import UIKit
import HealthKit


//@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private let healthStore: HKHealthStore

    // MARK: - Initializers
    
    override init() {
        guard HKHealthStore.isHealthDataAvailable() else { fatalError("This app requires a device that supports HealthKit") }
        
        healthStore = HKHealthStore()
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Enumerate the view controller hierarchy and set the health store where appropriate.
        window?.rootViewController?.enumerateHierarchy { viewController in
            guard var healthStoreContainer = viewController as? HealthStoreContainer else { return }
            healthStoreContainer.healthStore = healthStore
        }
        
        // Create the heart rate and heartbeat type identifiers.
        let sleepCategory : Set = [HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.appleStandHour)!]
        
        print("Requesting HealthKit authorization to read Sleep Data")
        // Request permission to read and write heart rate and heartbeat data.
        healthStore.requestAuthorization(toShare: sleepCategory, read: sleepCategory) { (success, error) in
            print("Request Authorization -- Success: ", success, " Error: ", error ?? "nil")
            
        }
        return true
    }
    
}


   
