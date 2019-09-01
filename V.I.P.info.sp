// Includes
#include <sourcemod>
#include <sdktools>
#include <multicolors>
#pragma semicolon 1;
#pragma newdecls required;
#define DEBUG;
// Info about the plugin
public Plugin myinfo =
{
	name = "V.I.P.info",
	author = "Wengiel",
	description = "This is a SourceMod plugin than shows the details about a V.I.P. service on Your Counter-Strike: Global Offensive server.",
	version = "2.0.0",
	url = "https://github.com/Wengiel31"
};
// Defining the available commands
public void OnPluginStart() {
	RegConsoleCmd("sm_vip", VIP_CMD);
	RegConsoleCmd("sm_vippricing", vippricing_CMD);
	RegConsoleCmd("sm_vipinfo", vipinfo_CMD);
	RegConsoleCmd("sm_contact", contact_CMD);
}

// Main menu
public Action VIP_CMD(int client, int args) {
	Menu menu = new Menu(Menu_Handler);
	menu.SetTitle("★ V.I.P.info ★");
	menu.AddItem("1", "» What gives You the V.I.P. status?");
	menu.AddItem("2", "» V.I.P. status pricing");
	menu.AddItem("3", "» I want to buy the V.I.P. status?");
	menu.Display(client, 60);
	return Plugin_Handled;
}
public int Menu_Handler(Menu menu, MenuAction action, int client, int position) {
	if (action == MenuAction_Select) {
		char Item[32];
		GetMenuItem(menu, position, Item, sizeof(Item));
		if (StrEqual(Item, "1")) {
			ClientCommand(client, "sm_vipinfo");
		} else if (StrEqual(Item, "2")) {
			ClientCommand(client, "sm_vippricing");
		} else if (StrEqual(Item, "3")) {
			ClientCommand(client, "sm_contact");
		}
	}
	else if (action == MenuAction_End) {
		CloseHandle(menu);
	}
}
// Pricing section
public Action vippricing_CMD(int client, int args) {
	Menu xxmenu = new Menu(xxmenu_Handler);
	xxmenu.SetTitle("★ V.I.P. status pricing ★");
	xxmenu.AddItem("1", "» $x.xx =  x months");
	xxmenu.AddItem("2", "» $x.xx = x months");
	xxmenu.AddItem("3", "» $x.xx = x months");
	xxmenu.AddItem("4", "Go back");
	xxmenu.Display(client, 60);
	return Plugin_Handled;
}
// Contact section
public Action contact_CMD(int client, int args) {
	Menu xxxmenu = new Menu(xxxmenu_Handler);
	xxxmenu.SetTitle("★ Contact ★");
	xxxmenu.AddItem("1", "» Username1");
	xxxmenu.AddItem("2", "» Username2");
	xxxmenu.AddItem("3", "» Username3");
	xxxmenu.AddItem("4", "Go back");
	xxxmenu.Display(client, 60);
	return Plugin_Handled;
}
// Print in the chat contact info to the user choosed in the contact section
public int xxxmenu_Handler(Menu menu, MenuAction action, int client, int position) {
	if (action == MenuAction_Select) {
		char Item[64];
		GetMenuItem(menu, position, Item, sizeof(Item));
		if (StrEqual(Item, "1")) {
			CPrintToChat(client, "{yellow}★ {green}Username1{yellow} ★");
			CPrintToChat(client, "{yellow}★ {green}Steam{yellow} ★ {default}https://steamcommunity.com/profiles/xxxxxxxxxxxxxxxx/ ");
		} else if (StrEqual(Item, "2")) {
			CPrintToChat(client, "{yellow}★ {green}Username2{yellow} ★");
			CPrintToChat(client, "{yellow}★ {green}Steam{yellow} ★ {default}https://steamcommunity.com/profiles/xxxxxxxxxxxxxxxx/ ");
		} else if (StrEqual(Item, "3")) {
			CPrintToChat(client, "{yellow}★ {green}Username3{yellow} ★★");
			CPrintToChat(client, "{yellow}★ {green}Steam{yellow} ★ {default}https://steamcommunity.com/profiles/xxxxxxxxxxxxxxxx/ ");
		} else if (StrEqual(Item, "4")) {
			ClientCommand(client, "sm_vip");
		}
	} else if (action == MenuAction_End) {
		CloseHandle(menu);
	}
}
// What give You the V.I.P. status section
public Action vipinfo_CMD(int client, int args) {
	Menu xmenu = new Menu(xmenu_Handler);
	xmenu.SetTitle("★ What gives You the V.I.P.: ★");
	xmenu.AddItem("1", "» Something");
	xmenu.AddItem("2", "» Something");
	xmenu.AddItem("3", "» Something");
	xmenu.AddItem("4", "» Something");
	xmenu.AddItem("5", "» Something");
	xmenu.AddItem("6", "» Something");
	xmenu.AddItem("7", "» Something");
	xmenu.AddItem("8", "» Something");
	xmenu.AddItem("9", "Go back");
	xmenu.Display(client, 60);
	return Plugin_Handled;
}
public int xmenu_Handler(Menu menu, MenuAction action, int client, int position) {
	if (action == MenuAction_Select) {
		char Item[32];
		GetMenuItem(menu, position, Item, sizeof(Item));
		if (StrEqual(Item, "11")) {
			ClientCommand(client, "sm_vip");
		}
	} else if (action == MenuAction_End) {
		CloseHandle(menu);
	}
}
public int xxmenu_Handler(Menu menu, MenuAction action, int client, int position) {
	if (action == MenuAction_Select) {
		char Item[32];
		GetMenuItem(menu, position, Item, sizeof(Item));
		if (StrEqual(Item, "5")) {
			ClientCommand(client, "sm_vip");
		}
	} else if (action == MenuAction_End) {
		CloseHandle(menu);
	}
}