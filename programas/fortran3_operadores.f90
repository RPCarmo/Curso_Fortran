!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
    
    !Declaração de variáveis
    integer :: i_a, i_b
    real(8) :: r_a, r_b
    real(8) :: r_array(3)=1.0d0

    !Definindo valores de algumas variáveis
    i_a = 2
    i_b = 5
    r_a = 2.3d0
    r_b = 5.2d0
    
    !soma de dois reais
    print*, "r_a+r_b =",r_a+r_b

    !subtração de dois reais
    print*, "r_a-r_b =",r_a-r_b

    !produto entre um real e um integer. O programa prevalece a precisão do real.
    print*, "r_a*i_a =",r_a*i_a

    !divisão de um array por um integer. A divisão é feita termo a termo do array.
    print*, "r_array/i_b =",r_array/i_b

    !Exponenciação
    print*, "i_a**i_b =",i_a**i_b

    !Divisão entre dois inteiros. Nesse caso, o resultado será um inteiro também.
    !Atenção! O programa NÃO vai calcular o número real e aproximá-lo para um integer,
    ! como faríamos de cabeça. Ele vai apenas pegar o número antes do ponto,
    ! ou seja, a parte inteira do número.
    print*, "i_b/i_a =",i_b/i_a

    !Um exemplo um pouco mais complicado
    print*, "r_a**(i_b/i_a) =",r_a**(i_b/3.d0)

end program
