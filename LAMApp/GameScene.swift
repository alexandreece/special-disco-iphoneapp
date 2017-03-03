//
//  GameScene.swift
//  LAMApp
//
//  Created by Alexandre on 02/03/2017.
//  Copyright © 2017 LAMA. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var groupe1 : SKNode?
    var groupe2 : SKNode?
    var groupe3 : SKNode?
    var groupeJeux : SKNode?
    var chrono : SKLabelNode?
    let pointZero = CGPoint(x: 0, y: 0)
    var nextButton : SKNode?
    
    var timer = Timer()
    
    
    override func didMove(to view: SKView)
    {
        if let g1 = childNode(withName: "//PremiereManche")
        {
            groupe1 = g1
        }
        
        if let g2 = childNode(withName: "//DeuxiemeManche")
        {
            groupe2 = g2
        }
        
        if let g3 = childNode(withName: "//TroisiemeManche")
        {
            groupe3 = g3
        }
        if let gJeux = childNode(withName: "//ElementJeux")
        {
            groupeJeux = gJeux
        }
        if let ch = childNode(withName: "//Time") as? SKLabelNode
        {
            chrono = ch
        }
        
        groupeJeux?.isHidden = true
        
        
        
        
        
        nextButton = childNode(withName: "//NextButton")
        
        //nextButton = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        if (groupe1?.position == pointZero){
            groupe1?.run(SKAction.moveTo(y: -1900, duration: 0.5), completion:
                {
                    print("Premiere manche")
                    self.jeux()
            })
            
        }
        
        if (groupe2?.position == pointZero){
            groupe2?.run(SKAction.moveTo(y: -1900, duration: 0.5), completion:
                {
                    print("Deuxieme manche")
            })
            groupe3?.run(SKAction.move(to: pointZero, duration: 0.5), completion:
                {
                    print("Troisieme manche")
            })
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func jeux()
    {
        groupeJeux?.isHidden = false
        var count: Int = 60
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:
            { (timer) in
                
                if(count > 0)
                {
                    
                    count -= 1
                    self.chrono!.text = String (count)
                } else {
                    timer.invalidate()
                }
            //self.updateTime()
        })
        timer.fire()
        
    }
    
    func updateTime(){
        
}

}
