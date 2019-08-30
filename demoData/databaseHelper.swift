//
//  databaseHelper.swift
//  demoData
//
//  Created by Anil on 7/12/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import Foundation
import UIKit
import CoreData


class databaseHelper{
    
    
    static var shareInstance = databaseHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String: String]){
        
        
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        
        
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        do{
            try context?.save()
        }catch{
            print("Data is not saved")
        }
        
        
        
    }
    
    
    
    
}
