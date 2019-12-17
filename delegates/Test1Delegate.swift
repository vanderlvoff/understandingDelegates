//
//  Test1Delegate.swift
//  delegates
//
//  Created by リヴォーフ　ユーリ on 2019/12/17.
//  Copyright © 2019 リヴォーフ　ユーリ. All rights reserved.
//

import UIKit
protocol Test1Delegate: class {
    // デリゲート関数を定義
    func exeTest()
}

class Test1: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    weak var delegate: Test1Delegate?
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.delegate = self
        imageView = UIImageView(image: UIImage(named: "test"))
        // 2
//        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        // 3
        scrollView.contentSize = imageView.bounds.size
        // 4
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
    }

    // スクロール中（画面に指が触れている状態）に呼ばれるデリゲートメソッド
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Scroll")
        self.delegate?.exeTest()
    }
}
