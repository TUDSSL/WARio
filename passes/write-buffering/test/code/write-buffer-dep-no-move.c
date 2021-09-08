/*
 * $PROFITABLE_MOVES: 0
 */
#define READ(v_) tmp = v_
#define WRITE(v_) v_ = 1

int war_1;
int war_2;

int main(void) {
	int tmp;

  READ(war_1);
  WRITE(war_1);

  // Dependency, no move
  war_2 = war_1;

  READ(war_2);
  WRITE(war_2);

  return tmp;
}
