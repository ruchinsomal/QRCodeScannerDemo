//
//  ScanValueVC.swift
//  QRScannerTask
//
//  Created by Ruchin Somal on 28/10/17.
//  Copyright © 2017 Ruchin Somal. All rights reserved.
//

import UIKit

class ScanValueVC: UIViewController {

    @IBOutlet var messageLabel:UILabel!
    var value:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = value
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
