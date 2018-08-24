
int func2(int outro_int, double outro_real8)
{
  int maisum_int = 4;
  double maisum_real8;
  
  maisum_real8 = outro_real8*outro_int*3.5;
  
  return 0;
}


int func1(int meu_int, double meu_real8)
{
  int outro_int = 1;
  double outro_real8;
  
  outro_real8 = meu_real8*meu_int*2.5;
  
  func2(outro_int,outro_real8);
  
  return 0;
}


int main(void)
{
  int meu_int;
  double meu_real8;
  
  meu_int = 2;
  
  meu_real8 = meu_int*2.5;
  
  func1(meu_int,meu_real8);

  return 0;
}

