//
//  kakouViewController.swift
//  original
//
//  Created by 吉原央賀 on 2018/12/11.
//  Copyright © 2018 吉原央賀. All rights reserved.
//

import UIKit

class kakouViewController: UIViewController {


    
//    @IBOutlet weak var confirmPhotoView: UIImageView!
    var camera: UIImage!
    
    @IBOutlet var  editedImage : UIImageView!
    
//    var image: UIImage? = nil
//    var saveimage: UserDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editedImage.image = self.camera
        
     
        //        camera.image = saveimage.object(forKey: "ouga") as? UIImage
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
}
