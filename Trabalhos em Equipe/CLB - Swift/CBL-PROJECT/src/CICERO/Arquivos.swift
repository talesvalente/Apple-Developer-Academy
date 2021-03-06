//
//  Arquivos.swift
//  CBL-PROJECT
//
//  Created by Cicero Nascimento on 28/03/22.
//

import Foundation

  
@available(macOS 10.12, *)


class Arquivos{
    

//  home          -> Definindo diretorio base da aplicaçao (dizendo que o diretorio inicial será /Users/usuario-atual)
//  listagemFiles -> Variavel array do tipo URL
    
    let home = FileManager.default.homeDirectoryForCurrentUser
    var listagemFiles: [URL] = []
    var filePath: String = "file:///Users/ciceronascimento/"
    var fileUrl: URL = URL(string: "file:///Users/ciceronascimento/")!
    
    var diretorioImagem: String = "default"
    var diretorioMusica: String = "default"
    var diretorioDocs: String = "default"
    var diretorioExec: String = "default"
    
    
//dicionario de tipos
    var listagemTipos = [
        "Imagem": [".jpg", ".gif", "jpeg", ".png"],
        "Audio": [".mp3", ".flac"],
        "Documentos": [".txt", ".pdf", ".doc", ".xlsx"],
        "Code": [".sql", ".feature", ".js", ".md", ".json"],
        "Executaveis": [".zip", ".dmg", ".7z", ".rar"]
    ]
    
    
    func localizar(escolha: String){
        
        do {
            
//  filePath -> Caminho escolhido
//  fileUrl  -> Concatenando diretorio base com o caminho escolhido
            
            filePath = escolha + "/"
            fileUrl = home.appendingPathComponent(filePath)
            let diretorioStr = String(fileUrl.path)
            
            visualizarDiretorio(diretorio: diretorioStr)

            let conteudo = try FileManager.default.contentsOfDirectory(
                at: fileUrl,
                includingPropertiesForKeys: nil
            )

            listagemFiles = conteudo
            
        } catch {
            
            print(Error.self)
            
        }
    }
    
    func visualizarDiretorio(diretorio: String){
        if diretorio.hasSuffix("Downloads"){
            print("\nDiretório escolhido: Downloads")
            print("Caminho: ", diretorio)
            print("\n")
            
        } else if diretorio.hasSuffix("Documents"){
            print("\nDiretório escolhido: Documentos")
            print("Caminho: ", diretorio)
            print("\n")
        }
    }
    
    func visualizarConteudo(){
        print("\nListando arquivos", terminator: "")
        sleep(1)
        print(".", terminator: "")
        sleep(1)
        print(".", terminator: "")
        sleep(1)
        print(".")
        sleep(1)
        
        print("Arquivos:\n", listagemFiles)
    }
    
    func criarPastas(){
        
        let pastaImagem = fileUrl.appendingPathComponent("Organizer - Imagens")
        let pastaAudio = fileUrl.appendingPathComponent("Organizer - Audios")
        let pastaDocumento = fileUrl.appendingPathComponent("Organizer - Documentos")
        let pastaExecutaveis = fileUrl.appendingPathComponent("Organizer - Executaveis")
        
        diretorioImagem = pastaImagem.path
        diretorioDocs = pastaDocumento.path
        diretorioMusica = pastaAudio.path
        diretorioExec = pastaExecutaveis.path
        
        if !FileManager.default.fileExists(atPath: pastaImagem.path) || !FileManager.default.fileExists(atPath: pastaAudio.path) || !FileManager.default.fileExists(atPath: pastaDocumento.path) || !FileManager.default.fileExists(atPath: pastaExecutaveis.path){
            do {
                
                try FileManager.default.createDirectory(atPath: pastaImagem.path, withIntermediateDirectories: true, attributes: nil)
                 
                try FileManager.default.createDirectory(atPath: pastaAudio.path, withIntermediateDirectories: true, attributes: nil)

                try FileManager.default.createDirectory(atPath: pastaDocumento.path, withIntermediateDirectories: true, attributes: nil)
                
                try FileManager.default.createDirectory(atPath: pastaExecutaveis.path, withIntermediateDirectories: true, attributes: nil)
                
                print("Pastas criadas!")
                sleep(2)
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("Nenhuma pasta precisou ser criada. :)")
            sleep(2)
        }
            
    }
    
    func separarArquivos(){
//Percorrer vetores de dicionario e listagem de arquivo para comparar tipos e mover
        var fileStr: String
        do {
            
            for file in listagemFiles{
                fileStr = String(file.path)
                for (tipo, extensao) in listagemTipos {
                    if tipo == "Audio"{
                        for extensoes in extensao{
                                if fileStr.hasSuffix(extensoes){
                                    print("Movendo:", file.path , "para: ", diretorioMusica)
                                    let nameFile = (file.path as NSString).lastPathComponent
                                    let fileDest = diretorioMusica + "/" + nameFile
                                    try FileManager.default.moveItem(atPath: file.path, toPath: fileDest)
                                }
                        }
                    } else if tipo == "Imagem"{
                        for extensoes in extensao{
                                if fileStr.hasSuffix(extensoes){
                                    print("Movendo:", file.path , "para: ", diretorioImagem)
                                    let nameFile = (file.path as NSString).lastPathComponent
                                    let fileDest = diretorioImagem + "/" + nameFile
                                    try FileManager.default.moveItem(atPath: file.path, toPath: fileDest)
                                }
                        }
                    } else if tipo == "Documentos" || tipo == "Code"{
                        for extensoes in extensao{
                                if fileStr.hasSuffix(extensoes){
                                    print("Movendo:", file.path , "para: ", diretorioDocs)
                                    let nameFile = (file.path as NSString).lastPathComponent
                                    let fileDest = diretorioDocs + "/" + nameFile
                                    try FileManager.default.moveItem(atPath: file.path, toPath: fileDest)
                                }
                        }
                    } else if tipo == "Executaveis"{
                        for extensoes in extensao{
                            if fileStr.hasSuffix(extensoes){
                                print("Movendo:", file.path , "para: ", diretorioExec)
                                let nameFile = (file.path as NSString).lastPathComponent
                                let fileDest = diretorioExec + "/" + nameFile
                                try FileManager.default.moveItem(atPath: file.path, toPath: fileDest)
                            }
                        }
                    }
                }
            }
            
        } catch {
            print(error)
        }

    }
}
        
        
//        func mover(file: URL){
//            do {
//                print("Movendo:", file.path , "para: ", diretorioExec)
//                let nameFile = (file.path as NSString).lastPathComponent
//                let fileDest = diretorioExec + "/" + nameFile
//                try FileManager.default.moveItem(atPath: file.path, toPath: fileDest)
//
//            } catch {
//                print(error)
//            }
//        }
 
        
        
// ============== percorrer listagemTipos e mostrar tipos suportados
//        for (tipo, extensao) in listagemTipos {
//            print("Tipo: ", tipo)
//            print("Extensões suportadas: ", terminator: "")
//            for extensoes in extensao {
//                print( extensoes, terminator: " ")
//            }
//            print("\n")
//        }
