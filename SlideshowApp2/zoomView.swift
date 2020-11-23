//
//  zoomView.swift
//  SlideshowApp2
//
//  Created by straycat on 2020/11/21.
//  Copyright © 2020 soichiro.okada. All rights reserved.
//

import UIKit

class zoomView: UIViewController {

    var x: Int = 0
    
    @IBOutlet weak var zoomimage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
        func displayImage() {
        // 画像の名前の配列
            let imageNameArray = [
                "0",
                "1",
                "2",
            ]
        // 表示している画像の番号から名前を取り出し
            let name = imageNameArray[x]

            // 画像を読み込み
            let image = UIImage(named: name)


            zoomimage.image = image
        }
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
  
