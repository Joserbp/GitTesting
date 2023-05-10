//
//  Medicamento.swift
//  GitTesting
//
//  Created by MacbookMBA7 on 09/05/23.
//

import Foundation

struct Medicamento {
    
    let IdMedicamento: Int
    let Nombre: String
    let Descripcion: String
    let Precio: Double
    let Imagen: String
    let IdProveedor: Proveedor?
    
    init(IdMedicamento: Int, Nombre: String, Descripcion: String, Precio: Double, Imagen: String, IdProveedor: Proveedor?) {
        self.IdMedicamento = IdMedicamento
        self.Nombre = Nombre
        self.Descripcion = Descripcion
        self.Precio = Precio
        self.Imagen = Imagen
        self.IdProveedor = IdProveedor
    }
    init(){
        self.IdMedicamento = 0
        self.Nombre = ""
        self.Descripcion = ""
        self.Precio = 0.0
        self.Imagen = ""
        self.IdProveedor = nil
    }
    
}

struct Proveedor {
    
    let IdProveedor: Int
    let Nombre: String
    
    init(IdProveedor: Int, Nombre: String){
        self.IdProveedor = IdProveedor
        self.Nombre = Nombre
    }
    
    init(){
        self.IdProveedor = 0
        self.Nombre = ""
    }
}
