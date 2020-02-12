#ifndef __LIB_BUS_H
#define __LIB_BUS_H

#include "Arduino.h"
#include <ArduinoSTL.h>
#include <vector>


class Bus
{
private:
	std::vector<uint8_t> pins;

	void reset(void);

public:
	Bus(std::vector<uint8_t>);

	void direction(int dir);
	int write(int data);
	int read(void);
};

#endif