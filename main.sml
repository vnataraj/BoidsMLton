use "~/MLtonBoids/boid.sml";
use "~/MLtonBoids/kernel.sml";
(*gtk stuff*)


fun control_loop (boid: boid list) = (OS_PROCESS.sleep(5);update_boids_positions(boid))
	
fun update_boids_positions (commandlineops:int) = (BoidsKernel.main(commandlineops);(*gtkstuffhere*))
	
