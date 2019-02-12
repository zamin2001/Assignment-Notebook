//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by zamin ahmed on 2/7/19.
//  Copyright © 2019 zamin ahmed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var subjectTextField: UITextField!
    
    @IBOutlet weak var dueDateTextField: UITextField!
    
    @IBOutlet weak var DescriptionTextField: UITextView!
    
    var detailItem: Assignments? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView(){
        if let  assignment = self.detailItem {
            if titleTextField != nil {
                titleTextField.text = assignment.title
                subjectTextField.text = assignment.subject
                dueDateTextField.text = String(assignment.DueDate)
                DescriptionTextField.text = assignment.Description
                }
          
            }
     func  viewWillDisappear(){
            if let assignment = self.detailItem{
                assignment.title = titleTextField.text!
                assignment.subject = subjectTextField.text!
                assignment.DueDate = Int(dueDateTextField.text!)!
                assignment.Description = DescriptionTextField.text
                
                
            }
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
  
    
}

