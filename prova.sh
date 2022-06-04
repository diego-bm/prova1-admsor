#!/bin/bash
menu(){
    reset

    echo " _____________________ "
    echo "|1-Pentágono (5)      |"
    echo "|2-Heptágono (7)      |"
    echo "|3-Octógono (8)       |"
    echo "|4-Divisão de Inteiros|"
    echo "|0-Sair               |"
    echo "|_____________________|"

    read opcao
    case $opcao in
        0) exit ;;
        1) pentagono ;;
        2) heptagono ;;
        3) octogono ;;
        4) divisao ;;
        *) echo "Opção inválida."
    esac
}

pentagono(){
    clear
    while [ $i -lt 5 ]; do
        echo "Informe o lado $contaLado:"
        read lado
        if [ $lado -lt 1 ]; then
            echo "Informe um número maior que zero."
        else
            ((total=$total + $lado))
            ((i=$i + 1))
            ((contaLado=$contaLado + 1))
        fi
        
    done
    echo "O perímetro do pentágono é de $total"
    menu
}

heptagono(){
    clear
    while [ $i -lt 7 ]; do
        echo "Informe o lado $contaLado:"
        read lado
        if [ $lado -lt 1 ]; then
            echo "Informe um número maior que zero."
        else
            ((total=$total + $lado))
            ((i=$i + 1))
            ((contaLado=$contaLado + 1))
        fi
    done
    echo "O perímetro do heptágono é de $total"
    menu
}

octogono(){
    clear
    while [ $i -lt 8 ]; do
        echo "Informe o lado $contaLado:"
        read lado
        if [ $lado -lt 1 ]; then
            echo "Informe um número maior que zero."
        else
            ((total=$total + $lado))
            ((i=$i + 1))
            ((contaLado=$contaLado + 1))
        fi
    done
    echo "O perímetro do octógono é de $total"
    menu
}

divisao(){
    clear
    echo "Insira o primeiro número:"
    read num1
    echo "Dividido por?"
    read num2
    if [ $num2 -lt 1 ]; then
        echo "NEM PENSE em dividir por zero. Tente de novo."
        menu
    else
        ((total=$num1 / $num2))
    fi
    echo "O resultado é $total"
    menu
}

reset(){
    contaLado=1
    lado=0
    i=0
    total=0
}

menu