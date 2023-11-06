#include <stdio.h>
char arr[65][65];

void f(int a, int b, int n)
{
  int i, j, flag = 0;
  char p = arr[a][b];
  for(i = 0; i<n; i++)
    {
      for(j = 0; j<n; j++) {
        if(p != arr[a+i][b+j])
        {
          flag = 1;
          break;
        }
      }
      if(j != n)
      {
        break;
      }
    }
  if(flag == 0) printf("%c", p);
  else {
    printf("(");
    n /= 2;
    f(a, b, n);
    f(a, b+n, n);
    f(a+n, b, n);
    f(a+n, b+n, n);
    printf(")");
  }
}

int main() {
  int n;
  scanf("%d", &n);
  int i, j;
  for(i=0; i<n; i++)
    {
      scanf("%s", arr[i]);
    }
  f(0,0,n);
}