//
//  main.swift
//  main
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation

let cicero = Cicero()

print("Menu")

print("Ola, selecione um dos programas a seguir:\n1 - Cicero\n2 - Tales\n3 - Luciana\n4 - Jamile\n5 - Hanah\n")

let opcao = readLine()

switch opcao{
    case "1":
        cicero.app()
    case "2":
        iValente()
    case "3":
        print("Luciana app")

    case "4":
        print("Jamile app")
        
    case "5":
        print("Hanah app")
        
    default:
        print("Digite uma das opçoes acima!")
    
}

