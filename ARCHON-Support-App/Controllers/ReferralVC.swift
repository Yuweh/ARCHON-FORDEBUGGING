//
//  ReferralVC.swift
//  ARCHON-Prototype1
//
//  Created by Fulltime on 12/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class ReferralVC: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var positionTitle: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    
    //MARK: STANDARD
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.delegate = self
        positionTitle.delegate = self
    }

    //MARK: UITextFieldDelegate Functions
    
    func textFieldShouldReturn(_ fullName: UITextField) -> Bool {
        //Hide keyboard
        fullName.resignFirstResponder()
        positionTitle.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ fullName: UITextField, reason: UITextFieldDidEndEditingReason) {
//        nameLabel.text = fullName.text
//        positionLabel.text = positionTitle.text
//        list.append(fullName.text!)
        print("Did End Editing")
    }

    //MARK: Methods for ACTION BUTTONS
    
    @IBAction func saveButtonWasPressed(_ sender: UIButton) {
        nameLabel.text = fullName.text
        positionLabel.text = positionTitle.text
        list.append(nameLabel.text!)
        list2.append(positionLabel.text!)
    }

    
}
