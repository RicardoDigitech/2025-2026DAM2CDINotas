//
//  ExamenModel.swift
//  2025-2026 DAM 2C DI Notas
//
//  Created by Ricardo on 12/11/25.
//

import Foundation

class ExamenModel {
    
    var nombre: String
    var totalPreguntas: Int
    var totalAcertadas: Int
    var notaFinal: Float
    
    init(nombre: String, totalPreguntas: Int, totalAcertadas: Int) {
        self.nombre = nombre
        self.totalPreguntas = totalPreguntas
        self.totalAcertadas = totalAcertadas
        self.notaFinal = Float(totalAcertadas) * 10.0 / Float(totalPreguntas)
    }
    
    func toString() -> String {
        return "El alumno \(nombre) ha acertado \(totalAcertadas) de \(totalPreguntas). Su nota es: \(notaFinal)."
    }
    
}
