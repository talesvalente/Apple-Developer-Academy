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
var myWhile = true


//MENU PRINCIPAL : EXECUÇÃO
while(myWhile) {
    print("[INTEGRADOR CBL-CHALLENGE SWIFT]")
    print("🧑🏽‍💻 👨🏽‍💻 👩🏻‍💻 👩🏽‍💻 👩🏾‍💻 🖥 📱")
    print("Olá, '<userName$>'!")
    print("Seja bem-vindo(a) ao integrador de aplicativos swift.")
    print("Selecione um número abaixo para executar o programa desejado.\n")
    print("➡️[LISTA DE APLICATIVOS DISPONIVEIS]⬅️")
    print("❌1 - NomeDoApp (Por: Cicero Sobrenome)")
    print("✅2 - SimuleAí  (Por: Tales Valente)")
    print("❌3 - NomeDoApp (Por: Hannah Santana)")
    print("❌4 - NomeDoApp (Por: Jamile Sobrenome)")
    print("❌5 - NomeDoApp (Por: Luciana Sobrenome")
    print("")
    print("Programa Desejado: ", terminator: "")
    input = readLine()
    
    switch input{
        case "1":
            print("Cicero")
        break
        case "2":
            iValente()
            iHold()
        break
        case "3":
            print("Luciana app")
            appLuciana.main()
        break
        case "4":
            print("Jamile app")
        break
        case "5":
            print("Hanah app")
        break
        case "sair":
            
        break;
        default:
            print("Digite uma das opçoes acima!")
            print("Programa Desejado: ", terminator: "")
            input = readLine()
    }
}
