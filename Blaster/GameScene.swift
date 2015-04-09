//
//  GameScene.swift
//  Blaster
//
//  Created by Matthew Turk on 4/4/15.
//  Copyright (c) 2015 Turk Enterprises. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        let introLabel = childNodeWithName("introLabel")
        if(introLabel != nil) {
            
            let fadeOut = SKAction.fadeOutWithDuration(1.5)
            introLabel?.runAction(fadeOut, completion:{let doors = SKTransition.doorwayWithDuration(1.5)})
            let shooterScene = ShooterScene(fileNamed: "ShooterScene")
            self.view?.presentScene(shooterScene, transition: SKTransition.doorwayWithDuration(1.5))
        }
       
        }
    }
   
    func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

