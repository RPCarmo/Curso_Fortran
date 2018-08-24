!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    !Se não escrever implicit none, caso esqueça de declarar alguma variável,
    ! o programa tentará deduzir o tipo dela.
    implicit none
    
    !BLOCO DE DECLARAÇÃO DE VARIÁVEIS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    integer(2) meu_int_p !inteiro de 2 bytes
    integer(4) meu_int !Default: inteiro de 4 bytes
    integer(8) meu_int_g !inteiro de 8 bytes
    real(4) meu_real !Default: real de 4 bytes
    real(8) meu_real_d !real de 8 bytes (dupla precisão)
    logical meu_log
    character meu_char
    complex meu_complex
    
    !Posso declarar várias variáveis ao mesmo tempo.
    integer a, b, c, d, e, f
    !Se quiser declarar e definir um valor ao mesmo tempo, tem que colocar "::" depois
    ! do tipo. Por precaução, coloque :: sempre. Não tem problema.
    real(8) :: r1=1.234
    !note que se não colocar o "d0", será armazenado lixo numérico nas demais
    ! casas decimais. Confira nos prints abaixo.
    real(8) :: r2=1.234d0, r3=1.234d-2, r4=1.234d+2, r5

    !como usei o comando "parameter", pi é uma constante.
    !Não pode ser modificado ao longo do programa.
    real(8), parameter :: pi = 3.1415d0 

    logical :: ll1=.true., ll2=.false.

    character :: ch1='a'
    !Para armazenar uma frase, deve-se declarar um array de characters,
    ! conhecido como string.
    character(len=20) :: ch2="Oi, td bem?"
    
    complex :: comp=(2.3,4.5)

    !Declaração de arrays
    real(8) :: array1(3)
    real(8) :: array2(3)=0.d0 !todos os elementos são zero.
    real(8) :: array3(3)=1.2d0 !todos os elementos são 1.2d0.
    real(8) :: array4(3)=[1.2d0,2.3d0,3.4d0] !definindo o valor de cada elemento
    real(8) :: array2_2D(2,2)=1.d0 !todos os elementos são 1.d0.
    !Para declarar e definir ao mesmo tempo um array bidimensional:
    real(8) :: array1_2D(2,3)=transpose(reshape([1.1d0,1.2d0,1.3d0,2.1d0,2.2d0,2.3d0],[3,2]))    
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !A partir daqui não posso mais declarar variáveis
    array2_2D(1,2) = 2.0d0
    array2_2D(2,1) = 3.0d0
    array2_2D(2,2) = 4.0d0

    print*, "int: ", sizeof(meu_int), "bytes"
    print*, "real: ", sizeof(meu_real), "bytes"
    print*, "logical: ", sizeof(meu_log), "bytes"
    print*, "char: ", sizeof(meu_char), "bytes"
    print*, "complex: ", sizeof(meu_complex), "bytes"

    !Observe como a mudança do número de bytes em um mesmo tipo altera a precisão.
    print*,
    print*, "maior int: ", huge(meu_int)
    print*, "maior real: ", huge(meu_real)
    print*,
    print*, "maior real(4): ", huge(meu_real)
    print*, "maior real(8): ", huge(meu_real_d)
    print*, "maior int(2): ", huge(meu_int_p)
    print*, "maior int(4): ", huge(meu_int)
    print*, "maior int(8): ", huge(meu_int_g)

    !reais
    print*,
    print*, "r1 =", r1
    print*, "r2 =", r2
    print*, "r3 =", r3
    print*, "r4 =", r4

    !lógicos
    print*,
    print*, "ll1 =", ll1
    print*, "ll2 =", ll2

    !character
    print*,
    print*, "ch1 =", ch1
    print*, "ch2 =", ch2

    !complexos
    print*,
    print*, "comp =", comp
    print*, "parte real =", real(comp) !função retorna a parte real do complexo
    print*, "parte imag. =", aimag(comp) !fução retorna a parte imaginária do complexo

    !arrays
    print*,
    print*, "array1 =", array1
    print*, "array2 =", array2
    print*, "array3 =", array3
    print*, "array4 =", array4
    print*, "array1_2D(1,:) =", array1_2D(1,:)
    print*, "array1_2D(2,:) =", array1_2D(2,:)
    print*, "array2_2D =", array2_2D

end program


