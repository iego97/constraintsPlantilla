//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class animalesSalvajes: UIViewController {
    
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
    
    var animacionDelfin: [UIImage] = []
    var animacionElefante: [UIImage] = []
    var animacionGorila :[UIImage] = []
    var animacionLeon :[UIImage] = []
    var animacionBuho :[UIImage] = []
    var animacionRino :[UIImage] = []
    var animacionBallena :[UIImage] = []
    var animacionLobo :[UIImage] = []
    var animacionJirafa :[UIImage] = []
    
    var animacionDelfin2: [UIImage] = []
    var animacionElefante2: [UIImage] = []
    var animacionGorila2 :[UIImage] = []
    var animacionLeon2 :[UIImage] = []
    var animacionBuho2 :[UIImage] = []
    var animacionRino2 :[UIImage] = []
    var animacionBallena2 :[UIImage] = []
    var animacionLobo2 :[UIImage] = []
    var animacionJirafa2 :[UIImage] = []
    
    @IBOutlet weak var lblPalabra: UILabel!
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "Dolphin"
        
        Tap(audio: audio)
        animacionDelfin2 = createImageArray(total: 24, prefijo: "delfin_2")
        animate(imageView: imageViewSuperior, images: animacionDelfin2)
    }
    @IBAction func doTaoImg2(_ sender: Any) {
        audio = "Elephant"
        
        Tap(audio: audio)
        animacionElefante2 = createImageArray(total: 24, prefijo: "elefante_2")
        animate(imageView: imageViewSuperior, images: animacionElefante2)
    }
    @IBAction func doTapImg3(_ sender: Any) {
        audio = "Gorilla"
        
        Tap(audio: audio)
        animacionGorila2 = createImageArray(total: 24, prefijo: "gorila_2")
        animate(imageView: imageViewSuperior, images: animacionGorila2)
    }
    @IBAction func doTapImg4(_ sender: Any) {
        audio = "Lion"
        
        Tap(audio: audio)
        animacionLeon2 = createImageArray(total: 24, prefijo: "leon_2")
        animate(imageView: imageViewSuperior, images: animacionLeon2)
    }
    @IBAction func doTapImg5(_ sender: Any) {
        audio = "Owl"
        
        Tap(audio: audio)
        animacionBuho2 = createImageArray(total: 24, prefijo: "buho_2")
        animate(imageView: imageViewSuperior, images: animacionBuho2)
    }
    @IBAction func doTapImg6(_ sender: Any) {
        audio = "Rhino"
        
        Tap(audio: audio)
        animacionRino2 = createImageArray(total: 24, prefijo: "rino_2")
        animate(imageView: imageViewSuperior, images: animacionRino2)
    }
    @IBAction func doTapImg7(_ sender: Any) {
        audio = "Whale"
        
        Tap(audio: audio)
        animacionBallena2 = createImageArray(total: 24, prefijo: "orca_2")
        animate(imageView: imageViewSuperior, images: animacionBallena2)
    }
    @IBAction func doTapimg8(_ sender: Any) {
        audio = "Wolf"
        
        Tap(audio: audio)
        animacionLobo2 = createImageArray(total: 24, prefijo: "lobo_2")
        animate(imageView: imageViewSuperior, images: animacionLobo2)
    }
    @IBAction func doTapimg9(_ sender: Any) {
        audio = "Giraffe"
        
        Tap(audio: audio)
        animacionJirafa2 = createImageArray(total: 24, prefijo: "jirafa_2")
        animate(imageView: imageViewSuperior, images: animacionJirafa2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animacionDelfin = createImageArray(total: 24, prefijo: "delfin")
        animate(imageView: imageView1, images: animacionDelfin)
        
        animacionElefante = createImageArray(total: 24, prefijo: "elefante")
        animate(imageView: imageView2, images: animacionElefante)
        
        animacionGorila = createImageArray(total: 24, prefijo: "gorila")
        animate(imageView: imageView3, images: animacionGorila)
        
        animacionLeon = createImageArray(total: 24, prefijo: "leon")
        animate(imageView: imageView4, images: animacionLeon)
        
        animacionBuho = createImageArray(total: 24, prefijo: "buho")
        animate(imageView: imageView5, images: animacionBuho)
        
        animacionRino = createImageArray(total: 24, prefijo: "rino")
        animate(imageView: imageView6, images: animacionRino)
        
        animacionBallena = createImageArray(total: 24, prefijo: "orca")
        animate(imageView: imageView7, images: animacionBallena)
        
        animacionLobo = createImageArray(total: 24, prefijo: "lobo")
        animate(imageView: imageView8, images: animacionLobo)
        
        animacionJirafa = createImageArray(total: 24, prefijo: "jirafa")
        animate(imageView: imageView9, images: animacionJirafa)
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
