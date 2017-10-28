//
//  Common.swift
//  QRScannerTask
//
//  Created by Ruchin Somal on 28/10/17.
//  Copyright © 2017 Ruchin Somal. All rights reserved.
//

import Foundation
import UIKit

// To convert shape into rounded view
func roundedView(anyView: AnyObject,width: CGFloat) {
    anyView.layer.cornerRadius = width
    anyView.layer.masksToBounds = true
}

// To add border on view
func addBorderToView(anyView: AnyObject,width: CGFloat,color: UIColor) {
    anyView.layer.borderWidth = width
    anyView.layer.borderColor = color.cgColor
    anyView.layer.masksToBounds = true
}

// To show alert message
func showAlertView(title: String, message: String, ref:UIViewController) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
        //ref.dismiss(animated: true, completion: nil)
    }
    alertController.addAction(okAction)
    ref.present(alertController, animated: true, completion: nil)
}
