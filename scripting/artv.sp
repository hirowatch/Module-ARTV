#include <sourcemod>

public Plugin myinfo = 
{
	name = "Admin Rock The Vote", 
	author = "ruskydubl [vk.com/lolexe]", 
	description = "ARTV", 
	version = "v1.0", 
	url = "http://megaboom.pro http://hlmod.ru"
}

public void OnPluginStart() {
	RegAdminCmd("sm_artv", Cmd_Artv, ADMFLAG_VOTE);
}

public Action Cmd_Artv(int client, int args) {
	for (int iClient = 1; iClient <= MaxClients; iClient++)
		if (IsClientConnected(iClient) && IsClientInGame(iClient) && !IsClientReplay(iClient) && !IsClientSourceTV(iClient) && !IsFakeClient(iClient))
			ClientCommand(iClient, "sm_rtv");
}