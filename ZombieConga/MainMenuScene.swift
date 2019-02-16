//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Alex Shubin on 13/04/2018.
//  Copyright © 2018 Alex Shubin. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(asset: .mainMenu)
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let scene = GameScene(size: size)
        scene.scaleMode = scaleMode
        view?.presentScene(scene,
                           transition: SKTransition.doorway(withDuration: 1.5))
    }
    
}
