/// @description Insert description here
// You can write your code in this editor
var lastReceiver=global.inputReceiver;
global.inputReceiver=InputReceiver.textBox;
with(obj_textBox_manager){
	//wake up for handle scene
	scenceState=ScenceState.nextElement;
}

//add scene element
addSceneDelay(60);
addSceneTextBox(diedRole.name,getDyingMessageByName(diedRole.name),0);


//while scence showing,role's sprite changed.
diedRole.sprite_index=getDisappearSpriteByRole(diedRole);

//delete role form World Team but not destroy instance.
deleteRoleFromFront(diedRole);
deleteRoleFromWorld(diedRole);


//check game over
if(diedRole==global.kirito){
	show_message("lead die");
	addSceneChangeRoom(room_world,InputReceiver.worldTeamFlag);//lock input for debug
}
else{
	addSceneChangeRoom(noone,lastReceiver);
}


instance_destroy(id);