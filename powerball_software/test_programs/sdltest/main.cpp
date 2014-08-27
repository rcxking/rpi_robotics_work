/*
 * main.cpp - This is a test of SDL's keyboard events.
 *
 * Bryant Pong
 * 8/26/14
 *
 * Last Updated: 8/27/14 - 3:12 PM
 */ 

#include "SDL.h"
#include <iostream>

int main(int argc, char **argv) {

	SDL_Event event;
	int quit = 0;

	if(SDL_Init(SDL_INIT_VIDEO) < 0) {
		std::cerr << "Could not initialize SDL: " << SDL_GetError() << std::endl;
		return -1;
	} // End if


	// Set a video mode:
	if(!SDL_SetVideoMode(320, 200, 0, 0)) {
		std::cerr << "Could not set video mode: " << SDL_GetError() << std::endl;
		SDL_Quit();
		return -1;
	} // End if
	

	SDL_EnableUNICODE(1);

	/*
	 * The SDL Library interprets a key event to be 1 complete push/release cycle
	 * of a button.  Therefore, we need a variables to act as a flag 
	 */

	while(!quit) {
		//while(SDL_PollEvent(&event)) {
		SDL_PollEvent(&event);

			switch(event.type) {
				case SDL_KEYDOWN:

					switch(event.key.keysym.sym) {
						case SDLK_0:
							std::cout << "0 pressed!" << std::endl;
							break;

						case SDLK_1:
							std::cout << "1 pressed!" << std::endl;
							break;

						case SDLK_2:
							std::cout << "2 pressed!" << std::endl;
							break;

						case SDLK_3:
							std::cout << "3 pressed!" << std::endl;
							break;

						case SDLK_4:
							std::cout << "4 pressed!" << std::endl;
							break;

						case SDLK_5:
							std::cout << "5 pressed!" << std::endl;
							break;

						default:
							break;
					} // End switch
					break;

				case SDL_KEYUP:
					std::cout << "Key released!" << std::endl;
					break;

				case SDL_QUIT:
					quit = 1;
					break;

				default:
					break;
			} // End switch
	}

	SDL_Quit();
	return 0;
} // End function main()
