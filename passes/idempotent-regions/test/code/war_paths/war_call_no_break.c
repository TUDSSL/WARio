/*
 * $WAR_COUNT: 1
 * $UNCUT_WAR_COUNT: 1
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
    // Call does not break all the paths
    foo();

  // Write
  g = tmp + 1;

  return g;
}
