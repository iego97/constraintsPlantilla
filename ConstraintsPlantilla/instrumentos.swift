//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class instrumentos: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    
    @IBOutlet weak var imageViewSuperior: UIImageView!
    
    @IBAction func doTapAtras(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var animacionAcordeon: [UIImage] = []
    var animacionBajo: [UIImage] = []
    var animacionBateria :[UIImage] = []
    var animacionGuitarra :[UIImage] = []
    var animacionPiano :[UIImage] = []
    var animacionSaxofon :[UIImage] = []
    var animacionTrompeta :[UIImage] = []
    var animacionViolin :[UIImage] = []
    var animacionXilofono :[UIImage] = []
    
    var animacionAcordeon2: [UIImage] = []
    var animacionBajo2: [UIImage] = []
    var animacionBateria2 :[UIImage] = []
    var animacionGuitarra2 :[UIImage] = []
    var animacionPiano2 :[UIImage] = []
    var animacionSaxofon2 :[UIImage] = []
    var animacionTrompeta2 :[UIImage] = []
    var animacionViolin2 :[UIImage] = []
    var animacionXilofono2 :[UIImage] = []
    
    @IBOutlet weak var lblPalabra: UILabel!
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "Accordion"
        
        Tap(audio: audio)
        animacionAcordeon2 = createImageArray(total: 24, prefijo: "Acordeon_2")
        animate(imageView: imageViewSuperior, images: animacionAcordeon2)
    }
    @IBAction func doTaoImg2(_ sender: Any) {
        audio = "Bass"
        
        Tap(audio: audio)
        animacionBajo2 = createImageArray(total: 24, prefijo: "Bajo_2")
        animate(imageView: imageViewSuperior, images: animacionBajo2)
    }
    @IBAction func doTapImg3(_ sender: Any) {
        audio = "Drums"
        
        Tap(audio: audio)
        animacionBateria2 = createImageArray(total: 24, prefijo: "Bateria_2")
        animate(imageView: imageViewSuperior, images: animacionBateria2)
    }
    @IBAction func doTapImg4(_ sender: Any) {
        audio = "Guitar"
        
        Tap(audio: audio)
        animacionGuitarra2 = createImageArray(total: 24, prefijo: "Guitarra_2")
        animate(imageView: imageViewSuperior, images: animacionGuitarra2)
    }
    @IBAction func doTapImg5(_ sender: Any) {
        audio = "Piano"
        
        Tap(audio: audio)
        animacionPiano2 = createImageArray(total: 24, prefijo: "Piano_2")
        animate(imageView: imageViewSuperior, images: animacionPiano2)
    }
    @IBAction func doTapImg6(_ sender: Any) {
        audio = "Saxophone"
        
        Tap(audio: audio)
        animacionSaxofon2 = createImageArray(total: 24, prefijo: "Saxofon_2")
        animate(imageView: imageViewSuperior, images: animacionSaxofon2)
    }
    @IBAction func doTapImg7(_ sender: Any) {
        audio = "Trumpet"
        
        Tap(audio: audio)
        animacionTrompeta2 = createImageArray(total: 24, prefijo: "Trompeta_2")
        animate(imageView: imageViewSuperior, images: animacionTrompeta2)
    }
    @IBAction func doTapimg8(_ sender: Any) {
        audio = "Violin"
        
        Tap(audio: audio)
        animacionViolin2 = createImageArray(total: 24, prefijo: "violin_2")
        animate(imageView: imageViewSuperior, images: animacionViolin2)
    }
    @IBAction func doTapimg9(_ sender: Any) {
        audio = "Xylophone"
        
        Tap(audio: audio)
        animacionXilofono2 = createImageArray(total: 24, prefijo: "Xilo_fono_2")
        animate(imageView: imageViewSuperior, images: animacionXilofono2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animacionAcordeon = createImageArray(total: 24, prefijo: "Acordeon")
        animate(imageView: imageView1, images: animacionAcordeon)
        
        animacionBajo = createImageArray(total: 24, prefijo: "Bajo")
        animate(imageView: imageView2, images: animacionBajo)
        
        animacionBateria = createImageArray(total: 24, prefijo: "Bateria_")
        animate(imageView: imageView3, images: animacionBateria)
        
        animacionGuitarra = createImageArray(total: 24, prefijo: "Guitarra")
        animate(imageView: imageView4, images: animacionGuitarra)
        
        animacionPiano = createImageArray(total: 24, prefijo: "Piano")
        animate(imageView: imageView5, images: animacionPiano)
        
        animacionSaxofon = createImageArray(total: 24, prefijo: "Saxofon")
        animate(imageView: imageView6, images: animacionSaxofon)
        
        animacionTrompeta = createImageArray(total: 24, prefijo: "Trompeta")
        animate(imageView: imageView7, images: animacionTrompeta)
        
        animacionViolin = createImageArray(total: 24, prefijo: "violin")
        animate(imageView: imageView8, images: animacionViolin)
        
        animacionXilofono = createImageArray(total: 24, prefijo: "Xilo_fono")
        animate(imageView: imageView9, images: animacionXilofono)
    }

    func createImageArray(total: Int, prefijo: String) -> [UIImage]
    {
        var imageArray:[UIImage] = []
        
        for imageCount in 0..<total {
            if(imageCount < 10){
                let imageName = "\(prefijo)_0000\(imageCount)"
                let image = UIImage (named: imageName)
                imageArray.append(image!)
            }else {
                let imageName = "\(prefijo)_000\(imageCount)"
                let image = UIImage (named: imageName)
                imageArray.append(image!)
            }
        }
        
        return imageArray
    }
    
    func animate(imageView: UIImageView, images: [UIImage])
    {
        imageView.animationImages = images
        imageView.animationDuration = 2.0
        imageView.animationRepeatCount = -1
        imageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func Tap(audio : String){
        let urlSonido = URL(fileURLWithPath: Bundle.main.path(forResource: audio, ofType: "wav")!)
        
        do{
            player = try AVAudioPlayer(contentsOf: urlSonido)
            player.prepareToPlay()
            player.play()
            
            lblPalabra.text = audio
            
        }catch{
            
        }
    }
}

