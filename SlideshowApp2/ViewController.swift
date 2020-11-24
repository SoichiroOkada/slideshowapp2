//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by straycat on 2020/11/21.
//  Copyright © 2020 soichiro.okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tozoomview2(_ sender: Any) {

        self.performSegue(withIdentifier: "toZoomView", sender: nil)

    }
    
    var timer_sec: Int = 0
    
    
    
    @IBOutlet weak var modorubotan: UIButton!
    @IBOutlet weak var susumubotan: UIButton!
    @IBOutlet weak var saiseiteisibotan: UIButton!
    @IBAction func viewTap(_ sender: Any) {
    }
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var buttun1: NSLayoutConstraint!
    @IBAction func saisei(_ sender: Any) {
    createTimer()
    play()

    }
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

    
    func play() {
        susumubotan.isEnabled = false
        modorubotan.isEnabled = false
        saiseiteisibotan.setTitle("停止",for: .normal)
        saiseiteisibotan.addTarget(self, action: , for: .touchUpInside)
    }
    
        func stop() {
        susumubotan.isEnabled = true
        modorubotan.isEnabled = true
        if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
        }
        
    }
    
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

    @IBAction func tapgesture(_ sender: Any) {
            self.performSegue(withIdentifier: "tozoomView", sender: nil)
        
    }
    var timer: Timer!
    func createTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.0,
                                     target: self,
            selector:#selector(updateTimer(_:)),
            userInfo:nil,
            repeats:true)
    }
    @objc func updateTimer(_ timer: Timer){
                 displayImageNumber += 1
                displayImage()}
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named:"0")
        


        // Do any additional setup after loading the view.
 
}
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){

    let ZoomViewController:zoomView = segue.destination as! zoomView
     
        ZoomViewController.x = displayImageNumber
    }
  
    
    
         @IBAction func unwind(_ segue: UIStoryboardSegue){
         }


    }


