//-------------------------------------
.const ScreenMemory           =$1000
.const ScreenColourRam        =$9400
//Vic Registers
.const ScreenOriginH          = $9000
.const ScreenOriginV          = $9001
.const ScreenOffset           = $9002
.const ScreenRows             = $9003
.const Raster                 = $9004
.const CharsetPointer         = $9005
.const SoundVoice1            = $900a
.const SoundVoice2            = $900b
.const SoundVoice3            = $900c
.const SoundNoise             = $900d
.const SoundVolume            = $900e
.const ScreenColour           = $900f
.const Via1_DR_A              = $911f
.const DDR_B                  = $9122
.const OutputRegister_B       = $9120
//Kernal Routines
.const STOP                   = $ffe1

//ZeroPage
.const zp02_03                =$02
.const zp04_05                =$04
.const zp06                   =$06