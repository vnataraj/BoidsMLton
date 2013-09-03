(*signature and struct for boid*)

	signature BOID= sig
		datatype boid = *
		val velocity : real array
		val position : real array
		val update_position : real * real * real -> unit
		val update_velocity : real * real * real -> unit
		val create: real array * real array -> unit

	end;

	structure Boid:>BOID =
		struct
		datatype boid = *
		val position = Array.tabulate(3, fn i => 0.0)
		val velocity = Array.tabulate(3, fn i => 0.0)
		fun update_position (a:real, b:real, c:real) = (
		Array.update(position, 0 ,a) 
		; Array.update(position, 1, b) 
		; Array.update(position, 2, c)) 
		fun update_velocity (a:real, b:real, c:real) = (
		Array.update(velocity, 0, a) 
		; Array.update(velocity, 1, b) 
		; Array.update(velocity, 2, c))
		fun create(x:real array, y:real array) = (
		update_position(Array.sub(x,0),Array.sub(x,1),Array.sub(x,2))
		;update_velocity(Array.sub(y,0), Array.sub(y,1), Array.sub(y,2)))

	end;

