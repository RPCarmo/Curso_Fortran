!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio7
    
    implicit none
    
    real(8) :: C_A_0, h, t_final, t_0, k, C_A, t, C_A_analitico
    integer :: output_num

    C_A_0 = 1.d0 !mol/L
    h = 1.d0 !passo de tempo
    t_final = 2.d0*60.d0 !tempo final (segundos)
    t_0 = 0.d0 !tempo inicial (segundos)
    k = 0.54d0 !constante cinética da reação
    
    open(NEWUNIT=output_num,FILE="output.csv",ACTION="write")

    write(output_num,*) "tempo,C_A (numérico),C_A (analítico)"

    !Instante inicial
    C_A = C_A_0
    t = t_0
    write(output_num,*) t,",",C_A,",",C_A_0

    t = t + h

    !Integração temporal pelo método de Euler explícito
    do while(t < t_final)
        !Solução numérica
        C_A = C_A - h*k*C_A**2
        !Solução analítica
        C_A_analitico = C_A_0/(1.0d0 + k*(t-t_0)*C_A_0)

        write(output_num,*) t,",",C_A,",",C_A_analitico

        !Atualização do tempo
        t = t + h
    enddo
    
    close(output_num)

    !Varie a magnitude do passo de tempo (h) e observe como varia
    ! a difereção entre a solução numérica e a analítica.
end program


