!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!Desenvolvido por!!!!!!!!!!!!!!!
!!!!!!!!!!!Rafael Pereira do Carmo!!!!!!!!!!!!
!!!!!!!email: rcarmo@peq.coppe.ufrj.br!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program exercicio4
    
    implicit none
    
    real(8) :: tau, T, Tc, Pc, a, b, c, d, Psat, Tnew, tol
    integer :: it, it_max=100

    Tc = 425.25d0 !Kelvin
    a = -7.01763d0
    b = 1.6777d0
    c = -1.9739d0
    d = -2.172d0
    Pc = 37.92d0 !bar

    Psat = 2.8d0 !bar

    it = 0
    tol = 1.d-3 !Tolerância. Está relacionada com a precisão desejada no resultado.
    T = 10000.d0
    Tnew = 20.d0 !Chute inicial da temperatura em Celsius
    Tnew = Tnew + 273.15d0 !Conversão para Kelvin

    !MÉTODO DAS SUBSTITUIÇÕES SUCESSIVAS
    !Esse é aquele loop importante apresentado na seção
    ! sobre loops condicionais: comando "do while"
    do while(it < it_max .and. dabs(Tnew-T) > tol)
      it = it + 1
      T = Tnew
      tau = 1.d0 - T/Tc

      !TESTE AMBAS AS FORMAS
      !Primeira forma sugerida. Essa dá errado.
      Tnew = Tc*(a*tau + b*tau**1.5d0 + c*tau**2.5d0 + d*tau**5.d0)/dlog(Psat/Pc)
      !Segunda forma sugerida. Essa dá certo.
      !Tnew = (T*Tc*(a*tau + b*tau**1.5d0 + c*tau**2.5d0 + d*tau**5.d0)/dlog(Psat/Pc))**0.5d0

        print*, it,Tnew
    enddo
    print"(/a7 f8.4 a3/)", "Tsat = ",(Tnew-273.15d0),"°C"
    
end program


