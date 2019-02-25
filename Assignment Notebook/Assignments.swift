//
//  Assignments.swift
//  Assignment Notebook
//
//  Created by zamin ahmed on 2/8/19.
//  Copyright © 2019 zamin ahmed. All rights reserved.
//

import UIKit

class Assignments: Codable {
    
    var title: String
    var subject:String
    var DueDate:String
    var Description:String
    
    
    
    init(title:String,subject:String,DueDate:String,Description:String) {
        self.title = title
        self.subject = subject
        self.DueDate = DueDate
        self.Description = Description
        
    }
    

}
