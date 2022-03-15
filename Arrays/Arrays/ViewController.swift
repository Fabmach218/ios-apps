//
//  ViewController.swift
//  Arrays
//
//  Created by Fabio Maurizio Marangon Chavarri on 3/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtApellido: UITextField!
    
    @IBOutlet weak var txvResultado: UITextView!
    
    @IBOutlet weak var dpcFecNac: UIDatePicker!
    
    var personas: [Persona] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnIngresar(_ sender: Any) {
        
        let nombre = txtNombre.text!
        let apellido = txtApellido.text!
        let fecnac = dpcFecNac.date
        
        personas.append(Persona(nombre: nombre, apellido: apellido, fecnac: fecnac))
        
        txvResultado.text = "Item ingresado correctamente!!!"
        
        txtNombre.text = ""
        txtApellido.text = ""
        dpcFecNac.date = Date.now
        
    }
    
    
    @IBAction func btnMostrar(_ sender: Any) {
        
        txvResultado.text = ""
        
        for persona in personas{
            txvResultado.text += "Nombre: " + persona.nombre + "\nApellido: " + persona.apellido + "\nFecha de nacimiento: " + persona.fecnac.asString() + "\n\n"
        }
        
        
    }
    
    
    @IBAction func btnLimpiar(_ sender: Any) {
        
        personas = []
        txvResultado.text = "Se limpio el arreglo correctamente!!!"
        
    }
    
}

extension Date{
    
    func asString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
    
}

class Persona{
    
    var nombre: String
    var apellido: String
    var fecnac: Date
    
    init(nombre: String, apellido: String, fecnac:Date){
        self.nombre = nombre
        self.apellido = apellido
        self.fecnac = fecnac
    }
    
}
//Probando pushear desde Xcode
