//
//  SnakeHeadPart.swift
//  snake
//
//  Created by Aleksandr on 26.11.22.
//

import UIKit
import SpriteKit

 class SnakeHead: SnakeBodyPart {
     override init(atPoint point: CGPoint) {
         super.init(atPoint: point)
         self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
         self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake
     }
     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
 }
