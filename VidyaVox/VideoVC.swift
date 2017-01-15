//
//  VideoVC.swift
//  VidyaVox
//
//  Created by Alwin Lazar on 15/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var tittleLbl: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    
    private var _vidyaVox: VidyaVox!
    
    //getters and setters
    var vidyaVox: VidyaVox {
        get {
            
            return _vidyaVox
            
        } set {
            
            _vidyaVox = newValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tittleLbl.text = vidyaVox.videoTitle
        
        webView.loadHTMLString(vidyaVox.videoURL, baseURL: nil)
     
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}




















