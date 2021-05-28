/*
 * $WAR_COUNT: 1
 * $UNCUT_WAR_COUNT: 0
 */
int g;

void foo() {
  return;
}

int main(void) {
  // Read
  int tmp = g;

  // If/else breaks BB
  if (tmp > 42)
    tmp = 1;
  else
    tmp = 2;

  // Call breaks the path
  foo();

  // Write
  g = tmp + 1;

  return g;
}
