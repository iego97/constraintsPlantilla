//
//  ViewController.swift
//  ConstraintsPlantilla
//
//  Created by Alumno on 05/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class vehiculos: UIViewController {
    
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
    
    var animacionBici: [UIImage] = []
    var animacionBote: [UIImage] = []
    var animacionBus :[UIImage] = []
    var animacionCar :[UIImage] = []
    var animacionHeli :[UIImage] = []
    var animacionMoto :[UIImage] = []
    var animacionPlane :[UIImage] = []
    var animacionSub :[UIImage] = []
    var animacionTrain :[UIImage] = []
    
    var animacionBici2: [UIImage] = []
    var animacionBote2: [UIImage] = []
    var animacionBus2 :[UIImage] = []
    var animacionCar2 :[UIImage] = []
    var animacionHeli2 :[UIImage] = []
    var animacionMoto2 :[UIImage] = []
    var animacionPlane2 :[UIImage] = []
    var animacionSub2 :[UIImage] = []
    var animacionTrain2 :[UIImage] = []
    
    @IBOutlet weak var lblPalabra: UILabel!
    var player = AVAudioPlayer()
    var imagen = UIImage()
    var audio : String = ""
    
    
    @IBAction func doTapImg1(_ sender: Any) {
        audio = "Bicycle"
        
        Tap(audio: audio)
        animacionBici2 = createImageArray(total: 24, prefijo: "bici_2")
        animate(imageView: imageViewSuperior, images: animacionBici2)
    }
    @IBAction func doTaoImg2(_ sender: Any) {
        audio = "Boat"
        
        Tap(audio: audio)
        animacionBote2 = createImageArray(total: 24, prefijo: "barco_2")
        animate(imageView: imageViewSuperior, images: animacionBote2)
    }
    @IBAction func doTapImg3(_ sender: Any) {
        audio = "Bus"
        
        Tap(audio: audio)
        animacionBus2 = createImageArray(total: 24, prefijo: "Camion_2")
        animate(imageView: imageViewSuperior, images: animacionBus2)
    }
    @IBAction func doTapImg4(_ sender: Any) {
        audio = "Car"
        
        Tap(audio: audio)
        animacionCar2 = createImageArray(total: 24, prefijo: "carro_2")
        animate(imageView: imageViewSuperior, images: animacionCar2)
    }
    @IBAction func doTapImg5(_ sender: Any) {
        audio = "Helicopter"
        
        Tap(audio: audio)
        animacionHeli2 = createImageArray(total: 24, prefijo: "helicoptero_2")
        animate(imageView: imageViewSuperior, images: animacionHeli2)
    }
    @IBAction func doTapImg6(_ sender: Any) {
        audio = "Motorcycle"
        
        Tap(audio: audio)
        animacionMoto2 = createImageArray(total: 24, prefijo: "moto_2")
        animate(imageView: imageViewSuperior, images: animacionMoto2)
    }
    @IBAction func doTapImg7(_ sender: Any) {
        audio = "Plane"
        
        Tap(audio: audio)
        animacionPlane2 = createImageArray(total: 24, prefijo: "avion_2")
        animate(imageView: imageViewSuperior, images: animacionPlane2)
    }
    @IBAction func doTapimg8(_ sender: Any) {
        audio = "Submarine"
        
        Tap(audio: audio)
        animacionSub2 = createImageArray(total: 24, prefijo: "submarino_2")
        animate(imageView: imageViewSuperior, images: animacionSub2)
    }
    @IBAction func doTapimg9(_ sender: Any) {
        audio = "Train"
        
        Tap(audio: audio)
        animacionTrain2 = createImageArray(total: 24, prefijo: "tren_2")
        animate(imageView: imageViewSuperior, images: animacionTrain2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animacionBici = createImageArray(total: 24, prefijo: "bici")
        animate(imageView: imageView1, images: animacionBici)
        
        animacionBote = createImageArray(total: 24, prefijo: "barco")
        animate(imageView: imageView2, images: animacionBote)
        
        animacionBus = createImageArray(total: 24, prefijo: "Camion")
        animate(imageView: imageView3, images: animacionBus)
        
        animacionCar = createImageArray(total: 24, prefijo: "carro")
        animate(imageView: imageView4, images: animacionCar)
        
        animacionHeli = createImageArray(total: 24, prefijo: "helicoptero")
        animate(imageView: imageView5, images: animacionHeli)
        
        animacionMoto = createImageArray(total: 24, prefijo: "moto")
        animate(imageView: imageView6, images: animacionMoto)
        
        animacionPlane = createImageArray(total: 24, prefijo: "avion")
        animate(imageView: imageView7, images: animacionPlane)
        
        animacionSub = createImageArray(total: 24, prefijo: "submarino")
        animate(imageView: imageView8, images: animacionSub)
        
        animacionTrain = createImageArray(total: 24, prefijo: "tren")
        animate(imageView: imageView9, images: animacionTrain)
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
