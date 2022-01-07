//
//  StringExtension.swift
//  swift_master
//
//  Created by admin on 2022/1/6.
//

import Foundation
import Log4swift

extension String {
    func sayHello(_ name:String) -> String {
        Logger.debug("sayHello", name)
        return name
    }
}
