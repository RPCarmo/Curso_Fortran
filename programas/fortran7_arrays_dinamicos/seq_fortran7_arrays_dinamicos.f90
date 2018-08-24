!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
    
    integer :: n, i, input
    !Declaro que essa variável será alocada futuramente.
    real(8),allocatable :: array(:)

    !vou ler o tamanho do array desejado
    print*, "Insira o número de elementos desejado do array."
    read(*,*) n

    !Esse comando aloca a variável. É utilizada memória do heap.
    allocate(array(n))

    do i = 1,n
        array(i) = i**2
    enddo
    print*, array

    !Esse comando desaloca a variável. Com isso, posso alocá-la
    ! novamente com outro tamanho.
    deallocate(array)
    !Ao final do programa, não precisar dar deallocate nos arrays
    ! alocados dinamicamente pois o fortran já faz isso automaticamente.


    print*,
    open(NEWUNIT=input,FILE="input.txt",ACTION="read")
    !Atribuindo novo valor a "n"
    read(input,*) n
    !Assim, posso alocá-la de novo:
    allocate(array(n))
    !Posso embutir um loop no read. Assim, posso gravar no
    ! array diversos valores escritos numa mesma linha do arquivo de texto.
    read(input,*) (array(i),i=1,n)
    print*, array
    
    close(input)


    !A combinação entre um read e um loop no formato abaixo leria valores
    ! escritos em uma coluna no arquivo de texto.

    !do i = 1,n
    !    read(input,*) array(i)
    !enddo


    !Se eu quisesse transferir dados escritos em formato de matriz em um arquivo
    ! de texto para um array bidimensional, poderia usar os comandos abaixo

        !do j=1,n2 !variáveis hipotéticas
            !read(input,*) (array_2D(i,j),i=1,n1) !variáveis hipotéticas
        !enddo

    !Note que os loops foram criados de forma que o índice mais a
    ! esquerda seja modificado no loop interno. Quanto mais a esquerda
    ! o índice, mais rápido o processamento no fortran.

end program


