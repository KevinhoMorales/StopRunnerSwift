//
//  Accelerometer.swift
//  StopRunnerSwift WatchKit Extension
//
//  Created by Kevin Morales on 9/28/21.
//

import CoreMotion

class Accelerometer {
    
    internal func acceletometer(completion: @escaping (CMAccelerometerData) -> ()) {
        let manager = CMMotionManager()

        // Read the most recent accelerometer value
        manager.accelerometerData?.acceleration.x
        manager.accelerometerData?.acceleration.y
        manager.accelerometerData?.acceleration.z

        // How frequently to read accelerometer updates, in seconds
        manager.accelerometerUpdateInterval = 0.1

        // Start accelerometer updates on a specific thread
        manager.startAccelerometerUpdates(to: .main) { (data, error) in
            // Handle acceleration update
            guard let data = data else {
                print("Fail data!")
                return
            }
            completion(data)
        }
    }
    
    static let shared: Accelerometer = {
        return Accelerometer()
    }()
    
    
}
