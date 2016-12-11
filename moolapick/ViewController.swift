//
//  ViewController.swift
//  moolapick
//
//  Created by Apple Macintosh on 12/11/16.
//  Copyright © 2016 Apple Macintosh. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CreateAccount(_ sender: Any) {
        FIRAuth.auth()?.createUser(withEmail: email.text!, password: password.text!, completion: {
            error, user in
            
            if error != nil{
                
            }else{
                print("user create")
                
            }
            
        })
    }
    func login(){
        FIRAuth.auth()?.signIn(withEmail: email.text!, password: password.text!, completion: {
            error, user in
            
            if error != nil{
                print("Incorrect")
                
            }else{
                print("Huzza")
            }
        })
    }

}

