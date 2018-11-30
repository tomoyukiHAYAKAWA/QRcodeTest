//
//  ViewController.swift
//  QRcodeTest
//
//  Created by Tomoyuki Hayakawa on 2018/11/03.
//  Copyright © 2018 Tomoyuki Hayakawa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {

    @IBOutlet weak var stringLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func openCameraBtn(_ sender: Any) {
        
    }
    
    // 画面遷移する
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のVC
        let scanVC = segue.destination as! ScanViewController
        // ここに遷移で処理されて内容が戻ってくる
        scanVC.resultHandler = { getString in
            // この中でいろいろやる
            // テキストの分割とか
            self.stringLabel.text = getString
        
        }
    }
}


