//
//  GameViewController.swift
//  snake
//
//  Created by Aleksandr on 26.11.22.
//

import UIKit
 import SpriteKit
 import GameplayKit

 class GameViewController: UIViewController {

     override func viewDidLoad() {
         super.viewDidLoad()

         let scene = GameScene(size: view.bounds.size)
         let sckView = view as! SKView
         sckView.showsFPS = true
         sckView.showsNodeCount = true
         sckView.ignoresSiblingOrder = true
         scene.scaleMode = .resizeFill
         sckView.presentScene(scene)

     }

     override var shouldAutorotate: Bool {
         return true
     }

     override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
         if UIDevice.current.userInterfaceIdiom == .phone {
             return .allButUpsideDown
         } else {
             return .all
         }
     }

     override var prefersStatusBarHidden: Bool {
         return true
     }
 }
