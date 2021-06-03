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
  READ(war_2);

  WRITE(war_1);
  if (tmp > 10) {
    WRITE(war_2);
  }

  return 1;
}
