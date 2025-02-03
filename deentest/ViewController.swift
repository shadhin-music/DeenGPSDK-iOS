//
//  ViewController.swift
//  DeenIslamExample
//
//  Created by Joy on 20/8/23.
//

import UIKit
import DeenIslamSDK

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //textField.text = "8801954545813"
       // textField.text = "8801819841259"
        textField.text = "8801672219992"
      //  textField.text = "8801795937303"
        //textField.text = "8801738609138"
        
    }

    @IBAction func onLoginPressed(_ sender: Any) {
        
        DeenIslamGPSDK.shared.logIn(with: textField.text ?? "" , isBL: true) { token, error in
            if let token = token{
                let tab = TabBarVC()
                tab.token = token
                self.navigationController?.pushViewController(tab, animated: true
                )
            }else if let error = error{
                debugPrint(error)
            }
            
        }
    }
    
}

