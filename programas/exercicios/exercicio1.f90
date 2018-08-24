!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!Dica: Tente programar primeiro um único ponto.
!Feito isso, use o comando "do" para varia a fração de água na entrada e criar a curva.
program exercicio1
    
    implicit none
    
    real(8) :: x_agua_e, x_solido_e, x_agua_s1, x_solido_s1
    real(8) :: Q_s1, Q_s2, Q_e, eta, passo
    integer :: N, i, output_num

    eta = 0.7d0 !eficiência
    Q_e = 100.d0 !kg/h    

    N = 100
    passo = 1.0d0/N

    !O arquivo csv permite que os dados sejam abertos diretamente no excel
    ! no formato de colunas. Com isso, é só plotar os resultados.
    open(NEWUNIT=output_num,FILE="output.csv",ACTION="write")
    write(output_num,*) "x_agua_e,x_agua_s1,x_solido_e,x_solido_s1"
    do i = 1,N
        x_agua_e = passo*i

        !o somatório das frações de água e sólido tem que ser 1.
        x_solido_e = 1.0d0 - x_agua_e

        !Equação da eficiência
        Q_s2 = eta*Q_e*x_agua_e

        !Equações do balanço de massa
        Q_s1 = Q_e - Q_s2
        x_solido_s1 = Q_e*x_solido_e/Q_s1

        !o somatório das frações de água e sólido tem que ser 1.
        x_agua_s1 = 1.d0 - x_solido_s1

        write(output_num,*) x_agua_e,",",x_agua_s1,",",x_solido_e,",",x_solido_s1
    enddo
    close(output_num)    

    !Experimente plotar as curvas x_agua_s1 vs x_agua_e e x_solido_s1 vs x_agua_e
    !Observe como as frações na saída variam com a fração de água na entrada.
end program


