//
//  ViewController.swift
//  demoData
//
//  Created by Anil on 7/12/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

/* https://www.youtube.com/watch?v=JTtYSJtVKMc&list=PLWZIhpNhtvfofDMgWtuknkcow-_jY-dfa
 Protocol And Delegate in Swift 4  https://www.youtube.com/watch?v=qQGSoV9S798
 github https://github.com/yogeshpatelios/Swift-4-Xcode-9-Part---2---How-to-Create-and-Used-CoreData-in-iOS-Latest-2018-Hindi.
 */



class ViewController: UIViewController {

    
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var textAddress: UITextField!
    
    @IBOutlet weak var textCity: UITextField!
    
    @IBOutlet weak var textMobile: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    @IBAction func buttonSaveClick(_ sender: Any) {
        
        let dict = ["name":textName.text, "address":textAddress.text, "city":textCity.text, "mobile":textMobile.text]
        
        databaseHelper.shareInstance.save(object: dict as! [String: String])
        
        
    }
    
    
    
}

