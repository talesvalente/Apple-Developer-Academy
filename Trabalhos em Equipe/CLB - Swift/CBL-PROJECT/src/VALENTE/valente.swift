//
//  VALENTE.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation

func iValente() {
    print("\n\n")
    print("Bem-vindo ao programa básico")
    
    //Valido somente para MasterCard e Visa
    let txMasterVisaDebito  = [1.44]
    let txMasterVisaCredito = [2.89, 4.44, 5.05, 5.66, 6.26, 6.85, 8.01, 8.59, 9.17, 9.74, 10.31, 10.87]

    //Valido somente para Elo e Hiper
    let txEloDebito   = [2.44]                                                                //Taxa Debito
    let txEloCredito  = [4.65, 5.61, 6.22, 6.82, 7.41, 8, 9.05, 10.20, 10.76, 11.33, 11.88]   //Taxa Credito
    let txHiperCredito      = [3.94, 5.34, 5.95, 6.55, 7.14, 7.73, 8.79, 9.37, 9.94, 10.51]         //Taxa Cradito
    
    let failSafe: Double? = 1.00

    var valorVenda: Double   = 0.00
    var valorReceber:   Double?  = 0
    var tipoCartao:     Int?  = 0
    var qntParcelas:    Int?  = 0
    var bandeiraCartao: Int? = 0
    var valorParcela:   Double? = 0.00
    var juros: Double? = 0.00
    
    while (true) {
        print ("Informe o valor que você deseja receber: ", terminator: "")
        let input = readLine()
        valorReceber = Double(input!)
        
        //TODO: OTIMIZAR ESTE VERIFICADOR
        if (valorReceber == nil || valorReceber! <= 0) {
            print ("\n[AVISO] Você precisa entrar com algum valor para efetivar a venda.")
        }
        else { break }
    }
    
    while(true) {
        print ("\n| 1 - Elo | 2 - Visa / Master | 3 - Hiper |")
        print ("Informe a bandeira do cartão: ", terminator: "")
        let input = readLine()
        bandeiraCartao = Int(input!)
        
        if (bandeiraCartao == nil || bandeiraCartao! <= 0 || bandeiraCartao! > 3) {
            print ("\n[AVISO] Você precisa informar qual a bandeira do seu cartão.")
        }
        else { break }
    }
    
    while (true) {
        print ("\n| 1 - Débito | 2 - Crédito |")
        print ("A venda será no debito ou no crédito? Informe: ", terminator: "")
        let input = readLine()
        tipoCartao = Int(input!)
        
        if (tipoCartao == nil || tipoCartao! <= 0 || tipoCartao! > 2) {
            print ("\n[AVISO] Você precisa especificar o tipo do seu cartão.")
        }
        if (bandeiraCartao == 3 && tipoCartao == 1) {
            print("\n[AVISO] Cartão Hiper não possui função debito. Tipo de cartao definido para Credito.")
                tipoCartao = 2
            break
        }
        else { break }
    }
    if (tipoCartao == 1) {
        qntParcelas = 1
    } else {
        while(true) {
            print ("\nInforme a quantidade de parcelas que seu cliente deseja: ", terminator: "")
            let input = readLine()
            qntParcelas = Int(input!)
            qntParcelas = qntParcelas! //Posicao Real nas strings
            
            if (qntParcelas == nil || qntParcelas! <= 0 || qntParcelas! > 12) {
                print ("\n[AVISO] Você precisa entrar com a quantidade de parcela (max 12)")
            }
            else {
                qntParcelas = qntParcelas! - 1 //String começa contar em 0
                break
                
            }
        }
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
            valorVenda = valorReceber! + valorReceber! * txEloCredito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txEloCredito[qntParcelas!]
        }
    }
    //CODE 2 - CARTÃO VISA e MASTER
    else if (bandeiraCartao == 2) {
        //TIPO DEBITO
        if (tipoCartao == 1) {
            valorVenda = valorReceber! + valorReceber! * txMasterVisaDebito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txEloCredito[qntParcelas!]
        }
        //TIPO CREDITO
        else {
            valorVenda = valorReceber! + valorReceber! * txMasterVisaCredito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txMasterVisaCredito[qntParcelas!]
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
            valorVenda = valorReceber! + valorReceber! * txHiperCredito[qntParcelas!] / 100
            valorParcela = valorVenda / Double(qntParcelas!)
            juros = txHiperCredito[qntParcelas!]
        }
    }
    //TRATAMENTO DE EXCECÇAO. NECESSÁRIO?
    else {
        print("ERROR HANDLER")
    }
    
    print("\n \n")
    print("[RELATÓRIO DE VENDAS]")
    print("Valor a receber: R$", valorReceber!)
    print("Por quanto você deve vender: R$", valorVenda)
    print("Quantidade de parcelas escolhida pelo cliente: ", qntParcelas!+1)
    print(String(format: "Valor da Parcela: R$%.2f", valorParcela!))
    print("Taxa do Cartão: %", juros!)
    
    
}
