//
//  EmotionsViewController.swift
//  FunnyFace
//
//  Created by Jing Gao on 28/8/17.
//  Copyright © 2017 Jing Gao. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {
    
    
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination
        if let faceViewController = destinationViewController as? FaceViewController,
            let identifier = segue.identifier,
            let expression = emotionalFaces[identifier] {
            faceViewController.expression = expression
            
        }
    }
    
    private let emotionalFaces: Dictionary<String,FacialExpression> = [
        "sad" : FacialExpression(eyes: .closed, mouth: .frown),
        "happy" : FacialExpression(eyes: .open, mouth: .smile),
        "worried" : FacialExpression(eyes: .open, mouth: .smirk)
        
    ]
    
    
}
