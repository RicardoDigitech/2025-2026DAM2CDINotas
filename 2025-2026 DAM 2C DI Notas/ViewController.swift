//
//  ViewController.swift
//  2025-2026 DAM 2C DI Notas
//
//  Created by Ricardo on 12/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtPreguntas: UITextField!
    @IBOutlet weak var txtAcertadas: UITextField!
    @IBOutlet weak var txtIndice: UITextField!
    @IBOutlet weak var lblMostrar: UILabel!
    
    var examenes: [ExamenModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        examenes = []
    }

    @IBAction func btnInsertar(_ sender: Any) {
        let nombre = txtNombre.text!
        let preguntas = txtPreguntas.text!
        let acertadas = txtAcertadas.text!
        
        if (nombre.isEmpty || preguntas.isEmpty || acertadas.isEmpty) {
            alertError(titulo: "ERROR", mensaje: "ERES IMBÉCIL porque faltan datos")
        } else {
            let examen = ExamenModel(nombre: nombre, totalPreguntas: Int(preguntas)!, totalAcertadas: Int(acertadas)!)
            examenes.append(examen)
            txtNombre.text = ""
            txtPreguntas.text = ""
            txtAcertadas.text = ""
        }
    }
    
    @IBAction func btnVer(_ sender: Any) {
        let indice = txtIndice.text!
        let i = Int(indice)!
        
        if (indice.isEmpty) {
            alertError(titulo: "ERROR", mensaje: "ERES IMBÉCIL porque falta el índice")
        } else {
            if (i < 0 || i >= examenes.count) {
                alertError(titulo: "ERROR", mensaje: "ERES IMBÉCIL porque IndexOutOfBounds")
            } else {
                lblMostrar.text = examenes[i].toString()
            }
        }
    }
    
    func alertError(titulo: String, mensaje: String) {
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "VER") {
            
            let indice = txtIndice.text!
            let i = Int(indice)!
            
            if (indice.isEmpty) {
                alertError(titulo: "ERROR", mensaje: "ERES IMBÉCIL porque falta el índice")
            } else {
                if (i < 0 || i >= examenes.count) {
                    alertError(titulo: "ERROR", mensaje: "ERES IMBÉCIL porque IndexOutOfBounds")
                } else {
                    
                    let destino = segue.destination as! VerExamenViewController
                    destino.examenMostrar = examenes[i]
                    
                }
            }
            
        }
        
    }
    
}
