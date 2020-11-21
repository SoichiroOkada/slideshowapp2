//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by straycat on 2020/11/21.
//  Copyright © 2020 soichiro.okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func viewTap(_ sender: Any) { 
    }
    @IBOutlet weak var imageView: UIImageView!


    @IBAction func modoru(_ sender: Any) {
        // 表示している画像の番号を1減らす
        displayImageNumber -= 1

        // 表示している画像の番号を元に画像を表示する
        displayImage()
    }
    @IBAction func susumu(_ sender: Any) {
        // 表示している画像の番号を1増やす
         displayImageNumber += 1

         // 表示している画像の番号を元に画像を表示する
         displayImage()}
    
    var displayImageNumber = 0
    
    func displayImage() {
    // 画像の名前の配列
        let imageNameArray = [
            "0",
            "1",
            "2",
        ]
        // 範囲より下を指している場合、最後の画像を表示
        if displayImageNumber < 0 {
           displayImageNumber = 2
        }

        // 範囲より上を指している場合、最初の画像を表示
        if displayImageNumber > 2 {
           displayImageNumber = 0
        }

        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[displayImageNumber]

        // 画像を読み込み
        let image = UIImage(named: name)

        // Image Viewに読み込んだ画像をセット
        imageView.image = image
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.performSegue(withIdentifier: "tozoomView", sender: nil)
        
        // Do any additional setup after loading the view.
 
}
    
         @IBAction func unwind(_ segue: UIStoryboardSegue){
         }


    }


