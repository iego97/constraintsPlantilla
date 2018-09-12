//
//  Inicio.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 11/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class Inicio: UIViewController{
    
      var player = AVAudioPlayer()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let urlSonido = URL(fileURLWithPath: Bundle.main.path(forResource: "CancionFondo", ofType: "wav")!)
        
        do{
        player = try AVAudioPlayer(contentsOf: urlSonido)
        player.prepareToPlay()
        player.volume = 0.1
        player.play()
        player.numberOfLoops = -1
        }catch{}
    }
    
}
