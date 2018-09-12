//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class colores: UIViewController {
    
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
    
    var animacionAmarillo: [UIImage] = []
    var animacionAzul: [UIImage] = []
    var animacionBlanco :[UIImage] = []
    var animacionMorado :[UIImage] = []
    var animacionNaranja :[UIImage] = []
    var animacionNegro :[UIImage] = []
    var animacionRojo :[UIImage] = []
    var animacionRosa :[UIImage] = []
    var animacionVerde :[UIImage] = []
    
    var animacionAmarillo2: [UIImage] = []
    var animacionAzul2: [UIImage] = []
    var animacionBlanco2 :[UIImage] = []
    var animacionMorado2 :[UIImage] = []
    var animacionNaranja2 :[UIImage] = []
    var animacionNegro2 :[UIImage] = []
    var animacionRojo2 :[UIImage] = []
    var animacionRosa2 :[UIImage] = []
    var animacionVerde2 :[UIImage] = []
    
    @IBOutlet weak var lblPalabra: UILabel!
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "Yellow"
        
        Tap(audio: audio)
        animacionAmarillo2 = createImageArray(total: 24, prefijo: "Amarillo_2")
        animate(imageView: imageViewSuperior, images: animacionAmarillo2)
    }
    @IBAction func doTaoImg2(_ sender: Any) {
        audio = "Blue"
        
        Tap(audio: audio)
        animacionAzul2 = createImageArray(total: 24, prefijo: "Azul_2")
        animate(imageView: imageViewSuperior, images: animacionAzul2)
    }
    @IBAction func doTapImg3(_ sender: Any) {
        audio = "White"
        
        Tap(audio: audio)
        animacionBlanco2 = createImageArray(total: 24, prefijo: "Blanco_2")
        animate(imageView: imageViewSuperior, images: animacionBlanco2)
    }
    @IBAction func doTapImg4(_ sender: Any) {
        audio = "Purple"
        
        Tap(audio: audio)
        animacionMorado2 = createImageArray(total: 24, prefijo: "Morado_2")
        animate(imageView: imageViewSuperior, images: animacionMorado2)
    }
    @IBAction func doTapImg5(_ sender: Any) {
        audio = "Orange"
        
        Tap(audio: audio)
        animacionNaranja2 = createImageArray(total: 24, prefijo: "Naranja_2")
        animate(imageView: imageViewSuperior, images: animacionNaranja2)
    }
    @IBAction func doTapImg6(_ sender: Any) {
        audio = "Black"
        
        Tap(audio: audio)
        animacionNegro2 = createImageArray(total: 24, prefijo: "Negro_2")
        animate(imageView: imageViewSuperior, images: animacionNegro2)
    }
    @IBAction func doTapImg7(_ sender: Any) {
        audio = "Red"
        
        Tap(audio: audio)
        animacionRojo2 = createImageArray(total: 24, prefijo: "Rojo_2")
        animate(imageView: imageViewSuperior, images: animacionRojo2)
    }
    @IBAction func doTapimg8(_ sender: Any) {
        audio = "Pink"
        
        Tap(audio: audio)
        animacionRosa2 = createImageArray(total: 24, prefijo: "Rosa_2")
        animate(imageView: imageViewSuperior, images: animacionRosa2)
    }
    @IBAction func doTapimg9(_ sender: Any) {
        audio = "Green"
        
        Tap(audio: audio)
        animacionVerde2 = createImageArray(total: 24, prefijo: "Verde_2")
        animate(imageView: imageViewSuperior, images: animacionVerde2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animacionAmarillo = createImageArray(total: 24, prefijo: "Amarillo")
        animate(imageView: imageView1, images: animacionAmarillo)
        
        animacionAzul = createImageArray(total: 24, prefijo: "Azul")
        animate(imageView: imageView2, images: animacionAzul)
        
        animacionBlanco = createImageArray(total: 24, prefijo: "Blanco")
        animate(imageView: imageView3, images: animacionBlanco)
        
        animacionMorado = createImageArray(total: 24, prefijo: "Morado")
        animate(imageView: imageView4, images: animacionMorado)
        
        animacionNaranja = createImageArray(total: 24, prefijo: "Naranja")
        animate(imageView: imageView5, images: animacionNaranja)
        
        animacionNegro = createImageArray(total: 24, prefijo: "Negro")
        animate(imageView: imageView6, images: animacionNegro)
        
        animacionRojo = createImageArray(total: 24, prefijo: "Rojo")
        animate(imageView: imageView7, images: animacionRojo)
        
        animacionRosa = createImageArray(total: 24, prefijo: "Rosa")
        animate(imageView: imageView8, images: animacionRosa)
        
        animacionVerde = createImageArray(total: 24, prefijo: "Verde")
        animate(imageView: imageView9, images: animacionVerde)
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
