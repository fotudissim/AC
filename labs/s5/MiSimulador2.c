#include "CacheSim.h"

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

typedef struct {

    int tag[2];
    int lastRU;
    _Bool notUsed;

} cacheConj;


//int hitcont = 0;
//int misscont = 0;

cacheConj Cache[64];


/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al començar cada un dels tests.
 * */
void init_cache ()
{
    totaltime=0.0;
	/* Escriu aqui el teu codi */

    for (int i = 0; i<64; i++)
    {
        //
        Cache[i].tag[0] = Cache[i].tag[1] = -1;
        Cache[i].lastRU = 1;
        Cache[i].notUsed = 1;
    }



}

/* La rutina reference es cridada per cada referencia a simular */ 
void reference (unsigned int address)
{
	unsigned int byte;
	unsigned int bloque_m; 
	unsigned int conj_mc;
	unsigned int via_mc;
	unsigned int tag;
	unsigned int miss;	   // boolea que ens indica si es miss
	unsigned int replacement;  // boolea que indica si es reemplaça una linia valida
	unsigned int tag_out;	   // TAG de la linia reemplaçada
	float t1,t2;		// Variables per mesurar el temps (NO modificar)
	
	t1=GetTime();
	/* Escriu aqui el teu codi */
    

    byte = address%32;
	bloque_m = address/32;
	conj_mc = bloque_m%64;
	tag = bloque_m/64;
	miss = 0;
	replacement = 0;
	tag_out = 0;

    if (Cache[conj_mc].tag[0] == tag) {

        //++hitcont;
        Cache[conj_mc].lastRU = via_mc = 0;
	} else if (Cache[conj_mc].tag[1] == tag) {

        //++hitcont;
        Cache[conj_mc].lastRU = via_mc = 1;
    } else {
        //++misscont;
        miss = 1;
		if (Cache[conj_mc].lastRU == 0) {
			if (Cache[conj_mc].tag[1] != -1) {
				replacement = true;
				tag_out = Cache[conj_mc].tag[1];
			}
			Cache[conj_mc].tag[1] = tag;
			Cache[conj_mc].lastRU = via_mc = 1;
		} else {
			if (Cache[conj_mc].tag[0] != -1) {
				replacement = true;
				tag_out = Cache[conj_mc].tag[0];
			}
			Cache[conj_mc].tag[0] = tag;
			Cache[conj_mc].lastRU = via_mc = 0;
		}
	}


    /* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual. També mesurem el temps d'execució
	 * */
	t2=GetTime();
	totaltime+=t2-t1;
	test_and_print2 (address, byte, bloque_m, conj_mc, via_mc, tag,
			miss, replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */ 
void final ()
{
 	/* Escriu aqui el teu codi */ 
  
    //printf("Aciertos: %i\nFallos: %i\n", hitcont, misscont);
  
}
