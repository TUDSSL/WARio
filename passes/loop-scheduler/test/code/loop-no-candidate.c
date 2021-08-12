/*
 * $LOOP_COUNT: 1
 * $LOOP_CANDIDATE_COUNT: 0
 */
#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;

int main(void) {
	int tmp;

  // A loop with only writes, no WAR
  while (1) {
    WRITE(war_1);
  }

}
