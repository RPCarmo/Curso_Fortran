!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
    
    real(8) :: area, r, d
    real(8) :: a1, razao
    integer :: n_termos

    print*, "Insira o valor do raio do círculo."
    read(*,*) r

    !FUNÇÕES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*,
    print*,"FUNÇÕES"
    print*, "Variável d não inicializada: d =",d
    !Posso chamar a função dentro de um comando ou de uma operação.
    print*, "A área é ", area_circulo_func(r,d)
    !Ou posso atribuir o valor retornado dela para uma variável primeiro.
    area = area_circulo_func(r,d)
    print*, "A área é ", area

    !Note que a variável "d" é passada como argumento para a função,
    ! é modificada lá dentro e volta para o programa principal com o
    ! novo valor. Isso mostra que foi feita uma passagem por referência
    ! da variável para a função.
    print*, "O diâmetro é", d
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !SUBROTINAS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*,
    print*,"SUBROTINAS"
    area = 0.0d0
    print*, "Valor da area zerado. area =", area
    !Para chamar uma subrotina, preciso usar o comando "call". Note que,
    ! agora, a variável "area" também é um argumento da função.
    call area_circulo_sub(r,d,area)
    print*, "A área é ", area

    !Quando a subrotina ou função é declarada abaixo do contains, ela
    ! enxerga todas as variáveis declaradas acima dele. Nos demais
    ! exemplos, as variáveis foram passadas como argumentos
    ! apenas por questões didáticas.
    call qual_o_raio_sub()
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !FUNÇÕES RECURSIVAS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*,
    print*,"FUNÇÕES RECURSIVAS"
    a1 = 1.0d0
    razao = 5
    n_termos = 1.2d0
    print*, "A soma da PA é ", soma_pa(a1,n_termos,razao,1)
    !O símbolo "&" permite quebrar o código para outra linha
    print*, "Pela fórmula da PA:",&
         n_termos*(a1 + (a1+razao*(n_termos-1)))/2.d0
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !As funções devem ser declaradas abaixo do
    ! comando "contains" no programa principal.
    contains

    function area_circulo_func(r, d) result(area)

        implicit none  

        !Argumento
        real(8) :: r, d
        !Local
        real(8), parameter :: pi = 3.1415d0
        !Retorno
        real(8) :: area

        d = 2.d0*r
        area = pi*r**2
    end function

!    function area_circulo_func(r, d)
!
!        implicit none
!
!        !Argumento
!        real(8) :: r, d
!        !Local
!        real(8), parameter :: pi = 3.1415d0
!        !Retorno
!        real(8) :: area_circulo_func
!
!        d = 2.d0*r
!        area_circulo_func = pi*r**2
!    end function


    subroutine area_circulo_sub(r, d, area)
        
        implicit none

        !Arguments
        real(8) :: r, d, area
        !Local
        real(8), parameter :: pi = 3.1415d0

        d = 2.d0*r
        area = pi*r**2
    end subroutine

    
    subroutine qual_o_raio_sub()
        print*, "O raio é", r
    end subroutine


    recursive function soma_pa(a1,n_termos,razao,i) result(soma)
        
        implicit none

        !Argumento
        real(8) :: a1, razao
        integer :: n_termos, i
        !Retorno
        real(8) :: soma
        
        !É necesária uma condição de parada para a recursão.
        !Caso contrário, a função poderá ficar se chamando eternamente.
        if(i .le. n_termos) then
            !Note que o índice que entra como argumento é
            ! alterado a cada "camada" da recursão.
            soma = (a1+razao*(i-1)) + soma_pa(a1,n_termos,razao,i+1)
        endif
    end function

end program


