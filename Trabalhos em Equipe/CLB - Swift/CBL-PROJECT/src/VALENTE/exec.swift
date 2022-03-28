//
//  exec.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 17/03/22.
//

import Foundation

func exec() {
//Início do Programa
    if (useDebug == true) { iDebug(1) }
    while (true) {
        print ("Informe o valor que você deseja receber: ", terminator: "")
        let input = readLine()
        valorReceber = Double(input!)
        
        //TODO: OTIMIZAR ESTE VERIFICADOR
        if (valorReceber == nil || valorReceber! <= 0) {
            iWarning(1)
        }
        else { break }
    }
    if (useDebug == true) { iDebug(2) }
    while(true) {
        print ("\n| 1 - Elo | 2 - Visa & Master | 3 - Hiper |")
        print ("Informe a bandeira do cartão: ", terminator: "")
        let input = readLine()
        bandeiraCartao = Int(input!)
        
        if (bandeiraCartao == nil || bandeiraCartao! <= 0 || bandeiraCartao! > 3) {iWarning(2)}
        else { break }
    }
    //TERCEIRA PERGUNTA DO SISTEMA
    if (useDebug == true) { iDebug(3) }
    while (true) {
        print ("\n| 1 - Débito | 2 - Crédito |")
        print ("A venda será no debito ou no crédito? Informe: ", terminator: "")
        let input = readLine()
        tipoCartao = Int(input!)
        
        if (tipoCartao == nil || tipoCartao! <= 0 || tipoCartao! > 2) {iWarning(3)}
        if (bandeiraCartao == 3 && tipoCartao == 1) { iWarning(4); tipoCartao = 2; readLine(); break;}
        else { break }
    }
    if (useDebug == true) { iDebug(4) }
    while(true) {
        if (tipoCartao == 2) {
            print ("\nInforme a quantidade de parcelas que seu cliente deseja: ", terminator: "")
            let input = readLine()
            qntParcelas = Int(input!)
            
            if (qntParcelas == nil || qntParcelas! <= 0 || qntParcelas! > 12) {iWarning(5)}
            break;
        }
        else { break }
    }

    //INICIO DA EXECUCAO

    //CODE 1 - CARTAO ELO
    if (bandeiraCartao == 1) {
        if (tipoCartao == 1) { //TIPO DEBITO
            valorVenda = valorReceber! + valorReceber! * txEloDebito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txEloDebito[qntParcelas!]
        }
        
        else {
            valorVenda = valorReceber! + valorReceber! * txEloCredito[qntParcelas!-1] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txEloCredito[qntParcelas!-1]
        }
    }
    //CODE 2 - CARTÃO VISA e MASTER
    else if (bandeiraCartao == 2) {
        //TIPO DEBITO
        if (tipoCartao == 1) {
            valorVenda = valorReceber! + valorReceber! * txMasterVisaDebito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txMasterVisaDebito[qntParcelas!]
        }
        //TIPO CREDITO
        else {
            valorVenda = valorReceber! + valorReceber! * txMasterVisaCredito[qntParcelas!-1] / 100
            valorParcela = (valorVenda / Double(qntParcelas!))
            juros = txMasterVisaCredito[qntParcelas!-1]
        }
    }
    //CODE 3 - HIPER E HIPERCARD
    else if (bandeiraCartao == 3) {
        //TIPO DEBITO
        if (tipoCartao == 1) {
            //UNDEFINED
            //Cartao Hiper E Hipercard nao tem debito
        }
        //TIPO CREDITO
        else {
            valorVenda = valorReceber! + valorReceber! * txHiperCredito[qntParcelas!-1] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txHiperCredito[qntParcelas!-1]
        }
    }
    //TRATAMENTO DE EXCECÇAO. NECESSÁRIO?
    else {
        print("ERROR HANDLER")
    }
}
