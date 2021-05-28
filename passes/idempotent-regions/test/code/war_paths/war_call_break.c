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

  foo();

  // Write
  g = tmp + 1;

  return g;
}
