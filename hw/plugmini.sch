EESchema Schematic File Version 2
LIBS:plugmini-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:microcontroller
LIBS:audio_conn
LIBS:codec
LIBS:ampop
LIBS:esdprotection
LIBS:touch_probes
LIBS:connectors
LIBS:switched_regulator
LIBS:linear_regulator
LIBS:modules
LIBS:plugmini-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5950 800  1750 2250
U 57346998
F0 "Sheet57346997" 60
F1 "../../plugmodules/audio/codec/tlv320aic3120.sch" 60
F2 "SDA" I L 5950 1200 60 
F3 "SCL" I L 5950 1100 60 
F4 "DOUT" I L 5950 1900 60 
F5 "DIN" I L 5950 1800 60 
F6 "WCLK" I L 5950 1700 60 
F7 "BCLK" I L 5950 1600 60 
F8 "MCLK" I L 5950 1500 60 
F9 "CODEC_IO" I L 5950 2250 60 
F10 "~CODEC_RESET" I L 5950 950 60 
F11 "IN_AUDIO_Diff_P" I R 7700 1050 60 
F12 "IN_AUDIO_Diff_N" I R 7700 1150 60 
F13 "HPOUT" O R 7700 1700 60 
F14 "SPKVDD" I R 7700 1950 60 
F15 "SPKP" I R 7700 2050 60 
F16 "SPKM" I R 7700 2150 60 
F17 "VOL" I L 5950 2350 60 
$EndSheet
$Sheet
S 8300 800  1950 600 
U 57346A81
F0 "Sheet57346A80" 60
F1 "../../plugmodules/audio/analog/codec_input_se2diff.sch" 60
F2 "AUDIO_IN_P" O L 8300 1050 60 
F3 "AUDIO_IN_N" O L 8300 1150 60 
$EndSheet
$Sheet
S 800  6450 1600 950 
U 57346B4B
F0 "Sheet57346B4A" 60
F1 "../../plugmodules/power/linear3v3small.sch" 60
$EndSheet
$Sheet
S 3000 800  1900 3250
U 573775F2
F0 "Processor" 60
F1 "../../plugmodules/processing/atsam4ls2a.sch" 60
F2 "ISCK" O R 4900 1600 60 
F3 "ISDI" I R 4900 1800 60 
F4 "ISWS" O R 4900 1700 60 
F5 "ISD0" O R 4900 1900 60 
F6 "ISMK" O R 4900 1500 60 
F7 "D+" B L 3000 1150 60 
F8 "D-" B L 3000 1250 60 
F9 "SPI_CLK" O L 3000 2300 60 
F10 "MISO" I L 3000 2500 60 
F11 "MOSI" O L 3000 2400 60 
F12 "~SS" O L 3000 2600 60 
F13 "SCL" I R 4900 1100 60 
F14 "SDA" B R 4900 1200 60 
F15 "CODEC_IO" B R 4900 2250 60 
F16 "CODEC_RST" O R 4900 950 60 
F17 "VBUS" I L 3000 1050 60 
$EndSheet
Wire Wire Line
	8300 1050 7700 1050
Wire Wire Line
	7700 1150 8300 1150
Wire Wire Line
	7700 1700 8450 1700
$Comp
L AudioJackStereo J2
U 1 1 573C6CC1
P 9000 1850
F 0 "J2" H 9100 2100 60  0000 C CNN
F 1 "AudioJackStereo" H 9000 1650 60  0000 C CNN
F 2 "processing:audio_jack3.5mm" H 9000 1850 60  0001 C CNN
F 3 "" H 9000 1850 60  0000 C CNN
	1    9000 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 1850 8300 1850
Wire Wire Line
	8300 1850 8300 1700
Connection ~ 8300 1700
$Comp
L GND #PWR01
U 1 1 573C727B
P 8350 2050
F 0 "#PWR01" H 8350 1800 50  0001 C CNN
F 1 "GND" H 8350 1900 50  0000 C CNN
F 2 "" H 8350 2050 50  0000 C CNN
F 3 "" H 8350 2050 50  0000 C CNN
	1    8350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1950 8350 1950
Wire Wire Line
	8350 1950 8350 2050
Wire Wire Line
	4900 1500 5950 1500
Wire Wire Line
	4900 1600 5950 1600
Wire Wire Line
	5950 1700 4900 1700
Wire Wire Line
	4900 1800 5950 1800
Wire Wire Line
	5950 1900 4900 1900
$Sheet
S 750  1000 1350 750 
U 573EEB96
F0 "USB" 60
F1 "../../plugmodules/comm/usb.sch" 60
F2 "D+" B R 2100 1150 60 
F3 "D-" B R 2100 1250 60 
F4 "VBUS" I R 2100 1050 60 
$EndSheet
Wire Wire Line
	2100 1150 3000 1150
Wire Wire Line
	3000 1250 2100 1250
$Sheet
S 750  2150 1400 900 
U 573F0326
F0 "SD" 60
F1 "../../plugmodules/storage/sdcard.sch" 60
F2 "SPI_CLK" I R 2150 2300 60 
F3 "MOSI" I R 2150 2400 60 
F4 "MISO" O R 2150 2500 60 
F5 "~SS" I R 2150 2600 60 
$EndSheet
Wire Wire Line
	3000 2600 2150 2600
Wire Wire Line
	2150 2500 3000 2500
Wire Wire Line
	3000 2400 2150 2400
Wire Wire Line
	2150 2300 3000 2300
Wire Wire Line
	4900 1100 5950 1100
Wire Wire Line
	4900 1200 5950 1200
Wire Wire Line
	4900 950  5950 950 
Wire Wire Line
	4900 2250 5950 2250
$Comp
L VCC #PWR02
U 1 1 574B6470
P 2350 850
F 0 "#PWR02" H 2350 700 50  0001 C CNN
F 1 "VCC" H 2350 1000 50  0000 C CNN
F 2 "" H 2350 850 50  0000 C CNN
F 3 "" H 2350 850 50  0000 C CNN
	1    2350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1050 3000 1050
Wire Wire Line
	2350 850  2350 1050
Connection ~ 2350 1050
$EndSCHEMATC
