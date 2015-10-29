//
//  CommentStack.swift
//  HelloSwift
//
//  Created by Ramis Wachtler on 29.10.15.
//  Copyright © 2015 Ramis Wachtler. All rights reserved.
//

import Foundation

class CommentStack{
    
    var stack: [Comment];
    
    init(){
        stack = [Comment]()
    }
    
    internal func push(comment: Comment){
        stack.append(comment)
    }
    
    /**
     * Search for a 'Comment' object inside the stack by providing a String key
     * @return : 'Comment' object
     */
    internal func getCommentByStringKey(key: String) -> Comment{
        let comment: Comment = Comment()
        /* TODO: Search for a key inside the stack */
        return comment
    }
    
    /**
     * Get all objects from stack
     * @return : Array of 'Comment' objects
     */
    internal func getComments() -> [Comment]{
        return self.stack
    }
}