//
//  AutoDetalleViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 24/01/2023.
//

import UIKit

class AutoDetalleViewController: UIViewController {
    
    var autoType: Int?
    var car: Automovil?
    var electricCar: AutomovilElectrico?

    @IBOutlet weak var imageCar: UIImageView!
    @IBOutlet weak var labelInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch autoType! {
        case 0:
            electricCar = AutomovilElectrico()
            labelInfo.text = "Automovil creado"
            imageCar.image = UIImage(named: "auto")
        case 1:
            car = Automovil()
            labelInfo.text = "Automovil electrico creado"
            imageCar.image = UIImage(named: "autoElectrico")
        default:
            labelInfo.text = "Error al crear el Automovil"
        }
    }
    
    @IBAction func buttonOn(_ sender: Any) {
        switch autoType! {
        case 0:
            electricCar?.on()
            if electricCar?.encendido == true {
                labelInfo.text = "Automovil encendido"
            }
        case 1:
            car?.on()
            if car?.encendido == true {
                labelInfo.text = "Automovil encendido"
            }
        default:
            labelInfo.text = "Error al encender el Automovil"
        }
    }
    
    
    @IBAction func buttonOff(_ sender: Any) {
        switch autoType! {
        case 0:
            electricCar?.off()
            if electricCar?.encendido == false {
                labelInfo.text = "Automovil apagado"
            }
        case 1:
            car?.off()
            if car?.encendido == false {
                labelInfo.text = "Automovil apagado"
            }
        default:
            labelInfo.text = "Error al apagar el Automovil"
        }
    }
    
    @IBAction func buttonAc(_ sender: Any) {
        switch autoType! {
        case 0:
            if electricCar?.encendido == true {
                var ac = electricCar?.speedUp()
                var batery = false
                
                if electricCar!.porcentajeBateria > 0 {
                    batery = true
                } else {
                    batery = false
                }
                
                if ac == true && batery == true {
                    labelInfo.text = "Aceleración correcta"
                }
                
            } else {
                labelInfo.text = "Primero enciende el automovil"
            }
        case 1:
            if car?.encendido == true {
                var ac = car?.speedUp()
                if ac == true {
                    labelInfo.text = "Aceleración correcta"
                }                
            } else {
                labelInfo.text = "Primero enciende el automovil"
            }
        default:
            labelInfo.text = "Error al apagar el Automovil"
        }
    }
    
    @IBAction func buttonViewInfo(_ sender: Any) {
        switch autoType! {
        case 0:
            labelInfo.text = "Auto electrico \n Llantas: \(electricCar?.numeroLlantas) \n Color: \(electricCar?.color)"
        case 1:
            labelInfo.text = "Auto normal \n Llantas: \(car?.numeroLlantas) \n Color: \(car?.color)"
        default:
            labelInfo.text = "Error al mostrar información"
        }
    }
}
