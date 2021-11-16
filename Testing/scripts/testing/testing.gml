// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function testing(){
					EntityPlayAnimation();
					//show_debug_message("____________AAAAA")
					
					//show_debug_message(animationEnd)
					if(entityAnimationEnd) {
						
						entityAnimationEnd = false;
						instance_destroy();
					}
}