/*
 * $WAR_COUNT: 1
 * $UNCUT_WAR_COUNT: 1
 */
int g;

int main(void) {
  for (int i=0; i<5; i++) {
    g = i; // Write (WAR in the second iteration with Read below)
    i = g; // Read
  }
  return g;
}
