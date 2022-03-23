//
//  jamile.swift
//  CBL-PROJECT
//
//  Created by Tales Valente on 08/03/22.
//

import Foundation

//Criei duas funções uma para receber uma resposta string
func getAnswer(for question: String) -> String {
    print(question)
    let answer = readLine()!
    return answer
}
//E a outra função para receber uma resposta com valor Int, onde além de pedir a resposta de um Int, cria um loop caso a pessoa não responda um valor inteiro.
func getAnswerInt(for question: String) -> Int {
    print(question)
    var answerInt: Int? = nil
    while answerInt == nil {
        let answer = readLine()!
        answerInt = Int(answer)
    }
    return answerInt!
}
//criei uma estrutura de um objeto 'exercício', onde precisa do nome do usuário,series e repetições.
struct Exercise {
    var name: String
    var numberOfSeries: Int
    var numberOfRepetitions: Int
}
//Para cadastrar mais de um exercício, precisei de um array desse objeto.
//por ser um visualizador de treinos criei uma variavél para o achar o primeiro exercício da lista array
var exercises: [Exercise] = []
var currentExercise = 0

//Precisei criar uma função para fazer uma nova criação de exercício, enquanto fosse da vontade do usuário cadastrar mais exercícios no dia.
//
func createExercise() {
    let exerciseName = getAnswer(for: "Qual o nome do exercicio?")
    let numberOfSeries = getAnswerInt(for: "Quantas séries ele possuí?")
    let numberOfRepetitions = getAnswerInt(for: "Quantas repetições?")

    //
    let newExercise = Exercise(name: exerciseName, numberOfSeries: numberOfSeries, numberOfRepetitions: numberOfRepetitions)
    //
    exercises.append(newExercise)
}

func printCurrentExercise() {
    printExercise(exercise: exercises[currentExercise])
    currentExercise += 1
}

func allExercises() {
    print("""
***************************
*        Exercicios       *
***************************
""")
    for exercise in exercises {
        printExercise(exercise: exercise)
    }
}

func printExercise(exercise: Exercise) {
    print("Exercicio \(exercise.name), número de séries: \(exercise.numberOfRepetitions), repetições: \(exercise.numberOfRepetitions)")
}

func exercitar(){
    let exercise = exercises[currentExercise]
    var series = exercise.numberOfSeries
    while series > 0 {
        let command = getAnswer(for: "acabou a serie?")
        //Se ele tiver acabado a serie, diminuir em 1 o numero de series restantes
        //Perguntar ao usuario se ele acabou a serie
        if command == "n" || command == "y" {
            series -= 1
        }
    }
    print("Você acabou o exercicio")
    currentExercise += 1
}


var menu = """
***************************
*    Academia da Jamile   *
***************************
1 - Cadastrar exercicio
2 - Visualizar exercicio atual
3 - Visualizar exercicios
4 - Sair
"""
//User flow
//User flow de treinar
var command = 99
while command != 4 {
    print(menu)
    command = getAnswerInt(for: "Escolha uma opção do menu")
    //O que é um switch
    switch command {
    case 1:
        createExercise()
    case 2:
        printCurrentExercise()
    case 3:
        allExercises()
    case 4:
        command = 4
    default:
        command = 99
    }
}
