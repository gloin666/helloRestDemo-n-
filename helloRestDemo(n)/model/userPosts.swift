//
//  userPosts.swift
//  helloRestDemo(n)
//
//  Created by mobapp02 on 29/01/2019.
//  Copyright © 2019 mobapp02. All rights reserved.
//

import Foundation


class UserPosts{
    
    var id:Int
    var userID:Int
    var title:String
    var body:String
    
    init(id:Int, userID:Int,title:String, body:String ) {
        self.id = id
        self.userID = userID
        self.title = title
        self.body = body
        
    }
}
