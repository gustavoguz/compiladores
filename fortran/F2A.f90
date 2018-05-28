 PROGRAM F2A
      I=35
      K=I
      CALL F(I)
      PRINT *,K,'th Fibonacci number is',I
      STOP
      END PROGRAM

      SUBROUTINE F(I)
      DIMENSION A(I+1)
      A(1)=1; 
      A(2)=1
      A(J)=A(J-1)+A(J-2)
      DO1J=3
      I=I+1
1     CONTINUE
      I=A(I+1)
      RETURN
      END SUBROUTINE

