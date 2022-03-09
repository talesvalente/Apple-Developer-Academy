//
//  VALENTE.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation
func iValente() {
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
    print ("\nInforme quanto você quer receber: ")
    let valorReceber = readLine()
    
    //TODO: VERIFICAR LIMITE INSERIDO ATE 12X
    print ("\nInforme a quantidade de parcelas que seu cliente deseja: ")
    let qntParcela = readLine()
    
    print ("\nInforme a bandeira do cartão:")
    print ("1 - Elo \n2 - Visa\n3 - Master\n4 - Hiper\n")
    let bandeiraCartao = readLine()
    
    //TODO: REALIZAR CALCULOS DE VENDA
    //TODO: MOSTRAR RESULTADOS PRO CLIENTE/USUARIOS
    
}
