/*
 * $LOOP_COUNT: 1
 * $LOOP_CANDIDATE_COUNT: 1
 * $LOOP_WRITE_RESCHEDULED_STORES: 1
 * $LOOP_WRITE_RESOLVED_LOADS: 1
 * $LOOP_WRITE_INSERTED_LOAD_CHECKS: 1
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

  return tmp;
}
