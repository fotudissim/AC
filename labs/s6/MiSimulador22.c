#include "CacheSim.h"

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

unsigned int current_tags[128];
unsigned int dirty[128];

/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache ()
{
	/* Escriu aqui el teu codi */
	for (int i = 0; i < 128; ++i) {
        current_tags[i] = -1;
        dirty[i] = 0;
    }
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
	byte = address & 0x1F;
    bloque_m = address >> 5;
    linea_mc = bloque_m & 0x7F;
    tag = bloque_m >> 7;

        if (current_tags[(int)linea_mc] == tag) {
        	miss = 0;
			lec_mp = 0;
			mida_lec_mp = 0;
			esc_mp = 0;
			mida_esc_mp = 0;
        	replacement = 0;
        	tag_out = 0;
		}
        else {
            miss = 1;
            lec_mp = 1;
            mida_lec_mp = 32;
            if (current_tags[(int)linea_mc] == -1) {
                esc_mp = 0;
                mida_esc_mp = 0;
                replacement = 0;
                tag_out = 0;
            }
            else {
                if (dirty[(int)linea_mc] == 0) {
                    esc_mp = 0;
                    mida_esc_mp = 0;
                }
                else {
                    esc_mp = 1;
                    mida_esc_mp = 32;
                    dirty[(int)linea_mc] = 0;
                }
                replacement = 1;
                tag_out = current_tags[(int)linea_mc];
            }
            current_tags[(int)linea_mc] = tag;
        }
        if (LE == 1) dirty[(int)linea_mc] = 1;

	/*address = address >> 4;
    printf("%x", address);*/


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
  
  
}
