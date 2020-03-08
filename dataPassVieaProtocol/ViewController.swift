//
//  ViewController.swift
//  dataPassVieaProtocol
//
//  Created by Twnibit_Raihan on 8/3/20.
//  Copyright © 2020 Twnibit_Raihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        ProtocolHelper.shared.dataDelegate = self
    }
    
    @IBAction func doneButtonDidTap(_ sender: UIButton) {
        
        let story = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        story.myStr = myTextField.text
        navigationController?.pushViewController(story, animated: true)
        
    }
    
}
extension ViewController : DataPass{
    func getData(str: String) {
        myLabel.text = str
    }
    
    
}

