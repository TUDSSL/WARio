/*
 * $WAR_COUNT: 3
 * $UNCUT_WAR_COUNT: 3
 * $PATH_COUNT: 3
 * $PATH_SIZE: 1
 * $PATH_SIZE: 2
 * $PATH_SIZE: 3
 */
int war_a;
int war_b;
int war_c;

int main(void) {
  // Read a
  int tmp_a = war_a;

  // Read b
  int tmp_b = war_b;

  // Read c
  int tmp_c = war_c;

  // Write a
  war_a = tmp_a + 1;

  // Write b
  war_b = tmp_b + 1;

  // Write c
  war_c = tmp_c + 1;

  return 1;
}

