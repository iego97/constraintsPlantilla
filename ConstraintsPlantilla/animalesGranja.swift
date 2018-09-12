//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class animalesGranja: UIViewController {
    
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
    
    var animacionToro: [UIImage] = []
    var animacionGallina: [UIImage] = []
    var animacionVaca :[UIImage] = []
    var animacionPerro :[UIImage] = []
    var animacionBurro :[UIImage] = []
    var animacionCaballo :[UIImage] = []
    var animacionCerdito :[UIImage] = []
    var animacionGallo :[UIImage] = []
    var animacionOveja :[UIImage] = []
    
    var animacionToro2: [UIImage] = []
    var animacionGallina2: [UIImage] = []
    var animacionVaca2 :[UIImage] = []
    var animacionPerro2 :[UIImage] = []
    var animacionBurro2 :[UIImage] = []
    var animacionCaballo2 :[UIImage] = []
    var animacionCerdito2 :[UIImage] = []
    var animacionGallo2 :[UIImage] = []
    var animacionOveja2 :[UIImage] = []
    
    @IBOutlet weak var lblPalabra: UILabel!
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "Bull"
        
        Tap(audio: audio)
        animacionToro2 = createImageArray(total: 24, prefijo: "Toro_2")
        animate(imageView: imageViewSuperior, images: animacionToro2)
    }
    @IBAction func doTaoImg2(_ sender: Any) {
        audio = "Chiken"
        
        Tap(audio: audio)
        animacionGallina2 = createImageArray(total: 24, prefijo: "Gallina_2")
        animate(imageView: imageViewSuperior, images: animacionGallina2)
    }
    @IBAction func doTapImg3(_ sender: Any) {
        audio = "Cow"
        
        Tap(audio: audio)
        animacionVaca2 = createImageArray(total: 24, prefijo: "Vaca_2")
        animate(imageView: imageViewSuperior, images: animacionVaca2)
    }
    @IBAction func doTapImg4(_ sender: Any) {
        audio = "Dog"
        
        Tap(audio: audio)
        animacionPerro2 = createImageArray(total: 24, prefijo: "Perro_2")
        animate(imageView: imageViewSuperior, images: animacionPerro2)
    }
    @IBAction func doTapImg5(_ sender: Any) {
        audio = "Donkey"
        
        Tap(audio: audio)
        animacionBurro2 = createImageArray(total: 24, prefijo: "Burro_2")
        animate(imageView: imageViewSuperior, images: animacionBurro2)
    }
    @IBAction func doTapImg6(_ sender: Any) {
        audio = "Horse"
        
        Tap(audio: audio)
        animacionCaballo2 = createImageArray(total: 24, prefijo: "Caballo_2")
        animate(imageView: imageViewSuperior, images: animacionCaballo2)
    }
    @IBAction func doTapImg7(_ sender: Any) {
        audio = "Pork"
        
        Tap(audio: audio)
        animacionCerdito2 = createImageArray(total: 24, prefijo: "Cerdito_2")
        animate(imageView: imageViewSuperior, images: animacionCerdito2)
    }
    @IBAction func doTapimg8(_ sender: Any) {
        audio = "Rooster"
        
        Tap(audio: audio)
        animacionGallo2 = createImageArray(total: 24, prefijo: "Gallo_2")
        animate(imageView: imageViewSuperior, images: animacionGallo2)
    }
    @IBAction func doTapimg9(_ sender: Any) {
        audio = "Sheep"
        
        Tap(audio: audio)
        animacionOveja2 = createImageArray(total: 24, prefijo: "Oveja_2")
        animate(imageView: imageViewSuperior, images: animacionOveja2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animacionToro = createImageArray(total: 24, prefijo: "Toro")
        animate(imageView: imageView1, images: animacionToro)
        
        animacionGallina = createImageArray(total: 24, prefijo: "Gallina")
        animate(imageView: imageView2, images: animacionGallina)
        
        animacionVaca = createImageArray(total: 24, prefijo: "Vaca")
        animate(imageView: imageView3, images: animacionVaca)
        
        animacionPerro = createImageArray(total: 24, prefijo: "Perro")
        animate(imageView: imageView4, images: animacionPerro)
        
        animacionBurro = createImageArray(total: 24, prefijo: "Burro")
        animate(imageView: imageView5, images: animacionBurro)
        
        animacionCaballo = createImageArray(total: 24, prefijo: "Caballo")
        animate(imageView: imageView6, images: animacionCaballo)
        
        animacionCerdito = createImageArray(total: 24, prefijo: "Cerdito")
        animate(imageView: imageView7, images: animacionCerdito)
        
        animacionGallo = createImageArray(total: 24, prefijo: "Gallo")
        animate(imageView: imageView8, images: animacionGallo)
        
        animacionOveja = createImageArray(total: 24, prefijo: "Oveja")
        animate(imageView: imageView9, images: animacionOveja)
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

