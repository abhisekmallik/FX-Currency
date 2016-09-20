//
//  RegisterViewController.swift
//  FX Currency
//
//  Created by Abhisek Mallik on 9/6/16.
//  Copyright © 2016 Abhisek Mallik. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField

extension JVFloatLabeledTextField {
    
    func bottomBorder() -> Void {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var txtUserName:JVFloatLabeledTextField!
    @IBOutlet weak var txtPassword:JVFloatLabeledTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.becomeFirstResponder()
        // Do any additional setup after loading the view.
        
        let margins = view.layoutGuides
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLayoutSubviews() {
        txtUserName.bottomBorder()
        txtPassword.bottomBorder()
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
