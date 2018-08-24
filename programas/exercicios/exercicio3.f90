!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio3
    
    implicit none
    
    real(8) :: int_a, int_n, x, dx, x_new
    integer i, N

    !Integral analítica
    int_a = 1.4d0 - 0.6d0 + 5.1d0
    print"(a8 es14.8)", "int_a = ",int_a
    

    !Integral numérica
    x = 0.d0
    x_new = x
    int_n = 0.d0
    !Número de trapézios. Modifique-o e veja como a integral numérica varia.
    N = 4
    dx = 1.d0/N !Largura de cada trapézio
    do  i = 1,N
        x_new = x_new + dx
        int_n = int_n + (4.2d0*x**2 - 1.2d0*x + 5.1d0)+(4.2d0*x_new**2 - 1.2d0*x_new + 5.1d0)
        x = x_new
    enddo
    int_n = int_n*dx/2.d0
    print"(a8 es14.8)", "int_n = ", int_n

    !Note que com o aumento do número de trapézios, mais próxima a solução numérica
    ! se torna da analítica. O número mínimo de trapézios necessários para obter-se
    ! um erro suficientemente pequeno em relação à integral analítica varia com
    ! a forma da função avaliada.

end program


