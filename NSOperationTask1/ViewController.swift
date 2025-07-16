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
            print("\(Thread.isMainThread)")
        }
//        OperationQueue.main.addOperation(operation)
        operationQueue.addOperation(operation)
    }
    
    
    
    
}


