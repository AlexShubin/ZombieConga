//
//  GameOverScene.swift
//  ZombieConga
//
//  Created by Alex Shubin on 09/04/2018.
//  Copyright © 2018 Alex Shubin. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    let won: Bool
    
    init(size: CGSize, won: Bool) {
        self.won = won
        super.init(size: size)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        let background: SKSpriteNode
        if won {
            background = SKSpriteNode(asset: .youWin)
            run(.playSoundFileNamed("win.wav", waitForCompletion: false))
        } else {
            background = SKSpriteNode(asset: .youLose)
            run(.playSoundFileNamed("lose.wav", waitForCompletion: false))
        }
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        run(.sequence([
            .wait(forDuration: 3),
            .run {
                let myScene = GameScene(size: self.size)
                myScene.scaleMode = self.scaleMode
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                self.view?.presentScene(myScene, transition: reveal)
            }
            ]))
    }
}
