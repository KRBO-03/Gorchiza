
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

// amount of memory to be allocated for heap storage must be specified for every ANSI C++ program with the bur_heap_size variable
unsigned long bur_heap_size = 0xFFFF; 


void _INIT ProgramInit(void)
{
	fb_motor.dt = 0.1;
	fb_motor.k_e = 0.24;
	fb_motor.T_m = 0.1;
	fb_motor.in = 0;
	fb_motor.integrator.dt = 0.1;

	fb_motor2.dt = 0.1;
	fb_motor2.k_e = 0.24;
	fb_motor2.T_m = 0.1;
	fb_motor2.in = 0;
	fb_motor2.integrator.dt = 0.1;

	fb_controller.dt = 0.1;
	fb_controller.integrator.dt = 0.1;
	fb_controller.k_i = 7.2;
	fb_controller.k_p = 0.24*3;
	fb_controller.max_abs_value = 24.0;

	speed = 0;
	counter = 0;
	enable = 1;
}

void _CYCLIC ProgramCyclic(void)
{
	if (enable)
	{
		if (counter == 50)
		{
			speed = 50;
		}
		else if (counter == 200)
		{
			speed = 0;
			counter = 0; 
		} 
		counter++;

		fb_controller.e = speed - fb_motor.out_w;
		FB_Controller(&fb_controller);

		fb_motor.in = fb_controller.u;

		fb_motor2.in = speed * fb_motor2.k_e;

		FB_Motor(&fb_motor);
		FB_Motor(&fb_motor2);
	}
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}
