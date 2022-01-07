//
//  TestDelegate.swift
//  swift_master
//
//  Created by admin on 2022/1/4.
//

import Foundation


public protocol TestDelegate {
    //    optional; @objc func viewPointClick(_ poi:Float)
    
    func sceneDidDisconnect(_ scene: Int)
    
    func sceneDidDisconnect2(_ scene: Float)
}

protocol  SomeProtocol
{
    var propertyOne: Int { get set }
    var propertyTwo: Int { get }
    static var propertyThree: Int { get set }
}
