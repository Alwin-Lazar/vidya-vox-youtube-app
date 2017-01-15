//
//  ViewController.swift
//  VidyaVox
//
//  Created by Alwin Lazar on 15/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var vidyaVoxes = [VidyaVox]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = VidyaVox(imageURL: "https://i.ytimg.com/vi/kN1D8p2Fc6U/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kN1D8p2Fc6U\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Cheap Thrills")
        
        let v2 = VidyaVox(imageURL: "https://i.ytimg.com/vi/eiGdsH1g20k/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eiGdsH1g20k\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Be Free")
        
        let v3 = VidyaVox(imageURL: "https://i.ytimg.com/vi/Spfaub0sVk0/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Spfaub0sVk0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Chainsmokers")
        
        let v4 = VidyaVox(imageURL: "https://i.ytimg.com/vi/9ZsRQNUQ8Vo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9ZsRQNUQ8Vo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Taylor Swift")
        
        let v5 = VidyaVox(imageURL: "https://i.ytimg.com/vi/5nyFfZnsyNY/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5nyFfZnsyNY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kerala Boat Song")
        
        vidyaVoxes.append(v1)
        vidyaVoxes.append(v2)
        vidyaVoxes.append(v3)
        vidyaVoxes.append(v4)
        vidyaVoxes.append(v5)
        
        tableView.delegate = self
        tableView.dataSource = self
    
      
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "vidyaCellId", for: indexPath) as? VidyaCell {
            
            let vidyaVox = vidyaVoxes[indexPath.row]
            cell.updateUI(vidyaVox: vidyaVox)
            
            return cell
        } else {
            
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vidyaVoxes.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vidyaVox = vidyaVoxes[indexPath.row]
        
        // data passed through segue
        performSegue(withIdentifier: "VideoVC", sender: vidyaVox)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let vidya = sender as? VidyaVox {
                
                destination.vidyaVox = vidya
            }
        }
    }
    
}




















