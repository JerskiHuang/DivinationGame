//
//  ViewController.swift
//  DivinationGame
//
//  Created by Jerski on 2021/12/30.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    
    @IBOutlet weak var showDivinationImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var imageNumber = 0
    let divinationImage = [1, 2, 3]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let skView = SKView(frame: view.frame)
        skView.backgroundColor = .clear
        view.insertSubview(skView, at: 1)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.backgroundColor = .clear
        let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
   
    }
    func throwDivination () {
            //random number
            let index = Int.random(in: 0...12)
            showDivinationImage.image = UIImage(named: "\(index)")
            //based on the randon number connect to the different result
            if index == 3 {
                resultLabel.text = "Bad"
            }else if index == 2 {
                resultLabel.text = "Good"
            }else if index == 1{
                resultLabel.text = "Smile"
            }
        
        }

    @IBAction func executeThrow(_ sender: Any) {
        
        throwDivination()
               
    }
    
}

