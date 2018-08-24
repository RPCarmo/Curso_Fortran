!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio2
    
    implicit none
    
    real(8) :: df_n, x, dx, df_a
    
    x = 2.8334d0
    dx = 1.d-4
    
    !Derivada analítica
    df_a = (3.70434d0*x**2 + 4.246d0*x - 3.7436d0)/& ! o símbolo "&" quebra a linha
        (1.23478d0*x**3 + 2.123d0*x**2 - 3.7436d0*x + 12.86457d0)

    !f(x+dx)
    x = x + dx
    df_n = dlog(1.23478d0*x**3 + 2.123d0*x**2 - 3.7436d0*x + 12.86457d0)
    
    !Subtraindo f(x-dx) de f(x+dx)
    x = x - 2.0d0*dx 
    df_n = df_n - (dlog(1.23478d0*x**3 + 2.123d0*x**2 - 3.7436d0*x + 12.86457d0))
    
    !Dividindo (f(x+dx)-f(x-dx)) por 2*dx
    df_n = df_n/(2.d0*dx)

    print"(/ a8 f20.16 /)", "df/dx = ", df_n
    print"(a16 f20.16 /)","df analítico = ",df_a  


    !Análise da influência do tamanho de dx no cálculo derivada numérica
    !To variando dx de 1.0d0 a 1.0d-13 pra ver qual valor proporciona a
    ! derivada numérica mais próxima da derivada analítica
    dx = 10.d0
    do while(dx > 1.0d-14)   
        dx = dx*1.d-1        

        x = 2.8334d0 + dx
        df_n = dlog(1.23478d0*x**3 + 2.123d0*x**2 - 3.7436d0*x + 12.86457d0)

        x = 2.8334d0 - dx 
        df_n = df_n - dlog(1.23478d0*x**3 + 2.123d0*x**2 - 3.7436d0*x + 12.86457d0)
        
        df_n = df_n/(2.d0*dx)
        x = 2.8334d0

        print"(a5 es7.1 a7 es16.10 a14 es17.10)", "dx = ", dx, "  df = ", df_n, "  df_a-df_n = ",(df_a-df_n)
    enddo

    !Inicialmente, com a redução de dx, a derivada numérica se aproxima da analítica.
    !Em um certo valor de dx, a derivada numérica atinge um mínimo no erro em relação
    ! à analítica e, então o erro passa a crescer com a redução de dx.
    ! Na teoria, quanto menor dx, melhor a precisão da derivada. Apesar disso,
    ! devemos lembrar que, a partir de um certo valor de dx, a precisão do
    ! computador começa a ser fator limitante no cálculo.

end program


