#include "arduino.h"
#define SRATE    (22500L)
#define WTSIZE   (1024L)
#define FRACBITS (6L)
extern const uint16_t octaveLookup[1024];
extern const uint8_t sine[WTSIZE];
extern const uint8_t ramp[WTSIZE];

