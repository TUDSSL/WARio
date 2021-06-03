/*
 * $UNCUT_WAR_COUNT: 1
 * $CUTS_COUNT: 1
 */
#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;

int main(void) {
  int tmp;

  for (int i=0; i<10; i++) {
    WRITE(war_1);
    READ(war_1);
  }

  return 1;
}
