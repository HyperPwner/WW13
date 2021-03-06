//#define LIGHTING_INSTANT_UPDATES   // Uncomment to use instant updates. NOTE: These are WiP and much more laggy than interval-based updating.

#ifndef LIGHTING_INSTANT_UPDATES
#define LIGHTING_INTERVAL       TRUE    // Frequency, in TRUE/10ths of a second, of the lighting process.
#include "lighting_process.dm"
#endif

#define LIGHTING_FALLOFF        TRUE    // Type of falloff to use for lighting; TRUE for circular, 2 for square.
#define LIGHTING_LAMBERTIAN     FALSE    // Use lambertian shading for light sources.
#define LIGHTING_HEIGHT         TRUE    // Height off the ground of light sources on the pseudo-z-axis, you should probably leave this alone.

#define LIGHTING_LAYER          10   // Drawing layer for lighting overlays.

#define INVISIBILITY_LIGHTING   20

#define LIGHTING_SOFT_THRESHOLD 0.05 // If the max of the lighting lumcounts of each spectrum drops below this, disable luminosity on the lighting overlays.

// If I were you I'd leave this alone.
#define LIGHTING_BASE_MATRIX \
	list                     \
	(                        \
		0, FALSE, FALSE, FALSE,          \
		0, FALSE, FALSE, FALSE,          \
		0, FALSE, FALSE, FALSE,          \
		0, FALSE, FALSE, FALSE,          \
		0, FALSE, FALSE, TRUE           \
	)                        \

// Helpers so we can (more easily) control the colour matrices.
#define RR TRUE
#define RG 2
#define RB 3
#define RA 4
#define GR 5
#define GG 6
#define GB 7
#define GA 8
#define BR 9
#define BG 10
#define BB 11
#define BA 12
#define AR 13
#define AG 14
#define AB 15
#define AA 16
#define CR 17
#define CG 18
#define CB 19
#define CA 20