/*! \file i2cmasterconf.h \brief I2C (TWI) interface configuration (software implementation). */
//*****************************************************************************
//
// File Name	: 'i2cmasterconf.h'
// Title		: I2C (TWI) interface configuration (software implementation)
// Author		: Jean-Guilem DALISSIER
// Created		: 2021.06.24
// Revised		: 2021.06.24
// Version		: 0.1
// Target MCU	: Atmel AVR series
// Editor Tabs	: 4
//
// This code is distributed under the GNU Public License
//		which can be found at http://www.gnu.org/licenses/gpl.txt
//
//*****************************************************************************

#ifndef I2CMASTERCONF_H
#define I2CMASTERCONF_H

#include "global.h"

// Adapt these SCA and SCL port and pin definition to your target
#define SDA_PORT        PORTC       // SDA Port C, Pin 4
#define SDA             4           // 
#define SCL_PORT        PORTC       // SCL Port C, Pin 5
#define SCL             5           // 

 


#endif
