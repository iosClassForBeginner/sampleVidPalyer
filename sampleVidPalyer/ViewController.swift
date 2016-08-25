//
//  ViewController.swift
//  sampleVidPalyer
//
//  Created by Wataru Maeda on 3/12/16.
//  Copyright © 2016 wataru maeda. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func playVid(sender: AnyObject)
    {
        let path = NSBundle.mainBundle().pathForResource("dog", ofType: "mp4")
        let url = NSURL.fileURLWithPath(path!)
        
        let player = MPMoviePlayerViewController(contentURL: url)
        player.moviePlayer.fullscreen = true
        self.presentMoviePlayerViewControllerAnimated(player)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

