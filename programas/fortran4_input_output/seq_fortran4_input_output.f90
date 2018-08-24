!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
    
    !Declaração de variáveis
    integer :: input, output, iii
    real(8) :: rrr
    character(len=20) :: nome_output
    
    !EXEMPLOS DE PRINT E WRITE NA TELA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print"(i7)", 12345
    print"(i5)", 12345
    print"(i3)", 12345
    
    !o 0 faz o formato ter o menor número de dígitos necessário
    print"(i0)", 12345

    !Observe como a formatação de saída se comporta em
    ! cada um dos casos abaixo.
    print*,
    print"(f5.4)", 1.2345d0
    print"(f6.4)", 1.2345d0
    print"(f5.3)", 1.2345d0
    print"(f9.4)", 1.2345d0
    print"(f9.7)", 1.2345d0
    print"(f7.4)", -1.2345d0
    print"(f7.2)", -123.45d0
    
    !o 0 faz o formato ter o menor número de dígitos necessário
    !(não funciona no número de casas decimais)
    print"(f0.4)", -1.2345d0 

    print*,
    !Nesse caso, o primeiro número do formato deve incluir também
    !os dígitos presentes no expoente
    print"(e11.5)",123.45 

    !Formatando impressão de character
    write(*,*)
    write(*,"(a10)") "Oi"
    write(*,"(a10)") "Oi, tudo bem?"
    write(*,"(a13/)") "Oi, tudo bem?" !lembre que "/" pula linha
    write(*,"(a17)") "^ Pulei uma linha"

    !Um exemplo mais complexo
    print*,
    print*, "Um exemplo mais complexo"
    print"(2(i3(3x))/f5.3)", 123, 456, 7.899d0 
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !EXEMPLOS DE READ DA TELA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print"(//)",
    print*, "Insira o número 1234."
    read(*,*) input !vou escrever 1234
    print*, input

    !Cuidado se for usar formato no read.
    !Escreva 1234 de novo. Note que o número foi lido pela metade!
    print*, "Insira o número 1234."
    read(*,"(i2)") input 
    print*, input

    !Se tentar ler um número real em um inteiro, dá erro.
    !Descomente o código e insira o valor 1.8 quando solicitado.
    !print*, "Insira o número 1.8."
    !read(*,*) input
    !print*, input
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !EXEMPLOS DE READ E WRITE USANDO ARQUIVO DE SAÍDA/ENTRADA!!!!!!!!!!!!
    !O identificador do arquivo é um integer.
    !Nesse caso, especifiquei manualmente.
    open(123, FILE = "input.txt", ACTION = "read")

    read(123,*) iii
    print*,
    print*, iii
    read(123,*) iii, rrr
    print*, iii, rrr

    close(123)


    !Posso optar por salvar o nome do arquivo numa variável.
    nome_output = "output.txt"
    !Posso usar o comando NEWUNIT para que o programa gere o inteiro
    ! identificador do arquivo sozinho.
    open(NEWUNIT = output, FILE = nome_output, ACTION = "write")
    !Se o arquivo de saída já existir, ele será substituído.    

    !Vai imprimir no arquivo um número do lado do outro  
    write(output,*) iii, rrr

    close(output)


end program


