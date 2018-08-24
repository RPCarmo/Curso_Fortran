!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

module meu_modulo

    !Aqui, caso necessário, você pode dar "use" em outros módulos
    use blablabla !Como eu fiz com esse aqui.

    implicit none
    
    !Cuidado! Essa variável é global. Ela pode ser modificada a partir
    ! de qualquer arquivo que esteja usando este módulo
    integer :: um_int_global = 1

    !Essa variável é global apenas para o módulo. Todas as funções/subrotinas
    ! abaixo do contains poderão acessar essa variável.
    integer, private :: um_int_privado = 2

    !Isso é comum de se fazer. Essa variável é global como a variável "um_int_global",
    ! porém, ela é uma constante. Assim, ela pode ser acesada, mas não modificada.
    integer, parameter :: um_int_constante = 3
    
contains

    subroutine sub1(meu_int,meu_real)
        !Argumentos
        integer :: meu_int
        real(8) :: meu_real
        
        print*, "Entrei na sub1"
        print*,"um_int_privado =",um_int_privado
        print*,"um_int_global =",um_int_global

        !consigo acessar as 3 variáveis declaradas acima do contains
        ! do módulo: um_int_privado, um_int_global e um_int_constante.
        um_int_privado = um_int_privado + 1
        um_int_global = um_int_global + 1
        
        meu_real = meu_real**(um_int_constante+meu_int)

        print*,"um_int_privado =",um_int_privado
        print*,"um_int_global =",um_int_global
        print*, "Saí da sub1"
        print*,
    end subroutine

    subroutine sub2(meu_real)
        !Argumentos
        real(8) :: meu_real

        print*, "Entrei na sub2"
        print*,"um_int_privado =",um_int_privado
        print*,"um_int_global =",um_int_global

        !consigo acessar as 3 variáveis declaradas acima do contains
        ! do módulo: um_int_privado, um_int_global e um_int_constante.
        um_int_privado = um_int_privado + 1
        um_int_global = um_int_global + 1

        meu_real = meu_real*um_int_constante

        !Consigo acessar a subrotina do módulo adicionado
        call diga_oi()
    
        print*,"um_int_privado =",um_int_privado
        print*,"um_int_global =",um_int_global
        print*, "Saí da sub2"
        print*,
    end subroutine

end module


