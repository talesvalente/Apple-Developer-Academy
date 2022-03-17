//
//  globalVars.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 17/03/22.
//

import Foundation
let useDebug = false

let txMasterVisaDebito  = [1.44]
let txEloDebito         = [2.44]

//Taxas de Crédito
let txMasterVisaCredito = [2.89, 4.44, 5.05, 5.66, 6.26, 6.85, 8.01, 8.59, 9.17,  9.74,  10.31, 10.87]
let txEloCredito        = [4.65, 5.61, 6.22, 6.82, 7.41, 8.00, 9.05, 9.63, 10.20, 10.76, 11.33, 11.88]
let txHiperCredito      = [3.94, 5.34, 5.95, 6.55, 7.14, 7.73, 8.79, 9.37, 9.94,  10.51, 11.08, 11,63]

//FailSafe -> Metade do valor fica com a plataforma outra metade fica com o usuário da plataforma 0,05% pra cada
let txFailSafe: Double? = 1.00

//Inicializações Globais do Sistema
var valorVenda:     Double  = 0.00
var valorReceber:   Double? = 0.00
var tipoCartao:     Int?    = 0
var qntParcelas:    Int?    = 0
var bandeiraCartao: Int?    = 0
var valorParcela:   Double? = 0.00
var juros:          Double? = 0.00
var input:          String? = ""
