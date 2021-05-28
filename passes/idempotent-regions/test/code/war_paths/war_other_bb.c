/*
 * $WAR_COUNT: 1
 * $UNCUT_WAR_COUNT: 1
 */
int g;

int main(void) {
  // Read
  int tmp = g;

  // If/else breaks BB
  if (tmp > 42)
    tmp = 1;
  else
    tmp = 2;

  // Write
  g = tmp + 1;

  return g;
}
