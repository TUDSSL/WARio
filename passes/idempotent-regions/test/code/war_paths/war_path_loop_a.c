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
  int tmp_a = war_a; // Read

  for (int i=0; i<5; i++) {
    i = war_b; // Read
    war_b = i; // Write (War in this iteration)
  }

  war_a = tmp_a + 1; // Write

  return 1;
}
