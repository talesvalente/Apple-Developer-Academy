//
//  VALENTE.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//  Version: 1.0.0.1
//  CHANGELOG
//  V1.0.0.1: Protótipo de Execucao Estática
//
//
//
//
//

import Foundation

func iValente() {
    print("\n\n")
    print("Bem-vindo ao programa básico")
    
    while (true) {
        print ("\nInforme o valor que você deseja receber: ", terminator: "")
        let input = readLine()
        valorReceber = Double(input!)
        
        //TODO: OTIMIZAR ESTE VERIFICADOR
        if (valorReceber == nil || valorReceber! <= 0) {
            iWarning(1)
        }
        else { break }
    }

    while(true) {
        print ("\nInforme a bandeira do cartão (1 - Elo / 2 - Visa & Master / 3 - Hiper): ", terminator: "")
        let input = readLine()
        bandeiraCartao = Int(input!)
        
        if (bandeiraCartao == nil || bandeiraCartao! <= 0 || bandeiraCartao! > 3) {iWarning(2)}
        if (bandeiraCartao == 1) {bandeira = "Elo"}
        if (bandeiraCartao == 2) {bandeira = "Visa & Master"}
        if (bandeiraCartao == 3) {bandeira = "Hiper & Hipercard"}
        else { break }
    }

    while (true) {
        print ("\nInforme o tipo de operação (1 - Débito / 2 - Crédtio): ", terminator: "")
        let input = readLine()
        tipoCartao = Int(input!)
        
        if (tipoCartao == nil || tipoCartao! <= 0 || tipoCartao! > 2) {
            iWarning(3)
            
        } else if (bandeiraCartao == 3 && tipoCartao == 1) {
            iWarning(4);
            tipoCartao = 2;
            readLine();
            break;
        } else {
                if (tipoCartao == 1) { operacao = "Crédido"}
                if (tipoCartao == 2) { operacao = "Débito"}
                break
        }
    }
    
    while(true) {
        if (tipoCartao == 2) {
            print ("\nInforme a quantidade de parcelas que seu cliente deseja: ", terminator: "")
            let input = readLine()
            qntParcelas = Int(input!)
            
            if (qntParcelas == nil || qntParcelas! <= 0 || qntParcelas! > 12) { iWarning(5) }
            else { break; }
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
        iWarning(6)
    }
    print("")
    print("==========================================")
    print("          [ RELATÓRIO DE VENDAS ]")
    print("==========================================")
    //DEBITO
    if (tipoCartao == 1) {
        print(String(format: "Valor que você deseja receber: R$%.2f",valorReceber!))
        print("Bandeira do Cartão do cliente:", bandeira!)
        print("Tipo de Operação: ", operacao!)
        print("Taxa do Cartão: \(juros!)%")
        print(String(format: "Por quanto você deve vender: R$%.2f",valorVenda))

    }
    //CREDITO
    else {
        print(String(format: "Valor que você deseja receber: R$%.2f",valorReceber!))
        print("Bandeira do Cartão do Cliente:", bandeira!)
        print("Tipo Operação: ", operacao!)
        print("Quantidade de parcelas escolhida pelo cliente: ", qntParcelas!)
        print("Taxa do Cartão: \(juros!)%")
        print(String(format: "Valor da Parcela: R$%.2f", valorParcela!))
        print(String(format: "Por quanto você deve vender: R$%.2f",valorVenda))

    }
    print("==========================================")


}
