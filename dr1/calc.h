#include "arduino.h"
#define SRATE (62500L)
#define WTSIZE (1024L)
#define OCTSTEPS (128)
#define NOTEMASK (0x7f)
extern const uint8_t octaveLookup[128];
extern const uint8_t wave[WTSIZE];

