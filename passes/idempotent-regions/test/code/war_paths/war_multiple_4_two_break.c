/*
 * $WAR_COUNT: 4
 * $UNCUT_WAR_COUNT: 2
 * $PATH_COUNT: 2
 * $PATH_SIZE: 1
 * $PATH_SIZE: 2
 */
int war_a;
int war_b;
int war_c;
int war_d;

void foo() {
  return;
}

int main(void) {
  // Read a
  int tmp_a = war_a;

  // Read b
  int tmp_b = war_b;

  // Read c
  int tmp_c = war_c;

  // Read d
  int tmp_d = war_d;

  // Write a
  war_a = tmp_a + 1;

  // Write b
  war_b = tmp_b + 1;

  foo();

  // Write c, no WAR break by foo()
  war_c = tmp_c + 1;

  // Write d, no WAR break by foo()
  war_d = tmp_d + 1;

  return 1;
}
