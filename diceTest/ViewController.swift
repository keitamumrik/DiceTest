//
//  ViewController.swift
//  diceTest
//
//  Created by 松村敬太 on 2018/04/21.
//  Copyright © 2018年 KeitaMatsumura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tumblingDice(_ sender: Any) {
        //rundomな値を生成
        let rundomNum = arc4random_uniform(6)
        let diceNum = rundomNum + 1
        //diceViewに代入
        diceView.text = String(diceNum)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

