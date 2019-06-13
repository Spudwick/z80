
#include "multi.h"

void main(void)
{
    int ret;

    for(;;)
    {    
        if(ret = tskmain(), ret)
            break;
    }
    
    exit(ret);
}