#include "arduino.h"
#define SRATE    (22500L)
#define WTSIZE   (1024L)
#define FRACBITS (6L)
#define DACRANGE (1024L)
extern const uint16_t octaveLookup[DACRANGE];
extern const uint8_t  sine[WTSIZE];
extern const uint8_t  ramp[WTSIZE];

