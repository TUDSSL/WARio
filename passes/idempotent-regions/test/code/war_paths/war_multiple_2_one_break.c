/*
 * $WAR_COUNT: 2
 * $UNCUT_WAR_COUNT: 1
 * $PATH_COUNT: 1
 * $PATH_SIZE: 1
 */
int war_a;
int war_b;

void foo() {
  return;
}

int main(void) {
  // Read a
  int tmp_a = war_a;

  // Read b
  int tmp_b = war_b;

  // Write a
  war_a = tmp_a + 1;

  foo();

  // Write b, no WAR, break by foo().
  war_b = tmp_b + 1;

  return 1;
}

