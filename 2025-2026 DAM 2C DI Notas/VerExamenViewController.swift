//
//  VerExamenViewController.swift
//  2025-2026 DAM 2C DI Notas
//
//  Created by Ricardo on 12/11/25.
//

import UIKit

class VerExamenViewController: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPreguntas: UILabel!
    @IBOutlet weak var lblAcertadas: UILabel!
    @IBOutlet weak var lblNota: UILabel!
    
    var examenMostrar: ExamenModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNombre.text = examenMostrar.nombre
        lblPreguntas.text = String(examenMostrar.totalPreguntas)
        lblAcertadas.text = String(examenMostrar.totalAcertadas)
        lblNota.text = String(examenMostrar.notaFinal)
    }

}
