// This is an automatically generated test case!

/*
 * $UNCUT_WAR_COUNT: 3
 * $CUTS_COUNT: 2
 */

#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;
int war_2;
int war_3;

int main(void) {
  int tmp;

  READ(war_1);
  READ(war_2);
  WRITE(war_1);
  WRITE(war_2);
  READ(war_3);
  WRITE(war_3);

  return 1;
}
