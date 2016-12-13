//
//  AddNewViewController.swift
//  moolapick
//
//  Created by Apple Macintosh on 12/13/16.
//  Copyright © 2016 Apple Macintosh. All rights reserved.
//

import UIKit

class AddNewViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var ImagePicker: UIImagePickerController!
    
    @IBOutlet weak var TargetTitle: UITextField!
    @IBOutlet weak var TargetImg: UIImageView!
    @IBOutlet weak var SelectPictureBtn: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ImagePicker = UIImagePickerController()
        ImagePicker.delegate = self
        
    }
    
    @IBAction func SelectPictureClick(sender: AnyObject){
        
        //presentViewController(ImagePicker, animate: true, completion: nil)
        present(ImagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            TargetImg.image = image
            SelectPictureBtn.setTitle("", for: .normal)
        }
        ImagePicker.dismiss(animated: true, completion: nil);
        
    }
    
    
    @IBAction func SaveClick(sender: AnyObject){
        
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
