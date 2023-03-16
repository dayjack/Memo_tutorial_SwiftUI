//
//  MemoVO.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import Foundation

struct MemoVO {
    
    var title: String = ""
    var context: String = ""
    var date: Date {
        return Date.now
    }
    
}
