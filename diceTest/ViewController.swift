//
//  ViewController.swift
//  diceTest
//
//  Created by 松村敬太 on 2018/04/21.
//  Copyright © 2018年 KeitaMatsumura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var img1 :UIImage = UIImage(named:"sai1.gif")!
    var img2 :UIImage = UIImage(named:"sai2.gif")!
    var img3 :UIImage = UIImage(named:"sai3.gif")!
    var img4 :UIImage = UIImage(named:"sai4.gif")!
    var img5 :UIImage = UIImage(named:"sai5.gif")!
    var img6 :UIImage = UIImage(named:"sai6.gif")!
    
    var imgArray:[UIImage] = []
//    @IBOutlet weak var diceView: UILabel!
    
    @IBOutlet weak var diceView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tumblingDice(_ sender: Any) {
        //rundomな値を生成
        let rundomNum = arc4random_uniform(6)
        let diceNum = Int(rundomNum)
        //diceViewに代入
//        diceView.text = String(diceNum)
        //diceNumに応じて画像を切り替える
        imgArray = [img1,img2,img3,img4,img5,img6]
        diceView.image = imgArray[diceNum]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

