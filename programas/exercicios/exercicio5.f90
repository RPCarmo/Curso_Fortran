!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio5
    
    implicit none
    
    integer :: n

    print*, "Insira um número inteiro positivo."
    read(*,*) n
    
    print"(/a14 i0 a4 i0/)", "O fatorial de ",n," é ",fatorial(n)

contains

    recursive function fatorial(n) result(f)

        implicit none
        
        !Argumento
        integer :: n
        !Retorno
        integer :: f
        
        !Condição de parada da recursão
        if(n .gt. 1) then
            f = n*fatorial(n-1)
        else
            f = 1
        endif

    end function

end program


