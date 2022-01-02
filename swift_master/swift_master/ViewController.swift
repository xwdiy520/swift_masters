//
//  ViewController.swift
//  swift_master
//
//  Created by admin on 2021/12/30.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let originArray=(404,"Not Found")
        print(originArray)
        FoundationTest.testRun("hello")
        FoundationTest.testRun(title: "hello Word !")
    }

}

