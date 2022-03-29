//
//  main.swift
//  main
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation
import conversor

//Variaveis de inicialização do integrador
let appLuciana = App()
let cicero     = Cicero()

//Variaveis de Persistencia do integrador
var myWhile = true


//MENU PRINCIPAL : EXECUÇÃO
while(myWhile) {
    print("\n")
    print("[INTEGRADOR CBL-CHALLENGE SWIFT]")
    print("🧑🏽‍💻 👨🏽‍💻 👩🏻‍💻 👩🏽‍💻 👩🏾‍💻 🖥 📱")
    print("Olá, '<userName$>'!")
    print("Seja bem-vindo(a) ao integrador de aplicativos swift.")
    print("Selecione um número abaixo para executar o programa desejado.\n")
    print("➡️[LISTA DE APLICATIVOS DISPONIVEIS]⬅️")
    print("✅1 - Organizer (Por: Cicero Sobrenome)")
    print("✅2 - SimuleAí  (Por: Tales Valente)")
    print("❌3 - NomeDoApp (Por: Hannah Santana)")
    print("❌4 - NomeDoApp (Por: Jamile Sobrenome)")
    print("✅5 - NomeDoApp (Por: Luciana Sobrenome")
    print("")

    if (input == "") {
        print("Programa Desejado: ", terminator: "")
        input = readLine()
        
    }
    
    switch input{
        case "1":
            cicero.app()
            iHold()
        break
        case "2":
            iValente()
            iHold()
        break
        case "3":

        break
        case "4":
            print("Jamile app")
        break
        case "5":
            appLuciana.main()
            iHold()
        break
        case "sair":
            
        break;
        default:
        print("Opção Invalida. Pressione enter para tentar novamente... ", terminator: "")
        _ = readLine()
        input = ""
    }
}
