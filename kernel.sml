(*kernel.sml 
	-create boid/add boid to list
	-update boid function
*)

use("~/MLtonBoids/boid.sml");
open Boid;
signature BOIDSKERNEL = sig
	val b : boid
	val main : int -> unit
	val boidlist : boid -> boid list
	val boids_to_starting_positions : boid list -> unit
	val update_boids: boid list * int -> unit
	val apply_rule_1: boid list -> real array
	val apply_rule_2: boid list -> real array
	val apply_rule_3: boid list -> real array
end;

structure BoidsKernel:>BOIDSKERNEL=
	struct
	val b = Boid.create();
	fun main(commandlineops:int) = let fun loopboids(commandlineops:int)= 
	(while(true) do (
	if(commandlineops>0:int) then 
	(boidlist @ boidlist
	;loopboids(commandlineops-1:int))
	else false
	))
	in
	loopboids(commandlineops)
	;
	;update_boids(boidlist)
	fun boids_to_starting_positions (boid:boid list,a:int)= (while (true) do if boid = nil then(false) else (
	boid.update_position(0,0,0)
	;boid.update_velocity(0,0,0)
	;update_boids_to_starting_positions(boid, a+1)))
	val boidlist(boid:boid) = List.tabulate(1, boid)
	fun update_boids(boid:boid list) = (*do this later?*)
	fun apply_rule_1(boid:boid list) = (*ditto!*)
	fun apply_rule_2(boid:boid list) = (*ditto?!?*)
	fun apply_rule_3(boid:boid list) = (*ditto, you provincial putz??!?*)
end;

 
