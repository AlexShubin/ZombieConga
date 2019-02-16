//
//  SKSpriteNode+.swift
//  ZombieConga
//
//  Created by Alex Shubin on 19/03/2018.
//  Copyright © 2018 Alex Shubin. All rights reserved.
//

import SpriteKit

extension SKSpriteNode {
    convenience init(asset: Asset) {
        self.init(imageNamed: asset.rawValue)
    }
}

extension SKTexture {
    convenience init(asset: Asset) {
        self.init(imageNamed: asset.rawValue)
    }
}

enum Asset: String {
    case background1
    case background2
    case cat
    case enemy
    case youWin
    case youLose
    case zombie1
    case zombie2
    case zombie3
    case zombie4
    case mainMenu
}
