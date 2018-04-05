//
//  ViewController.swift
//  AilenPrjTIMER01
//
//  Created by D7703_19 on 2018. 4. 5..
//  Copyright © 2018년 s22dfg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    var de = true
    var re = true
    @IBOutlet weak var alienImageView: UIImageView!
    
    @IBOutlet weak var lbl01: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageView.image = UIImage(named: "frame\(counter).png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: Any) {
        if re == true {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
            re = false
        } else if re == false {
        myTimer.invalidate()
            re = true
        }
        
    }
    
    @objc func doAnimation(){
        if counter == 5{
            de = false
        } else if counter == 1{
            de = true
        }
        if de==false{
            counter = counter - 1
        } else {
            counter = counter + 1
        }
        
        
        alienImageView.image = UIImage(named: "frame\(counter).png")
        lbl01.text = String(counter)
    
}
}
