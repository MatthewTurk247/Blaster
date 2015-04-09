//
//  ShooterScene.swift
//  Blaster
//
//  Created by Matthew Turk on 4/4/15.
//  Copyright (c) 2015 Turk Enterprises. All rights reserved.
//

import UIKit
import SpriteKit

class ShooterScene: SKScene {
    
    var score = 0
    var enemyCount = 10
     override func didMoveToView(view: SKView) {
        
    }
    //setup
    
    //play aniimation
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

            
        }
    
    //create bullet node with code instead of interface builder
    
    func createBulletNode() -> SKSpriteNode {
        
        let shooterNode = self.childNodeWithName("shooterNode")
        let shooterPosition = shooterNode?.position
        let shooterWidth = shooterNode?.frame.size.width
        
        let bullet = SKSpriteNode(imageNamed: "bullet");
        bullet.position = CGPointMake(shooterPosition!.x + shooterWidth!/2, shooterPosition!.y)
        bullet.name = "bullet"
        bullet.physicsBody = SKPhysicsBody(rectangleOfSize: bullet.frame.size)
        bullet.physicsBody?.usesPreciseCollisionDetection = true
        
        return bullet
        
    }
    
    }
