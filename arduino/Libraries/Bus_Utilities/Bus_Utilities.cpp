
#include "./bus_utilities.h"


Bus::Bus(std::vector<uint8_t> pins)
{
	this->pins = pins;

	this->reset();
}


void Bus::reset(void)
{
	this->direction(INPUT);
}

void Bus::direction(int dir)
{
	for(auto p = this->pins.begin(); p != this->pins.end(); ++p)	// Vectors can be iterated over...
	{
		pinMode(*p, dir);											// Set Direction to "dir".
		digitalWrite(*p, LOW);										// Default to LOW (Output = Off, Input = Internal Pull-Up Off).
	}
}

int Bus::write(int data)
{
	int i = 0, ret = 0;
	auto p = this->pins.begin();

	for(; p != this->pins.end(); ++p, i++)							// Vectors can be iterated over...
	{
		ret |= ( data & (0x1 << i) );								// Keep track of what we are actually writing.
		digitalWrite(*p, ( ( (data >> i) & 0x1) ? HIGH : LOW ));	// Set pin to required state.
	}

	return ret;														// Return data that was actually written to bus.
}

int Bus::read(void)
{
	int i = 0, ret = 0;
	auto p = this->pins.begin();

	for(; p != this->pins.end(); ++p, i++)			// Vectors can be iterated over...
	{
		ret |= ( digitalRead(*p) << i );			// Read pin state into correct bit of return.
	}

	return ret;										// Return read value.
}
