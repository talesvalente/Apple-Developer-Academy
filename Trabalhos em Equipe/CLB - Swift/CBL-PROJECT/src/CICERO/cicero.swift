//
//  cicero.swift
//  main
//
//  Created by Cicero Nascimento on 08/03/22.
//

import Foundation

class Cicero{
    
    func app(){
        let formatar = DateFormatter()
        formatar.dateStyle = .medium
        formatar.timeStyle = .none
        
        let now = Date()
        
        formatar.locale = Locale(identifier: "pt_BR")
        
        print("Ola, digite seu nome!:")
        let name = readLine()
        
        print("Ola \(name!) hoje é dia", formatar.string(from: now))
    }
}



