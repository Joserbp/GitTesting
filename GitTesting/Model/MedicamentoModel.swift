//
//  MedicamentoModel.swift
//  GitTesting
//
//  Created by MacBookMBA2 on 09/05/23.
//

import Foundation
import SQLite3

class MedicamentoModel {
    
    func GetAll() -> [Medicamento] {
        var medicamentos = [Medicamento]()
        let context = DB.init()
        let query = "SELECT IdMedicamento, Nombre, Descripcion, Precio, Imagen FROM DBManager"
        var statement : OpaquePointer? = nil
        do{
            if try sqlite3_prepare_v2(context.db, query, -1, &statement, nil) == SQLITE_OK {
                while sqlite3_step(statement) == SQLITE_ROW{
                    var medicamento = Medicamento()
                    medicamento.IdMedicamento = Int(sqlite3_column_int(statement, 0))
                    medicamento.Nombre = String(cString: sqlite3_column_text(statement, 1))
                    medicamento.Descripcion = String(cString: sqlite3_column_text(statement, 2))
                    medicamento.Precio = Double(sqlite3_column_double(statement, 3))
                    medicamento.Descripcion = String(cString: sqlite3_column_text(statement, 4))
                    medicamentos.append(medicamento)
                }
            }
        }catch let error{
            print(error)
        }
        sqlite3_finalize(statement)
        sqlite3_close(context.db)
        return medicamentos
    }
    
}
