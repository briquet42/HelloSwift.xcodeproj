//
//  CommentDataHandler.swift
//  HelloSwift
//
//  Created by Ramis Wachtler on 29.10.15.
//  Copyright © 2015 Ramis Wachtler. All rights reserved.
//

import Foundation
import UIKit

class CommentDataHandler {
    
    
    /**
     * Loads the data asynchroniously
     */
    class func loadCommentData(callback: ([Comment]) -> Void){
        
        let url = NSURL(string: "http://jsonplaceholder.typicode.com/comments")
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        
        activityIndicator.startAnimating()
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){(data, response, error) -> Void in
            if(error != nil){
                print(error!.localizedDescription)
            } else{
                let json = JSON(data: data!)
                let commentStack = CommentStack()
                
                for(_, value):(String, JSON) in json{
                    let comment = Comment(postID: value["postId"].intValue, id: value["id"].intValue, name: value["name"].string!, email: value["email"].string!, body: value["body"].string!)
                    commentStack.push(comment)
                }
                callback(commentStack.getComments())
                activityIndicator.stopAnimating()
            }
        }
        
        task.resume()
    }
}
