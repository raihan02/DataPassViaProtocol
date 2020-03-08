//
//  SecondViewController.swift
//  dataPassVieaProtocol
//
//  Created by Twnibit_Raihan on 8/3/20.
//  Copyright © 2020 Twnibit_Raihan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myText: UITextField!
    var myStr : String?
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = myStr
    }
    

    @IBAction func dismiss(_ sender: UIButton) {
        if let str = myText.text{
            ProtocolHelper.shared.dataDelegate?.getData(str: str)
            navigationController?.popViewController(animated: true)
        }
    }
    

}
