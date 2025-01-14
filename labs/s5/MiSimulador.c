#include "CacheSim.h"
#include "string.h"
/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */
//#define TAG_SIZE 20
typedef struct {
    
    int tag;
    _Bool notUsed; //Una motomami utiliza este tipo de bool en C en vez de un unsignet int

} cacheLine;

//int hitcont = 0;
//int misscont = 0;

cacheLine Cache[128];
/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache ()
{
    totaltime=0.0;
	/* Escriu aqui el teu codi */
    memset(Cache, -1, 128*sizeof(cacheLine));

}

/* La rutina reference es cridada per cada referencia a simular */ 
void reference (unsigned int address)
{
    /*
    MINI_NOTA: 
        Adreces de 32 bits
        Mida cache: 4KByte = 2^12 Bytes
        Mida linia cache: 32 bytes = 2^5
        Aix� vol dir que tenim 2^7 linies de cache = 128 linies
    */
	unsigned int byte;
	unsigned int bloque_m; 
	unsigned int linea_mc;
	unsigned int tag;
	unsigned int miss;	   // boolea que ens indica si es miss
	unsigned int replacement;  // boolea que indica si es reempla�a una linia valida
	unsigned int tag_out;	   // TAG de la linia reempla�ada
	float t1,t2;		// Variables per mesurar el temps (NO modificar)
	
	t1=GetTime();
	/* Escriu aqui el teu codi */
    //Inicialitzacions

    byte = address%32;
	bloque_m = address/32;
	linea_mc = bloque_m%128;
	tag = bloque_m/128;

	miss = 0;
	replacement = 0;
	tag_out = 0;

    //Implementaci� 
    if(Cache[linea_mc].tag != tag) {
        //++misscont;
        miss = 1;
        if (Cache[linea_mc].tag != -1) {
            replacement = 1;
            tag_out = Cache[linea_mc].tag;
        }
        Cache[linea_mc].tag = tag;
    } //else ++hitcont


	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual. Tamb� mesurem el temps d'execuci�
	 * */
	t2=GetTime();
	totaltime+=t2-t1;
	test_and_print (address, byte, bloque_m, linea_mc, tag,
			miss, replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */ 
void final ()
{
 	/* Escriu aqui el teu codi */ 
    //printf("Aciertos: %i\nFallos: %i\n", hitcont, misscont);
  
}
