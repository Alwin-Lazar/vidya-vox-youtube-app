//
//  VidyaVox.swift
//  VidyaVox
//
//  Created by Alwin Lazar on 15/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import Foundation

class VidyaVox{
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    // to get data using this class 
    var imageURL: String {
        
        return _imageURL
    }
    
    var videoURL: String {
        
        return _videoURL
    }
    
    var videoTitle: String {
        
        return _videoTitle
    }
    
    // we use this class initializer to set the data
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        
    }
    
    
}
