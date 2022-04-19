#include "CacheSim.h"
#include <stdio.h>

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

int cache[128];

int hit_num = 0;
int miss_num = 0;

/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al començar cada un dels tests.
 * */
void init_cache ()
{
	/* Escriu aqui el teu codi */
    for (int i = 0; i < 128; i++) cache[i] = -1;
}

/* La rutina reference es cridada per cada referencia a simular */
void reference (unsigned int address, unsigned int LE)
{
	unsigned int byte;
	unsigned int bloque_m;
	unsigned int linea_mc;
	unsigned int tag;
	unsigned int miss;
	unsigned int lec_mp;
	unsigned int mida_lec_mp;
	unsigned int esc_mp;
	unsigned int mida_esc_mp;
	unsigned int replacement;
	unsigned int tag_out;

	/* Escriu aqui el teu codi */
	byte = address%32;
	bloque_m = address/32;
	linea_mc = bloque_m%128;
	tag = bloque_m/128;

	miss = 0;
	replacement = 0;
	tag_out = 0;

	lec_mp = 0;
	esc_mp = 0;

	if (LE == lectura) {
		if (cache[linea_mc] != tag) {
			++miss_num;
			miss = 1;
			lec_mp = 1;
			mida_lec_mp = 32;

			if (cache[linea_mc].v != 0) {
				replacement = 1;
				tag_out = cache[linea_mc];
                cache[linea_mc].v = 1;
			}
			cache[linea_mc] = tag;
		} else ++hit_num;
	} else {
		esc_mp = 1;
		mida_esc_mp = 1;
		if (cache[linea_mc] != tag) {
			++miss_num;
			miss = true;
		} else ++hit_num;
	}

	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual
	 * */
	test_and_print (address, LE, byte, bloque_m, linea_mc, tag,
			miss, lec_mp, mida_lec_mp, esc_mp, mida_esc_mp,
			replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */
void final ()
{
 	/* Escriu aqui el teu codi */
	printf("Aciertos: %i\nFallos: %i\n", hit_num, miss_num);
}
