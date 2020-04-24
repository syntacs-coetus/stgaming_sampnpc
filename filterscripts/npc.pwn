#define FILTERSCRIPT
#include <a_samp>
#include <FCNPC>
#include <weapon-config>

new myFirstNPC = INVALID_PLAYER_ID;

#if defined FILTERSCRIPT
public OnFilterScriptInit()
{
	myFirstNPC = FCNPC_Create("Marcus");
	FCNPC_Spawn(myFirstNPC, 212, -2654.8928,638.5195,14.4531);
    FCNPC_SetAngle(myFirstNPC, 179.0561);
	return 1;
}

public OnFilterScriptExit()
{
	FCNPC_Destroy(myFirstNPC);
	myFirstNPC = INVALID_PLAYER_ID;
	return 1;
}

public FCNPC_OnDeath(npcid, killerid, reason){
    return 1;
}
#endif