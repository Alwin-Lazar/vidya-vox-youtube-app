//
//  VIdyaCell.swift
//  VidyaVox
//
//  Created by Alwin Lazar on 15/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class VidyaCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // using model class vidyaVox to update the UI
    func updateUI(vidyaVox: VidyaVox) {
        
        videoTitle.text = vidyaVox.videoTitle
        
        let url = URL(string: vidyaVox.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    
                    self.videoPreviewImage.image = UIImage(data: data)
                }
                
            } catch {
                //handle the error
            }
        }
        
    }
    
}
