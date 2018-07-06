//
//  ViewController.swift
//  AskmeAnything
//
//  Created by Donghee Lee on 7/5/18.
//  Copyright © 2018 jacob_lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomNumGen : Int = 0;
    var imageArray : Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var showImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        picturePicker()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerButton(_ sender: UIButton) {
        picturePicker()
    }
    
    func picturePicker() {
        randomNumGen = Int(arc4random_uniform(5))
        showImage.image = UIImage(named: imageArray[randomNumGen])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        picturePicker()
    }
    
}

