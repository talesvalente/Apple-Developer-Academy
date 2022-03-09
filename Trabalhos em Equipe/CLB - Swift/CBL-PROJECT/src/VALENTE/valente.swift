//
//  VALENTE.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation
func iValente() {
   print("\n\n")
    //Inicilização das variaveis
    //Arrays com o valor das taxas de juros por parcela 1x,2x,3x...12x
    
    //Valido somente para MasterCard e Visa
    let pMasterVisaD = [1.44]                                                                       //Taxa no Debito
    let pMasterVisaC = [2.89, 4.44, 5.05, 5.66, 6.26, 6.85, 8.01, 8.59, 9.17, 9.74, 10.31, 10.87]   //Taxa no Crédito

    //Valido somente para Elo e Hiper
    let pEloD   = [2.44]                                                                //Taxa Debito
    let pEloC   = [4.65, 5.61, 6.22, 6.82, 7.41, 8, 9.05, 10.20, 10.76, 11.33, 11.88]   //Taxa Credito
    let pHiperC = [3.94, 5.34, 5.95, 6.55, 7.14, 7.73, 8.79, 9.37, 9.94, 10.51]         //Taxa Cradito
    
    print ("Seja bem vindo ao simulador de vendas real.")
    
    print ("Informe quanto você quer receber: ", terminator: "")
    let valorReceber: String? = readLine()
    
    let vReceber = Int(valorReceber!)
    if (vReceber! <= 0) {
        print ("Voce precisa digitar um valor maior que zero")
    }
    /*
     teste:
    if let input = readLine() {
        if let number = Int(input) {
            let result = number * number
            print("You entered \(number)")
            print("Its square = \(result)")
        } else {
     goto teste
     }
    }*/
    
    if let input = readLine(), let number = Int(input) {
        let result = number * number
        print("You entered \(number)")
        print("Its square = \(result)")
    }
    
    guard let input = readLine(), let number = Int(input) else {
        fatalError("usage: script --option <arg>")
    }
    
    switch number {
    case 1:
        
    }
    
    
    //TODO: VERIFICAR LIMITE INSERIDO ATE 12X
    print ("Informe a quantidade de parcelas que seu cliente deseja: ", terminator: "")
    let qntParcela = readLine()
   
    print ("\n| 1 - Elo | 2 - Visa | 3 - Master | 4 - Hiper |")
    print ("Informe a bandeira do cartão: ", terminator: "")
    let bandeiraCartao = readLine()
    
    //TODO: REALIZAR CALCULOS DE VENDA
    //TODO: MOSTRAR RESULTADOS PRO CLIENTE/USUARIOS
    
}


/*/*
   print("Enter a number (x) : ", terminator: "")
   if let input = readLine() {
       if let number = Int(input) {
           let result = number * number
           print("You entered \(number)")
           print("Its square = \(result)")
       }
   }
   */
*/
