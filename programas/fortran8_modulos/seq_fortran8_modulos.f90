!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!Posso declarar um módulo no mesmo arquivo do "program" também.
module blablabla
    implicit none

    character(len=40) :: acesso = "Também consigo acessar o módulo."

contains

    subroutine diga_oi()
        print*, "Hello!"
    end subroutine

end module


program meu_programa

    !Com esses comandos eu adiciono os módulos ao programa principal.
    use blablabla
    use meu_modulo    

    implicit none
        
    integer :: i
    real(8) :: r
    
    i = 2
    
    !Consigo acessar as variáveis do módulo aqui no programa principal,
    ! menos a variável private.
    print*,"um_int_global =",um_int_global
    print*,"um_int_constante =",um_int_constante

    um_int_global = um_int_global + 1

    print*,"um_int_global =",um_int_global
    print*,

    !Consigo acessar as subrotinas do módulo também
    call sub1(i,r)

    call sub2(r)


    print*, "Testando acesso ao módulo blablabla:"
    print*, acesso
    call diga_oi()

end program


