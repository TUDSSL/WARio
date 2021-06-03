// This is an automatically generated test case!

/*
 * $UNCUT_WAR_COUNT: 5
 * $CUTS_COUNT: 3
 */

#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;
int war_2;
int war_3;
int war_4;
int war_5;

int main(void) {
  int tmp;

  READ(war_1);
  READ(war_2);
  WRITE(war_1);
  WRITE(war_2);
  READ(war_3);
  READ(war_4);
  WRITE(war_3);
  WRITE(war_4);
  READ(war_5);
  WRITE(war_5);

  return 1;
}
