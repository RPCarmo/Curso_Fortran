!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio6
    
    implicit none
    
    real(8), allocatable :: array(:)
    real(8) :: aux
    integer :: input_num, n, i, j
    
    open(NEWUNIT=input_num, FILE="input.txt", ACTION = "read")

    read(input_num,*) n
    allocate(array(n))

    do i = 1,n
        read(input_num,*) array(i)
    enddo

    close(input_num)

    print*, array

    !Colocando em ordem crescente
    do i = 1,n
        do j = (i+1),n
            if(array(i) > array(j)) then
                aux = array(i)
                array(i) = array(j)
                array(j) = aux
            endif
        enddo
    enddo
    
    print*,
    print*, array

end program


