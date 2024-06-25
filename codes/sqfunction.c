int sqroot(int x){
  unsigned y = 0;
  while(y*y != x){
    y = y + 1;
  }
  return y;
}
