//
//  ViewController.swift
//  swift_master
//
//  Created by admin on 2021/12/30.
//

import UIKit
import Log4swift

typealias CheckCallBack = (_ name:String)->()
enum UserError: Error {
    case invalidCount, dataTooLong
}
class ViewController: UIViewController, TestDelegate{
    func sceneDidDisconnect(_ scene: Int) {
        
    }
    
    func sceneDidDisconnect2(_ scene: Float) {
        
    }
    
    
    var testView: UIView!
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        let view  = UIView(frame: CGRect(x: 24, y: 64, width: 100, height: 100))
        view.backgroundColor=UIColor.red
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.testGesture(_:))))
        self.testView=view
        self.view.addSubview(self.testView)
        
         
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let originArray=(404,"Not Found")
//        print(originArray)
//        let na="hello".sayHello("good !")
//        FoundationTest.testRun("hello".sayHello("good !"))
//        FoundationTest.testRun(title: "hello Word !")
//    }
    
    @objc func testGesture(_ recognizer:UITapGestureRecognizer) {
//        FoundationTest.testRun("testGesture")
//          self.checkStatus("3344520") { name in
//
//        }
//        self.checkStatus2("3344520") { name in
//
//        }
        Task {
                await updateUsers()
           }
        
    }
    
    
    func checkStatus(_ name:String?,_ checkCallBack:CheckCallBack) -> Void {
        checkCallBack("1314520")
    }

    func checkStatus2(_ name:String?,_ checkCallBack:CheckCallBack) -> Void {
        
    }
    
    func updateUsers() async {
        do {
            let users = try await fetchUsers(count: 3)
            
            print(users)
        } catch {
            print("Oops!")
            
        }
    }
    
    func fetchUsers(count: Int) async throws -> [String] {
        if count > 3 {
            throw UserError.invalidCount
        }

        return Array(["Antoni", "Karamo", "Tan"].prefix(count))
    }
}

