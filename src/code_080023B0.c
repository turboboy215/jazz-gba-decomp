#include "global.h"
#include "system.h"
#include "link.h"
void sub_080023B0(struct MultiBootParam *p)
{
    p->client_bit = 0;
    p->probe_count = 0;
    p->response_bit = 0;
    p->check_wait = 15;
    p->sendflag = 0;
    p->handshake_timeout = 0;
    REG_RCNT = 0;
    REG_SIOCNT = 0x2003;
    REG_SIODATA8 = 0;
}
