//
//  ViewController.swift
//  delegates
//
//  Created by リヴォーフ　ユーリ on 2019/12/17.
//  Copyright © 2019 リヴォーフ　ユーリ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Test1Delegate {

    func exeTest() {
        print("ここを実行したい")
    }

    override func viewDidLoad() {

        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let exe = segue.destination as? Test1{
            exe.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

