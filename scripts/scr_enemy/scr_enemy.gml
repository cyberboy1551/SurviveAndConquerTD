if(room == rm_ship){
	player = instance_nearest(x, y, obj_playerShip);
}else{
	player = instance_nearest(x, y, obj_player);
}
if(distance_to_object(player) < 150){
	self.idle = false;
	//move_towards_point(nearestCow.x, nearestCow.y, global.wolf_atkSpd);
	//move_snap(global.tileSize, global.tileSize);
	xDiff = abs(x-player.x);
	yDiff = abs(y-player.y);
	
	if(xDiff > yDiff){
		if(counter == 5){
		if(x > player.x){
			x-=32;
			sprite_index = spr_wolf_walk_left;
		}else{
			x+=32;
			sprite_index = spr_wolf_walk_right;
		}
		counter = 0;
		}else{
			counter++;
		}
	}
		
	if(yDiff > xDiff){
		if(counter == 5){
		if(y > nearestCow.y){
			y-=32;
			sprite_index = spr_wolf_walk_up;
		}else{
			y+=32;
			sprite_index = spr_wolf_walk_down;
		}
		counter = 0;
		}else{
			counter++;
		}
		
	}
	if(xDiff == yDiff){
		var i = irandom(1);
		if(i > 0){
			
		}else{
			
		}
	}
	
	
	if(instance_place(x, y, nearestCow)){
		with(nearestCow){
			
			if(hlth > 0){
				hlth-=10;
			}else{
				self.killed = true;
					
			}
			speed=-8
			alarm[1] = 5;
		}
		if(nearestCow.killed){
			self.hunger = 250;
			self.idle= true;
		}
	}
}else{
	self.idle = true;
	speed = 0;
}