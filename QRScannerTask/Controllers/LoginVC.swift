//
//  LoginVC.swift
//  QRScannerTask
//
//  Created by Ruchin Somal on 28/10/17.
//  Copyright © 2017 Ruchin Somal. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var btnGetOTP: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        roundedView(anyView: btnGetOTP, width: 5.0)
        addBorderToView(anyView: btnGetOTP, width: 1.0, color: btnGetOTP.tintColor)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtName {
            txtName.resignFirstResponder()
            txtNumber.becomeFirstResponder()
            return true
        } else if textField == txtNumber {
            txtName.resignFirstResponder()
            txtNumber.resignFirstResponder()
            return true
        } else {
            return false
        }
    }
    
    @IBAction func btnGetOtpPressed(_ sender: Any) {
        if txtName.text! != "" {
            if txtNumber.text! != "" {
        self.navigationController?.isNavigationBarHidden = false
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "OTPVC") as! OTPVC
        self.navigationController?.pushViewController(vc, animated: true)
            } else {
                showAlertView(title: "Empty", message: "Please enter mobile number", ref: self)
            }
        } else {
            showAlertView(title: "Empty", message: "Please enter name", ref: self)
        }
    }

}
