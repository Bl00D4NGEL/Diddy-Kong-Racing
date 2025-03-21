/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800C85D0 */
/*====================================================================
 * cspstop.c
 *
 * Synopsis:
 *
 * Copyright 1995, Silicon Graphics, Inc.
 * All Rights Reserved.
 *
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics,
 * Inc.; the contents of this file may not be disclosed to third
 * parties, copied or duplicated in any form, in whole or in part,
 * without the prior written permission of Silicon Graphics, Inc.
 *
 * RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to
 * restrictions as set forth in subdivision (c)(1)(ii) of the Rights
 * in Technical Data and Computer Software clause at DFARS
 * 252.227-7013, and/or in similar or successor clauses in the FAR,
 * DOD or NASA FAR Supplement. Unpublished - rights reserved under the
 * Copyright Laws of the United States.
 *====================================================================*/

#include <libaudio.h>

void alCSPStop(ALCSPlayer *seqp)
{
    ALEvent     evt;

    evt.type = AL_SEQP_STOPPING_EVT;                    
    alEvtqPostEvent(&seqp->evtq, &evt, 0);
}

