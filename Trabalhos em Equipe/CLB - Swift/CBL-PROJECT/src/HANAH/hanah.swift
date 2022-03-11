//
//  hanah.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//  Modified by Hanah Santana on 11/03/22.

import Foundation

class Hanah{
    func app(){
        //var escape:Character
        /*while(escape != 27){ //27 corresponde ao caractere ESC, enquanto o usuário não pressionar ESC, o programa se manterá no loop de execução.
            //escape = readLine() //escape = função que faz leitura já em char
            //TO DO: converter o String lido no escape para char
        }*/
        
        print("     - Menu -")
        print("Insira o numero correspondente a funcao que deseja utilizar:")
        print("1 - Qual minha média final   2 - Quanto devo tirar na N2")
        print("Pressione ESC para sair da aplicacao")
        let n1:Double = 10
        var n2:Double = 6
        let nota_final:Double = (2*n1 + 3*n2)/5
        
        let option = readLine()
        switch option{
        case "1":
            print("Nota final:",nota_final)
        case "2":
            n2 = (35 - 2*n1)/3
            print("Tire umeno um",n2,"pra passar, meu fi") //Prova final, faltou 0.5, precisava de 9 na n2
        default:
            print("Você não selecionou uma opção válida")
        }
    }
}
