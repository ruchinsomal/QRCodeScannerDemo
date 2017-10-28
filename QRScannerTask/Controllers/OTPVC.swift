//
//  OTPVC.swift
//  QRScannerTask
//
//  Created by Ruchin Somal on 28/10/17.
//  Copyright © 2017 Ruchin Somal. All rights reserved.
//

import UIKit

class OTPVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtOTP: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedView(anyView: btnSubmit, width: 5.0)
        addBorderToView(anyView: btnSubmit, width: 1.0, color: btnSubmit.tintColor)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtOTP {
            txtOTP.resignFirstResponder()
            return true
        } else {
            return false
        }
    }
    
    @IBAction func btnSubmitPressed(_ sender: Any) {
        if txtOTP.text! == "0000" {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.navigationController?.pushViewController(vc, animated: true)
        } else {
            showAlertView(title: "Wrong OTP", message: "Please enter correct OTP", ref: self)
        }
    }

}
