//
//  PostParcer.swift
//  helloRestDemo(n)
//
//  Created by mobapp02 on 29/01/2019.
//  Copyright © 2019 mobapp02. All rights reserved.
//

import Foundation


class PostParcer{
    
    static func getAllPosts() -> [UserPosts]{
        //op welke adres staat data?
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/posts")!
        var posts = [UserPosts]()
        //indien iets faalt zoals geen verbinding, verkeerde data, ...
        do{
          //ruwe data opvangen van URL
            let data = try Data.init(contentsOf: url)
            print(data)
            //data start met een array, data laten omzetten naar array van object
            let JsonArray = try JSONSerialization.jsonObject(with: data) as! [NSObject]
            
            //array overlopen
            for item in JsonArray {
                
                // value for key geeft generiek opject terug moetten we nog casten
                let id     = item.value(forKey: "id")     as! Int
                let UserID = item.value(forKey: "userId") as! Int
                let title  = item.value(forKey: "title")  as! String
                let body   = item.value(forKey: "body")   as! String
                
                let currentPost = UserPosts.init(id: id, userID: UserID, title: title, body: body)
                
                posts.append(currentPost)
            }
            
            
        }catch{
            print("\'t werkt ni")
            
        }
        
        return posts
 }
}
