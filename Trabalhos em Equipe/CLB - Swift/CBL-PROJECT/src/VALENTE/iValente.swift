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
    
    print("Informe o valor que você deseja receber: ",terminator: "")
    input = readLine()
    valorReceber = Double(input!)
    
    print ("")
    
    print ("Informe a bandeira do cartão (1 - Elo / 2 - Visa & Master / 3 - Hiper): ", terminator: "")
    input = readLine()
    bandeiraCartao = Int(input!)
    
    print ("")
    
    print ("Informe o tipo de operação (1 - Crédito / 2 - Débito): ", terminator: "")
    let input = readLine()
    tipoCartao = Int(input!)
    
    if (tipoCartao == 2) {
        print ("\nInforme a quantidade de parcelas que seu cliente deseja: ", terminator: "")
        let input = readLine()
        qntParcelas = Int(input!)
    }
    
     print (exec(valorReceber, bandeiraCartao, tipoCartao, qntParcelas))
    
    print("[RELATÓRIO DE VENDAS]\n")
    //DEBITO
    if (tipoCartao == 1) {
        print(String(format: "Valor a receber: R$%.2f",valorReceber!))
        print("Bandeira do Cartão:", bandeiraCartao!)
        print("Operação: ", tipoCartao!)
        print(String(format: "Por quanto você deve vender: R$%.2f",valorVenda))
        print("Taxa do Cartão: \(juros!)%")
    }
    //CREDITO
    else {
        print(String(format: "Valor a receber: R$%.2f",valorReceber!))
        print("Bandeira do Cartão:", bandeiraCartao!)
        print("Operação: ", tipoCartao!)
        print(String(format: "Por quanto você deve vender: R$%.2f",valorVenda))
        print("Quantidade de parcelas escolhida pelo cliente: ", qntParcelas!)
        print(String(format: "Valor da Parcela: R$%.2f", valorParcela!))
        print("Taxa do Cartão: \(juros!)%")
    }
    print("\n")
    
}
