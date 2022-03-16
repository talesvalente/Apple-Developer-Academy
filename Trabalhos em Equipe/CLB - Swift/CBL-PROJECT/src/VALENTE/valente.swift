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
    
    var i            = 0
    var j            = 0
    var valorVenda: Double   = 0.00
    let taxasCartao  = [2.89, 4.44, 5.05, 5.66, 6.26, 6.85, 8.01, 8.59, 9.17, 9.74, 10.31, 10.87]
    var valorReceber:  Double?  = 0
    var tipoCartao:    Int?  = 0
    var qntParcelas:   Int?  = 0
    var bandeiraCartao: Int? = 0
    var valorParcela: Int? = 0

    
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
        print ("\n| 1 - Elo | 2 - Visa | 3 - Master | 4 - Hiper |")
        print ("Informe a bandeira do cartão: ", terminator: "")
        let input = readLine()
        bandeiraCartao = Int(input!)
        
        if (bandeiraCartao == nil || bandeiraCartao! <= 0 || bandeiraCartao! > 4) {
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
        else { break }
    }
    
    while(true) {
        print ("\nInforme a quantidade de parcelas que seu cliente deseja: ", terminator: "")
        let input = readLine()
        qntParcelas = Int(input!)
        
        if (qntParcelas == nil || qntParcelas! <= 0 || qntParcelas! > 12) {
            print ("\n[AVISO] Você precisa entrar com a quantidade de parcela (max 12)")
        }
        else { break }
    }


    
    valorVenda = valorReceber! + valorReceber! * taxasCartao[qntParcelas!] / 100
    
    print("\n \n")
    print("Valor a receber: ", valorReceber!)
    print("Por quanto você deve vender: ", valorVenda)
    print("Quantidade de parcelas escolhida pelo cliente: ", qntParcelas!)
    print("Valor da Parcela: ",valorParcela!)
    print("Taxa do Cartão: ",taxasCartao[qntParcelas!])
    
    //EXCLAÇÃO SIGNIFICA QUE EXISTE UM VALOR ALI DENTRO
    //print("O input: ", valorReceber!) //Se for vazio o valor será 0
    //print ("Teste Matriz: ", taxasCartao[valorReceber!])
     
    //let soma: Int = (intWeight! + intHeight!) // SOMA DE OPERANDOS
}
    // COMENTAR DEPOIS DESSA LINHA
    /*
   print("\n\n")
    //Inicilização das variaveis
    //var i = true

    //Arrays com o valor das taxas de juros por parcela 1x,2x,3x...12x
    //Valido somente para MasterCard e Visa
    let pMasterVisaD = [1.44]                                                                       //Taxa no Debito
    let pMasterVisaC = [2.89, 4.44, 5.05, 5.66, 6.26, 6.85, 8.01, 8.59, 9.17, 9.74, 10.31, 10.87]   //Taxa no Crédito

    //Valido somente para Elo e Hiper
    let pEloD   = [2.44]                                                                //Taxa Debito
    let pEloC   = [4.65, 5.61, 6.22, 6.82, 7.41, 8, 9.05, 10.20, 10.76, 11.33, 11.88]   //Taxa Credito
    let pHiperC = [3.94, 5.34, 5.95, 6.55, 7.14, 7.73, 8.79, 9.37, 9.94, 10.51]         //Taxa Cradito
    
    //Variáveis de Uso Global
    var intVR: Int? //ValorReceber: Por que ?
    var intQP: Int? //QuantidadeParcela: Por que ?
    var intBC: Int? //BandeiraCartao: Por que?
    var intTC: Int? //Tipo do cartao
    
    //Início dos Argumentos de Usuário
    print ("Seja bem vindo ao simulador de vendas real.")
        
    //TODO: VERIFICAR A QUANTIDADE DE WHILES E SIMPLIFICAR SE POSSIVEL
    
    
    //LAÇO FORÇADOR
    //OBRIGA O USUARIO A ENTRAR COM O VALOR DA VENDA
    while (true) {
        print ("Informe o valor que deseja receber: ", terminator: "")
        let valorReceber = readLine()
        intVR = Int(valorReceber!)
        
        //TODO: OTIMIZAR ESTE VERIFICADOR
        if (intVR == nil || intVR! <= 0) {
            print ("\n[AVISO] Você precisa entrar com algum valor para efetivar a venda.")
        }
        else { break }
    }
    
    while (true) {
        print ("\n| 1 - Débito | 2 - Crédito")
        print ("A venda será no debito ou no crédito? Informe: ", terminator: "")
        let tipoCartao = readLine()
        intTC = Int(tipoCartao!)
        if (intTC == nil || intTC! <= 0 || intTC! > 2) {
            print ("\n[AVISO] Você precisa especificar o tipo do seu cartão.")
        }
        else { break }
    }
    //LAÇO FORÇADOR
    //OBRIGA O USUARIO A ENTRAR COM A QUANTIDAD DE PARCELAS (LIMITE 12)
    while(true) {
        print ("Informe a quantidade de parcelas que seu cliente deseja: ", terminator: "")
        let qntParcela = readLine()
        intQP = Int(qntParcela!)
        
        if (intQP == nil || intQP! <= 0 || intQP! > 12) {
            print ("\n[AVISO] Você precisa entrar com a quantidade de parcela (max 12)")
        }
        else { break }
    }
    
    //LAÇO FORÇADOR
    //OBRIGA O USUARIO A ENTRAR COM A QUANTIDAD DE PARCELAS (LIMITE 12)
    while(true) {
        print ("\n| 1 - Elo | 2 - Visa | 3 - Master | 4 - Hiper |")
        print ("Informe a bandeira do cartão: ", terminator: "")
        let bandeiraCartao = readLine()
        intBC = Int(bandeiraCartao!)
        
        if (intBC == nil || intBC! <= 0 || intBC! > 4) {
            print ("\n[AVISO] Você precisa informar qual a bandeira do seu cartão.")
        }
        else { break }
    }
    //TODO: verificiar possibilidade de uso de Estrutura ou Chamada de Função
    //Pelo amor de deus, simplifique esse código
}
    
    //TODO: REALIZAR CALCULOS DE VENDA
    //TODO: MOSTRAR RESULTADOS PRO CLIENTE/USUARIOS
    


/*
 
 
 
 //Início dos Argumentos de Usuário
 print ("Seja bem vindo ao simulador de vendas real.")
 print ("Informe o valor que deseja receber: ", terminator: "")
 let valorReceber = readLine()
 let intVR = Int(valorReceber!)
 
 if (intVR == nil || intVR! <= 0) {
     while (i == true) {
         print ("Você precisa entrar com algum valor para efetivar a venda: ", terminator: "")
         
     }
     print ("Você não inseriou um valor... terminando o programa!"); exit(1)
 }
 
 while (i == true) {
     print ("Informe quanto você quer receber: ", terminator: "")
     if let input = readLine() {
         if let number = Int(input) {
             print ("voce digitou um numero")
             i = false
             let IntNumReturn = number
         }
         else {
             print ("voce nao digitou um numero")
         }
     }
 }
 
 
 
 
 
 
 /*
   print("Enter a number (x) : ", terminator: "") let valorReceber: String? = readLine();
   if let input = readLine() {
       if let number = Int(input) {
           let result = number * number
           print("You entered \(number)")
           print("Its square = \(result)")
       }
   }
   */

 teste:
if let input = readLine() {
    if let number = Int(input) {
        let result = number * number
        print("You entered \(number)")
        print("Its square = \(result)")
    } else {
 goto teste
 }
}

if let input = readLine(), let number = Int(input) {
    let result = number * number
    print("You entered \(number)")
    print("Its square = \(result)")
}
pHiperC[i
 
 /**/*/*/
