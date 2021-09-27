#ifdef HOST_COMPILE
#include <stdio.h>
#else
#include "printf.h"
#endif

#include "picojpeg.h"
#include "jpegdata.h"

unsigned int doff;

unsigned char pjpeg_need_bytes_callback(unsigned char* pBuf, unsigned char buf_size, unsigned char *pBytes_actually_read, void *pCallback_data)
{
    unsigned int ra;
    for(ra=0;ra<buf_size;ra++)
      pBuf[ra]=jpegdata[doff+ra];
    doff+=buf_size;
    *pBytes_actually_read = buf_size;
    return 0;
}


int main ( void )
{
    unsigned char status;
    pjpeg_image_info_t pInfo;
    unsigned int sum;
    unsigned int rb;

    doff=0;
    status = pjpeg_decode_init(&pInfo, pjpeg_need_bytes_callback,(void *)0,0);

    if (status)
    {
        return(1);
    }
    sum=0;
    while(status==0)
    {
        status=pjpeg_decode_mcu();
        //printf("decode %u\n",ra);
        if(status==0)
        {
            switch(pInfo.m_scanType)
            {
                case PJPG_GRAYSCALE: break;
                case PJPG_YH1V1:
                {
                    for(rb=0;rb<64;rb++)
                    {
                        sum+=pInfo.m_pMCUBufB[rb];
                        sum+=pInfo.m_pMCUBufG[rb];
                        sum+=pInfo.m_pMCUBufR[rb];
                    }
                    break;
                }
                case PJPG_YH2V1: break;
                case PJPG_YH1V2: break;
                case PJPG_YH2V2: break;
            }
        }
    }
    if(status!=PJPG_NO_MORE_BLOCKS)
    {
        return(1);
    }
    printf("---- sum 0x%08X %u\n",sum,sum);
    //hexstring(sum);
    return(0);
}

