//
//  Network.swift
//  SwiftHttp
//
//  Created by Albin on 01/08/16.
//  Copyright © 2016 Albin. All rights reserved.
//


import Foundation


public class Http {
    
    
    //    public func headers(headers: [String: String]) -> Network {
    //        for (key, value) in headers {
    //            request.addValue(value, forHTTPHeaderField: key)
    //        }
    //        return self
    //    }

    
    public class func get(url: String, parameter: [String:AnyObject]?,headers: [String:String]?, completionHandler: (result: NSData!, error: NSError?) -> ()) {
        
        
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: url)!)
        
        if let header = headers{
            
            for (key, value) in header {
                request.addValue(value, forHTTPHeaderField: key)
            }
            
        }
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "GET"
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                completionHandler(result: nil, error: error)
            } else {
                completionHandler(result: data, error: nil)
            }
        })
        
        task.resume()
        
    }
    
    public class func post(url: String, parameter: [String:AnyObject]?,headers: [String:String]?, completionHandler: (result: NSData!, error: NSError?) -> ()) {
        
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: url)!)
        
        if let header = headers{
            
            for (key, value) in header {
                request.addValue(value, forHTTPHeaderField: key)
            }
            
        }
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                completionHandler(result: nil, error: error)
            } else {
                completionHandler(result: data, error: nil)
            }
        })
        
        task.resume()
        
    }
    
    public class func update(url: String, parameter: [String:AnyObject]?,headers: [String:String]?, completionHandler: (result: NSData!, error: NSError?) -> ()) {
        
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: url)!)
        
        if let header = headers{
            
            for (key, value) in header {
                request.addValue(value, forHTTPHeaderField: key)
            }
            
        }
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "UPDATE"
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                completionHandler(result: nil, error: error)
            } else {
                completionHandler(result: data, error: nil)
            }
        })
        
        task.resume()
        
    }
    
    public class func put(url: String, parameter: [String:AnyObject]?,headers: [String:String]?, completionHandler: (result: NSData!, error: NSError?) -> ()) {
        
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: url)!)
        
        if let header = headers{
            
            for (key, value) in header {
                request.addValue(value, forHTTPHeaderField: key)
            }
            
        }
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "PUT"
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                completionHandler(result: nil, error: error)
            } else {
                completionHandler(result: data, error: nil)
            }
        })
        
        task.resume()
        
    }
    
    public class func delete(url: String, parameter: [String:AnyObject]?,headers: [String:String]?, completionHandler: (result: NSData!, error: NSError?) -> ()) {
        
        let request: NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: url)!)
        
        if let header = headers{
            
            for (key, value) in header {
                request.addValue(value, forHTTPHeaderField: key)
            }
            
        }
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "DELETE"
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                completionHandler(result: nil, error: error)
            } else {
                completionHandler(result: data, error: nil)
            }
        })
        
        task.resume()
        
    }

    
    
}




