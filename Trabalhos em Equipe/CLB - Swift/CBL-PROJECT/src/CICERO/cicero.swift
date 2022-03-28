//
//  cicero.swift
//  main
//
//  Created by Cicero Nascimento on 08/03/22.
//

import Foundation

class Cicero{
    
    
    func app(){
        //Declarando variaveis e instanciando classes
        let arquivos = Arquivos()
        let download = "Downloads"
        let documentos = "Documents"


        //Menu principal do programa

        var playAgain = true
        //Chamando funçoes, fluxo principal

        repeat {
            print("Digite o diretorio que voce deseja organizar\n1 - Downloads\n2 - Documentos\n3 - Sair do programa")
            print("Entrada: ", terminator: "")
            let escolha = readLine()!

            let escolhaInt = Int(escolha)
            
            switch escolhaInt{
            case 1:
                arquivos.localizar(escolha: download)
                arquivos.criarPastas()
                arquivos.visualizarConteudo()
                arquivos.separarArquivos()
                sleep(5)
                
            case 2:
                arquivos.localizar(escolha: documentos)
                arquivos.criarPastas()
                arquivos.visualizarConteudo()
                arquivos.separarArquivos()
                sleep(5)
                
            case 3:
                print("Saindo do programa...")
                playAgain = false
                
            default:
                print("\n\n=======|ATENÇAO|=======\n")
                print("Apenas 1, 2 ou 3 permitidos")
                sleep(3)
        //        playAgain = false
            }
        } while playAgain

    }
}





//    func app(){
//        let formatar = DateFormatter()
//        formatar.dateStyle = .medium
//        formatar.timeStyle = .none
//
//        let now = Date()
//
//        formatar.locale = Locale(identifier: "pt_BR")
//
//        print("Ola, digite seu nome!:")
//        let name = readLine()
//
//        print("Ola \(name!) hoje é dia", formatar.string(from: now))
