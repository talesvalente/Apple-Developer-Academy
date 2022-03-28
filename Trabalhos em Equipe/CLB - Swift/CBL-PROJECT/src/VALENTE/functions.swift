//
//  functions.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 17/03/22.
//

import Foundation

func iHold() {
    print ("Pressione [ENTER] para continuar ou digite [s] para sair: ", terminator: "")
    input = readLine()
    if (input == "s") {
        input = "sair"
        myWhile = false
    }
    else {
        input = ""
    }
}

func iDebug(_ code: Int) {
    
    var stringArgs: String = ""
    
    if (code == 1) { stringArgs = "[DEBUG]: PRIMEIRA PERGUNTA DO SISTEMA" }
    if (code == 2) { stringArgs = "[DEBUG]: SEGUNDA PERGUNTA DO SISTEMA"}
    if (code == 3) { stringArgs = "[DEBUG]: TERCEIRA PERGUNTA DO SISTEMA"}
    if (code == 4) { stringArgs = "[DEBUG]: QUARTA PERGUNTA DO SISTEMA"}
    
    print (stringArgs)
}

func iWarning(_ code: Int) {
    var stringArgs: String = ""
    if (code == 1) { stringArgs = "\n[AVISO 001] Você precisa entrar com algum valor para efetivar a venda." }
    
    if (code == 2) { stringArgs = "\n[AVISO 002] Você precisa informar qual a bandeira do seu cartão." }
    
    if (code == 3) { stringArgs = "\n[AVISO 003] Você precisa especificar o tipo do seu cartão." }
    
    if (code == 4) { stringArgs = "\n[AVISO 004] Cartão Hiper não possui função debito. Tipo de cartao será definido para Credito. \nTecle Enter para Continuar..." }
    
    if (code == 5) { stringArgs = "\n[AVISO 005] Você precisa entrar com a quantidade de parcela (max 12)" }
    
    print (stringArgs, terminator: "")
}
