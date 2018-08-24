!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
        
    real(8) :: r_1D(4) = [1.23d0, 2.34d0, 3.45d0, 4.56d0]
    real(8) :: r_2D(2,2)
    real(8) :: r_aux(2) = 2.d0

    r_2D(1,1) = 1.d0
    r_2D(1,2) = 2.d0
    r_2D(2,1) = 3.d0
    r_2D(2,2) = 4.d0

    !FUNÇÃO SUM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !soma os elementos de um array...
    print*, sum(r_1D)
    !... independentemente de sua dimensão
    print*, sum(r_2D)
    !Posso selecionar apenas um pedaço do array colocando ":" no lugar
    ! de um dos índices. Nesse caso, entou selecionando todas as
    ! linhas da coluna 1.
    print*, sum(r_2D(:,1))


    !FUNÇÃO ABS (CALCULA O MÓDULO)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*, "O módulo de -0.123456789123d0 é",abs(-0.123d0)


    !FUNÇÃO LOG (CALCULA O LOG NEPERIANO)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*, "O log neperiano de 100 é",log(100.d0)


    !FUNÇÃO LOG10 (CALCULA O LOG DE BASE 10)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*, "O log em base 10 de 100 é",log10(100.d0)


    !FUNÇÃO EXP (CALCULA A EXPONENCIAL)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*, "A exponencial de -100 é",exp(-100.d0)


    !FUNÇÃO NINT (Nearest INTeger - aproxima o número real para um inteiro)
    print*, "O número 2.3 é aproximadamente",nint(2.3d0)
    print*, "O número 2.8 é aproximadamente",nint(2.8d0)


    !FUNÇÕES MAX E MIN
    print*, "O maior valor entre 2.5 e 10.4 é",max(2.5d0,10.4d0)
    print*, "O menor valor entre 2.5 e 10.4 é",min(2.5d0,10.4d0)
    !Não podem ser usadas com arrays.


    !FUNÇÕES MAXVAL E MINVAL
    print*, "O maior valor de r_1D é",maxval(r_1D)
    print*, "O menor valor de r_1D é",minval(r_1D)
    !É utilizada apenas com arrays

    
    !FUNÇÃO MATMUL (realiza multiplicação matricial)!!!!!!!!!!!!!!!!!!!!!!
    print*, "O produto interno entre r_2D e r_aux é ",matmul(r_2D,r_aux)

end program


