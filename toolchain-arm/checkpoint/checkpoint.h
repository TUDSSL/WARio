#ifndef CHECKPOINTLIB_CHECKPOINT_H_
#define CHECKPOINTLIB_CHECKPOINT_H_

#include <stdint.h>

void __checkpoint(void);
void __checkpoint_restore(void);
void __checkpoint_setup(void);

#endif /* CHECKPOINTLIB_CHECKPOINT_H_ */
