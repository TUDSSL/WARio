int global = 0;
int other = 0;

void foo(void) {
  global += 5;
}

void bar(void) {
  other += 1;
}

int main(void)
{
  foo();
  bar();

  if (global < 10)
    global += 42;

  return global;
}
