//
//  Comment.swift
//  HelloSwift
//
//  Created by Ramis Wachtler on 29.10.15.
//  Copyright © 2015 Ramis Wachtler. All rights reserved.
//

import Foundation

class Comment {
    
    let postID: Int
    let id: Int
    let name: String
    let email: String
    let body: String
    
    
    init(){
        self.postID = -1
        self.id = -1
        self.name = ""
        self.email = ""
        self.body = ""
    }
    init(postID: Int, id: Int, name: String, email: String, body: String){
        self.postID = postID
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
