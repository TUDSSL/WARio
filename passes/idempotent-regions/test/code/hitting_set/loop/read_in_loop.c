/*
 * $UNCUT_WAR_COUNT: 2
 * $CUTS_COUNT: 1
 */
#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;
int war_2;

int main(void) {
  int tmp;

  READ(war_1);

  for (int i=0; i<10; i++) {
    READ(war_2);
  }

  WRITE(war_1);
  WRITE(war_2);

  return 1;
}
