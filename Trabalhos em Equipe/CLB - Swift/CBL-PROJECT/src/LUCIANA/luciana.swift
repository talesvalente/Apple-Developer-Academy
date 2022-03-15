//
//  luciana.swift
//  main
//
//  Created by Luciana Adrião on 08/03/22.
//

import Foundation

   






class Luciana{

    
    func dolar(){
        
        let runLoop = CFRunLoopGetCurrent()
        let url = URL(string: "https://api.hgbrasil.com/finance")!
        

        
        let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode(Response.self, from: data)
                    let usdBuy = response.results.currencies.usd.buy
                    if let usdSell = response.results.currencies.usd.sell {
                        print(type(of: usdBuy))
                        print(usdSell)
                        
                    } else {
                        print("sell price is nil")
                    }
                    
                    while readLine() != "e" {
                        
                    }
                    
                    exit(EXIT_SUCCESS)
                    
                    
                }catch {
                    print(error)
                }
            }
            
        }
        task.resume()
        CFRunLoopRun()
        print("Rodou..quem diria.")

    }
    
    func app(){
        

//        -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


        let entradaDouble = Double(readLine(strippingNewline: true)!)

        print(entradaDouble!)


//        Todos os valores em USD
        var valorDolar = 5.0
        let conversaoPUsd = entradaDouble! / valorDolar
        let taxaVariavel = conversaoPUsd * 0.064
        let taxaFixa = 0.60
        let valorFinalUsd = conversaoPUsd + taxaFixa + taxaVariavel

        print(String(format: "%.2f", valorFinalUsd))

//        -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
    }
    
}

// MARK: - Response
struct Response: Codable {
    let by: String
    let validKey: Bool
    let results: Results
    let executionTime: Int
    let fromCache: Bool

    enum CodingKeys: String, CodingKey {
        case by
        case validKey = "valid_key"
        case results
        case executionTime = "execution_time"
        case fromCache = "from_cache"
    }
}

// MARK: - Results
struct Results: Codable {
    
    let currencies: Currencies
    let availableSources: [String]

    enum CodingKeys: String, CodingKey {
        case currencies
        case availableSources = "available_sources"
    }
}

// MARK: - Currencies
struct Currencies: Codable {
    let source: String
    let usd, eur, gbp: Ars

    enum CodingKeys: String, CodingKey {
        case source
        case usd = "USD"
        case eur = "EUR"
        case gbp = "GBP"
        
    }
}

struct Ars: Codable {
    let name: String
    let buy: Double
    let sell: Double?
    let variation: Double
}
