//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Ivor D. Addo on 3/3/17.
//  Copyright © 2017 Marquette University. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendButtonPressed(_ sender: UIButton) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
                
            }
        }
    }

}
