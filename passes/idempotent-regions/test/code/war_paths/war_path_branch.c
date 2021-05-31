/*
 * $WAR_COUNT: 2
 * $UNCUT_WAR_COUNT: 2
 * $PATH_COUNT: 2
 * $PATH_SIZE: 1
 * $PATH_SIZE: 1
 */
int war_a;
int war_b;

int main(void) {
  // Read a
  int tmp_a = war_a;

  // Read b
  int tmp_b = war_b;

  // Some conditional
  if (tmp_a > 42) {
    // Write a
    war_a = tmp_a + 1;
  }

  // Write b
  war_b = tmp_b + 1;

  return 1;
}
