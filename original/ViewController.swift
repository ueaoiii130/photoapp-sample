//
//  ViewController.swift
//  オリジナル
//
//  Created by 吉原央賀 on 2018/12/11.
//  Copyright © 2018 吉原央賀. All rights reserved.

import UIKit
  
class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet var camera: UIImageView!

    
////    ユーザーデフォルト
//   let saveimage: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func take() {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            //カメラだ起動
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            picker.delegate = self
            picker.allowsEditing = true
            present(picker, animated: true, completion: nil)
            
        }else{
            //カメラが出ない時のエラーメッセージ
            print("error")
        }

        
      
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        camera.image = info[.editedImage] as? UIImage
        dismiss(animated: true, completion: nil)
        
//        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//            appDelegate.goodImage = pickedImage
//        }
        
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            camera.contentMode = .scaleAspectFit
            camera.image = pickedImage
            
        }
        
        //withIdentifier: "imageEditVC"は遷移先のViewControllerのIdentifier。as! ImageEditVCは遷移先ののViewControllerの型名
//        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "kakouViewController") as! kakouViewController
//        picker.present(nextViewController, animated: true)
    }
   
    
    
    
//    @IBAction func nextpage() {
//        self.performSegue(withIdentifier: "idoy", sender: nil)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "tokakouView" {
            let kakouViewController = segue.destination as! kakouViewController
            kakouViewController.editedImage = self.camera
        }
    }

}

