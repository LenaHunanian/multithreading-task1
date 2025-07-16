//
//  ViewController.swift
//  NSOperationTask1
//
//  Created by Lena Hunanian on 16.07.25.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
     let operationQueue = OperationQueue()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let operation = BlockOperation {
            print("Operation \"A\" started")
            for _ in 0..<1000000 {
                // do nothing
            }
            print("Operation \"A\" finished")
            print("\(Thread.isMainThread)") //if you check this in OperationQueue.main case it shows true, in our custuom queue- false
        }
//        OperationQueue.main.addOperation(operation) if we use this queue the operation is executing in the main thread
        operationQueue.addOperation(operation)
        //if we use our custom queue it uses backround thread
    }
    
    
    
    
}


