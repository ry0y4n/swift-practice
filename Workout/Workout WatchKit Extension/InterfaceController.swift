import WatchKit
import Foundation
import HealthKit

//class InterfaceController: WKInterfaceController, HKWorkoutSessionDelegate {
//    func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date) {
//        <#code#>
//    }
//    
//    func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error) {
//        <#code#>
//    }
    

    let healthStore = HKHealthStore()
    var currentWorkoutSession: HKWorkoutSession?

    var isRunning: Bool?

    weak var timer: Timer?
    var intervalSec: TimeInterval = 300.0

    // awake, willActivateなどの定義は省略

    @IBAction func toggleSession(_ value: Bool) {
        if isRunning == true {
           isRunning = false
           
           guard let session = currentWorkoutSession else { return }
           healthStore.end(session)
           self.timer?.invalidate()
       } else {
           isRunning = true
           
           let conf = HKWorkoutConfiguration()
           conf.activityType = .other
           
           do {
               let session = try HKWorkoutSession(configuration: conf)
               session.delegate = self
               currentWorkoutSession = session
               healthStore.start(session)
               
               self.timer?.invalidate()
               self.timer = Timer.scheduledTimer(
                   timeInterval: self.intervalSec,
                   target: self, selector: #selector(InterfaceController.play),
                   userInfo: nil, repeats: true)
           } catch let e as NSError {
               fatalError("*** Unable to create the workout session: \(e.localizedDescription) ***")
           }
       }
       
       WKInterfaceDevice.current().play(.start)
    }
    

    @objc func play() {
        WKInterfaceDevice.current().play(.success)
        NSLog("Played")
    }
}
