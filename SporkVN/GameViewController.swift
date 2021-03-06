//
//  GameViewController.swift
//  SporkVN
//
//  Created by James on 2/5/16.
//  Copyright (c) 2016 James Briones. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = self.view as! SKView
        let scene = VNTestScene(size: skView.frame.size)
        //let scene = LazyScene(size: skView.frame.size)
        //skView.showsFPS = true
        //skView.showsNodeCount = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView.ignoresSiblingOrder = true
        
        /* Set the scale mode to scale to fit the window */
        scene.scaleMode = SKSceneScaleMode.aspectFill //.aspectFill
        
        skView.presentScene(scene)
        //}
    }

    
    override var shouldAutorotate: Bool {
        return true
    }

    /*
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        /*if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }*/
        
        return .landscape
    }*/
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    /*override func prefersStatusBarHidden() -> Bool {
        return true
    }*/
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
