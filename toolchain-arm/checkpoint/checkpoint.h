#ifndef CHECKPOINTLIB_CHECKPOINT_H_
#define CHECKPOINTLIB_CHECKPOINT_H_

#include <stdint.h>

void __checkpoint(void);
void __checkpoint_restore(void);
void __checkpoint_setup(void);

// This option has an implicit WAR and should only be used for debugging!
#ifdef CHECKPOINT_COUNT_ENABLE
extern volatile uint32_t __checkpoint_count;
#endif /* CHECKPOINT_COUNT_ENABLE */

// This option has an implicit WAR and should only be used for debugging!
#ifdef RESTORE_COUNT_ENABLE
extern volatile uint32_t __restore_count;
#endif /* RESTORE_COUNT_ENABLE */

#endif /* CHECKPOINTLIB_CHECKPOINT_H_ */
