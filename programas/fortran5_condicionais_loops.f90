!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program meu_programa
    
    implicit none
    
    integer :: i, j, somatorio, prod, it, it_max
    integer :: r(6)=[2,4,6,8,10,12]
    integer :: b(4)=[1,3,5,7]
    real(8) :: f, tol
    
    !LOOPS: COMANDO "DO"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    !Calcula a soma dos termos do array "r"
    somatorio = 0 !Se não inicializar a variável, ela pode conter "lixo" da memória.
    do i = 1,6
        !o valor da variável "somatorio" é sobreposto pela soma do valor
        ! atual da variável "somatorio" com o valor de r(i)
        somatorio = somatorio + r(i)
    enddo
    print"(a6 x i0)", "soma =",somatorio

    !Calcula a soma do produto de cada um dos termos de "b" com
    ! cada um dos termos de "r"  
    prod = 0
    do i = 1,6
        do j = 1,4
            prod = prod + r(i)*b(j)
        enddo
    enddo
    print"(a6 x i0)", "prod =",prod
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    
    !TESTES CONDICIONAIS: COMANDOS "IF", "ELSE IF" E "ELSE"!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*,
    if(r(1) > 1) then
        print*, "r(1) é maior que 1"
    endif

    !Utilização do comando ".and."
    print*,
    if(r(1) > 1 .and. r(1) < 10) then
        print*, "r(1) é maior que 1 e menor que 10"
    endif

    !Utilização do comando ".or."
    print*,
    if(r(1) > 5 .or. r(1) /= 3) then
        print*, "r(1) é, pelo menos, ou maior que 5, ou diferente de 3."
    endif

    !Posso usar quantos "else if" eu quiser.
    print*,
    if(r(2) <= 1) then
        print*, "r(2) é menor ou igual a 1"
    else if(r(2) == 100) then
        print*, "r(2) é igual a 100"
    else if(r(2) > 3) then !Posso colocar quantos "else if" eu quiser
        print*, "r(2) é maior que 3"
    else
        print*, "Nenhum dos testes é verdadeiro"
    endif
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


    !LOOPS CONDICIONAIS: COMANDO "DO WHILE"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    print*, 
    f = 3.d0
    it_max = 100
    tol = 1.d-6
    it = 1
    !Enquanto it for menor que it_max e f for maior que 1.d-6,
    ! realize o comando no interior do "do while". Se um dos testes for falso,
    ! é o suficiente para sair do loop.
    do while(it < it_max .and. f > tol)
        print*, f
        f = f/4.d0
        it = it + 1
    enddo
    print*, f
    !Nesse caso, o loop é controlado pelo número de iterações, que deve ser
    ! menor que um número máximo estipulado, e pelo valor de uma variável f,
    ! que deve ser maior que a variável tol. Esse é um dos loops mais importantes
    ! em métodos numéricos. Se o loop é finalizado por causa do número de
    ! iterações, diz-se que o método não convergiu. Caso o loop seja finalizado
    ! porque o valor f tornou-se menor que o de tol, obteve-se sucesso na
    ! aplicação do método. A variável tol representa a tolerância do método.
    ! Deseja-se que f iguale-se a zero, o que nunca irá acontecer devido à
    ! precisão do computador. Assim, estipula-se uma tolerância a partir da qual
    ! o valor de f é considerado virtualmente igual a zero.

end program


