//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "vaca"
        imagen = ""
        
        Tap(imagen: imagen, audio: audio)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func Tap(imagen : UIImage, audio : String){
        let urlSonido = URL(fileURLWithPath: Bundle.main.path(forResource: audio, ofType: "wav")!)
        
        do{
            player = try AVAudioPlayer(contentsOf: urlSonido)
            player.prepareToPlay()
            player.play()
        }catch{
            
        }
    }
}

