                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _critical_operation
                                     13 	.globl _warning_operation
                                     14 	.globl _safe_operation
                                     15 	.globl _update_lcd
                                     16 	.globl _check_button
                                     17 	.globl _display_events
                                     18 	.globl _log_event
                                     19 	.globl _rtc_read_date
                                     20 	.globl _rtc_read_time
                                     21 	.globl _decimal_to_bcd
                                     22 	.globl _bcd_to_decimal
                                     23 	.globl _eeprom_read_byte
                                     24 	.globl _eeprom_write_byte
                                     25 	.globl _i2c_read
                                     26 	.globl _i2c_write
                                     27 	.globl _i2c_stop
                                     28 	.globl _i2c_start
                                     29 	.globl _ADC_Read
                                     30 	.globl _display_temperature
                                     31 	.globl _lcd_clear
                                     32 	.globl _lcd_init
                                     33 	.globl _lcd_string
                                     34 	.globl _lcd_data
                                     35 	.globl _lcd_cmd
                                     36 	.globl _delay_us
                                     37 	.globl _delay
                                     38 	.globl _BTN_VIEW
                                     39 	.globl _SCL
                                     40 	.globl _SDA
                                     41 	.globl _BUZZER
                                     42 	.globl _LED
                                     43 	.globl _RELAY
                                     44 	.globl _INTR
                                     45 	.globl _ADC_WR
                                     46 	.globl _ADC_RD
                                     47 	.globl _EN
                                     48 	.globl _RW
                                     49 	.globl _RS
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _PS
                                     59 	.globl _PT1
                                     60 	.globl _PX1
                                     61 	.globl _PT0
                                     62 	.globl _PX0
                                     63 	.globl _RD
                                     64 	.globl _WR
                                     65 	.globl _T1
                                     66 	.globl _T0
                                     67 	.globl _INT1
                                     68 	.globl _INT0
                                     69 	.globl _TXD
                                     70 	.globl _RXD
                                     71 	.globl _P3_7
                                     72 	.globl _P3_6
                                     73 	.globl _P3_5
                                     74 	.globl _P3_4
                                     75 	.globl _P3_3
                                     76 	.globl _P3_2
                                     77 	.globl _P3_1
                                     78 	.globl _P3_0
                                     79 	.globl _EA
                                     80 	.globl _ES
                                     81 	.globl _ET1
                                     82 	.globl _EX1
                                     83 	.globl _ET0
                                     84 	.globl _EX0
                                     85 	.globl _P2_7
                                     86 	.globl _P2_6
                                     87 	.globl _P2_5
                                     88 	.globl _P2_4
                                     89 	.globl _P2_3
                                     90 	.globl _P2_2
                                     91 	.globl _P2_1
                                     92 	.globl _P2_0
                                     93 	.globl _SM0
                                     94 	.globl _SM1
                                     95 	.globl _SM2
                                     96 	.globl _REN
                                     97 	.globl _TB8
                                     98 	.globl _RB8
                                     99 	.globl _TI
                                    100 	.globl _RI
                                    101 	.globl _P1_7
                                    102 	.globl _P1_6
                                    103 	.globl _P1_5
                                    104 	.globl _P1_4
                                    105 	.globl _P1_3
                                    106 	.globl _P1_2
                                    107 	.globl _P1_1
                                    108 	.globl _P1_0
                                    109 	.globl _TF1
                                    110 	.globl _TR1
                                    111 	.globl _TF0
                                    112 	.globl _TR0
                                    113 	.globl _IE1
                                    114 	.globl _IT1
                                    115 	.globl _IE0
                                    116 	.globl _IT0
                                    117 	.globl _P0_7
                                    118 	.globl _P0_6
                                    119 	.globl _P0_5
                                    120 	.globl _P0_4
                                    121 	.globl _P0_3
                                    122 	.globl _P0_2
                                    123 	.globl _P0_1
                                    124 	.globl _P0_0
                                    125 	.globl _B
                                    126 	.globl _ACC
                                    127 	.globl _PSW
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 	.globl _log_event_PARM_2
                                    147 	.globl _rtc_read_date_PARM_3
                                    148 	.globl _rtc_read_date_PARM_2
                                    149 	.globl _rtc_read_time_PARM_3
                                    150 	.globl _rtc_read_time_PARM_2
                                    151 	.globl _eeprom_write_byte_PARM_2
                                    152 	.globl _display_events_active
                                    153 	.globl _total_events
                                    154 	.globl _event_index
                                    155 	.globl _log_display_counter
                                    156 	.globl _button_was_pressed
                                    157 	.globl _current_mode
                                    158 	.globl _event_count
                                    159 	.globl _blink_timer
                                    160 	.globl _system_state
                                    161 	.globl _temperature
                                    162 ;--------------------------------------------------------
                                    163 ; special function registers
                                    164 ;--------------------------------------------------------
                                    165 	.area RSEG    (ABS,DATA)
      000000                        166 	.org 0x0000
                           000080   167 _P0	=	0x0080
                           000081   168 _SP	=	0x0081
                           000082   169 _DPL	=	0x0082
                           000083   170 _DPH	=	0x0083
                           000087   171 _PCON	=	0x0087
                           000088   172 _TCON	=	0x0088
                           000089   173 _TMOD	=	0x0089
                           00008A   174 _TL0	=	0x008a
                           00008B   175 _TL1	=	0x008b
                           00008C   176 _TH0	=	0x008c
                           00008D   177 _TH1	=	0x008d
                           000090   178 _P1	=	0x0090
                           000098   179 _SCON	=	0x0098
                           000099   180 _SBUF	=	0x0099
                           0000A0   181 _P2	=	0x00a0
                           0000A8   182 _IE	=	0x00a8
                           0000B0   183 _P3	=	0x00b0
                           0000B8   184 _IP	=	0x00b8
                           0000D0   185 _PSW	=	0x00d0
                           0000E0   186 _ACC	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000D0   260 _P	=	0x00d0
                           0000D1   261 _F1	=	0x00d1
                           0000D2   262 _OV	=	0x00d2
                           0000D3   263 _RS0	=	0x00d3
                           0000D4   264 _RS1	=	0x00d4
                           0000D5   265 _F0	=	0x00d5
                           0000D6   266 _AC	=	0x00d6
                           0000D7   267 _CY	=	0x00d7
                           0000B0   268 _RS	=	0x00b0
                           0000B1   269 _RW	=	0x00b1
                           0000B2   270 _EN	=	0x00b2
                           0000A0   271 _ADC_RD	=	0x00a0
                           0000A1   272 _ADC_WR	=	0x00a1
                           0000A2   273 _INTR	=	0x00a2
                           0000A3   274 _RELAY	=	0x00a3
                           0000A4   275 _LED	=	0x00a4
                           0000A5   276 _BUZZER	=	0x00a5
                           0000A6   277 _SDA	=	0x00a6
                           0000A7   278 _SCL	=	0x00a7
                           0000B3   279 _BTN_VIEW	=	0x00b3
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable register banks
                                    282 ;--------------------------------------------------------
                                    283 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area DSEG    (DATA)
      000008                        289 _temperature::
      000008                        290 	.ds 2
      00000A                        291 _system_state::
      00000A                        292 	.ds 1
      00000B                        293 _blink_timer::
      00000B                        294 	.ds 2
      00000D                        295 _event_count::
      00000D                        296 	.ds 1
      00000E                        297 _current_mode::
      00000E                        298 	.ds 1
      00000F                        299 _button_was_pressed::
      00000F                        300 	.ds 1
      000010                        301 _log_display_counter::
      000010                        302 	.ds 2
      000012                        303 _event_index::
      000012                        304 	.ds 1
      000013                        305 _total_events::
      000013                        306 	.ds 1
      000014                        307 _display_events_active::
      000014                        308 	.ds 1
      000015                        309 _eeprom_write_byte_PARM_2:
      000015                        310 	.ds 1
      000016                        311 _rtc_read_time_PARM_2:
      000016                        312 	.ds 3
      000019                        313 _rtc_read_time_PARM_3:
      000019                        314 	.ds 3
      00001C                        315 _rtc_read_date_PARM_2:
      00001C                        316 	.ds 3
      00001F                        317 _rtc_read_date_PARM_3:
      00001F                        318 	.ds 3
      000022                        319 _log_event_PARM_2:
      000022                        320 	.ds 1
      000023                        321 _log_event_hours_10000_76:
      000023                        322 	.ds 1
      000024                        323 _log_event_minutes_10000_76:
      000024                        324 	.ds 1
      000025                        325 _log_event_seconds_10000_76:
      000025                        326 	.ds 1
      000026                        327 _log_event_day_10000_76:
      000026                        328 	.ds 1
      000027                        329 _log_event_month_10000_76:
      000027                        330 	.ds 1
      000028                        331 _log_event_year_10000_76:
      000028                        332 	.ds 1
      000029                        333 _display_events_count_10000_80:
      000029                        334 	.ds 1
      00002A                        335 _display_events_m_10000_80:
      00002A                        336 	.ds 1
      00002B                        337 _display_events_h_10000_80:
      00002B                        338 	.ds 1
      00002C                        339 _display_events_d_10000_80:
      00002C                        340 	.ds 1
      00002D                        341 _display_events_addr_10000_80:
      00002D                        342 	.ds 2
      00002F                        343 _display_events_temp_10000_80:
      00002F                        344 	.ds 2
      000031                        345 _display_events_idx_10000_80:
      000031                        346 	.ds 1
      000032                        347 _check_button_last_state_10000_94:
      000032                        348 	.ds 1
      000033                        349 _check_button_hold_counter_10000_94:
      000033                        350 	.ds 2
      000035                        351 _main_hours_10000_121:
      000035                        352 	.ds 1
      000036                        353 _main_minutes_10000_121:
      000036                        354 	.ds 1
      000037                        355 _main_seconds_10000_121:
      000037                        356 	.ds 1
      000038                        357 _main_day_10000_121:
      000038                        358 	.ds 1
      000039                        359 _main_month_10000_121:
      000039                        360 	.ds 1
      00003A                        361 _main_year_10000_121:
      00003A                        362 	.ds 1
                                    363 ;--------------------------------------------------------
                                    364 ; overlayable items in internal ram
                                    365 ;--------------------------------------------------------
                                    366 	.area	OSEG    (OVR,DATA)
                                    367 	.area	OSEG    (OVR,DATA)
                                    368 	.area	OSEG    (OVR,DATA)
                                    369 	.area	OSEG    (OVR,DATA)
                                    370 	.area	OSEG    (OVR,DATA)
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
                                    373 	.area	OSEG    (OVR,DATA)
                                    374 	.area	OSEG    (OVR,DATA)
                                    375 ;--------------------------------------------------------
                                    376 ; Stack segment in internal ram
                                    377 ;--------------------------------------------------------
                                    378 	.area SSEG
      00003D                        379 __start__stack:
      00003D                        380 	.ds	1
                                    381 
                                    382 ;--------------------------------------------------------
                                    383 ; indirectly addressable internal ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area ISEG    (DATA)
                                    386 ;--------------------------------------------------------
                                    387 ; absolute internal ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area IABS    (ABS,DATA)
                                    390 	.area IABS    (ABS,DATA)
                                    391 ;--------------------------------------------------------
                                    392 ; bit data
                                    393 ;--------------------------------------------------------
                                    394 	.area BSEG    (BIT)
                                    395 ;--------------------------------------------------------
                                    396 ; paged external ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area PSEG    (PAG,XDATA)
                                    399 ;--------------------------------------------------------
                                    400 ; uninitialized external ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area XSEG    (XDATA)
                                    403 ;--------------------------------------------------------
                                    404 ; absolute external ram data
                                    405 ;--------------------------------------------------------
                                    406 	.area XABS    (ABS,XDATA)
                                    407 ;--------------------------------------------------------
                                    408 ; initialized external ram data
                                    409 ;--------------------------------------------------------
                                    410 	.area XISEG   (XDATA)
                                    411 	.area HOME    (CODE)
                                    412 	.area GSINIT0 (CODE)
                                    413 	.area GSINIT1 (CODE)
                                    414 	.area GSINIT2 (CODE)
                                    415 	.area GSINIT3 (CODE)
                                    416 	.area GSINIT4 (CODE)
                                    417 	.area GSINIT5 (CODE)
                                    418 	.area GSINIT  (CODE)
                                    419 	.area GSFINAL (CODE)
                                    420 	.area CSEG    (CODE)
                                    421 ;--------------------------------------------------------
                                    422 ; interrupt vector
                                    423 ;--------------------------------------------------------
                                    424 	.area HOME    (CODE)
      000000                        425 __interrupt_vect:
      000000 02 00 4E         [24]  426 	ljmp	__sdcc_gsinit_startup
                                    427 ; restartable atomic support routines
      000003                        428 	.ds	5
      000008                        429 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  430 	nop
      000009 00               [12]  431 	nop
      00000A                        432 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  433 	movx	a, @r0
      00000B FB               [12]  434 	mov	r3, a
      00000C EA               [12]  435 	mov	a, r2
      00000D F2               [24]  436 	movx	@r0, a
      00000E 80 2C            [24]  437 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  438 	nop
      000011 00               [12]  439 	nop
      000012                        440 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  441 	movx	a, @dptr
      000013 FB               [12]  442 	mov	r3, a
      000014 EA               [12]  443 	mov	a, r2
      000015 F0               [24]  444 	movx	@dptr, a
      000016 80 24            [24]  445 	sjmp	sdcc_atomic_exchange_exit
      000018                        446 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  447 	mov	a, @r0
      000019 B5 02 02         [24]  448 	cjne	a, ar2, .+#5
      00001C EB               [12]  449 	mov	a, r3
      00001D F6               [12]  450 	mov	@r0, a
      00001E 22               [24]  451 	ret
      00001F 00               [12]  452 	nop
      000020                        453 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  454 	movx	a, @r0
      000021 B5 02 02         [24]  455 	cjne	a, ar2, .+#5
      000024 EB               [12]  456 	mov	a, r3
      000025 F2               [24]  457 	movx	@r0, a
      000026 22               [24]  458 	ret
      000027 00               [12]  459 	nop
      000028                        460 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  461 	movx	a, @dptr
      000029 B5 02 02         [24]  462 	cjne	a, ar2, .+#5
      00002C EB               [12]  463 	mov	a, r3
      00002D F0               [24]  464 	movx	@dptr, a
      00002E 22               [24]  465 	ret
      00002F                        466 sdcc_atomic_exchange_rollback_end::
                                    467 
      00002F                        468 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  469 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  470 	mov	r0, dpl
      000034 20 F5 D3         [24]  471 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        472 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  473 	mov	a, r2
      000038 C6               [12]  474 	xch	a, @r0
      000039 F5 82            [12]  475 	mov	dpl, a
      00003B 22               [24]  476 	ret
      00003C                        477 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  478 	mov	dpl, r3
      00003E 22               [24]  479 	ret
      00003F                        480 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  481 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  482 	mov	r0, dpl
      000044 20 F5 D9         [24]  483 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  484 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    485 ;--------------------------------------------------------
                                    486 ; global & static initialisations
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 	.area GSFINAL (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.globl __sdcc_gsinit_startup
                                    493 	.globl __sdcc_program_startup
                                    494 	.globl __start__stack
                                    495 	.globl __mcs51_genXINIT
                                    496 	.globl __mcs51_genXRAMCLEAR
                                    497 	.globl __mcs51_genRAMCLEAR
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'check_button'
                                    500 ;------------------------------------------------------------
                                    501 ;last_state    Allocated with name '_check_button_last_state_10000_94'
                                    502 ;hold_counter  Allocated with name '_check_button_hold_counter_10000_94'
                                    503 ;current_state Allocated to registers r6 
                                    504 ;------------------------------------------------------------
                                    505 ;	main.c:451: static unsigned char last_state = 1;
      0000A7 75 32 01         [24]  506 	mov	_check_button_last_state_10000_94,#0x01
                                    507 ;	main.c:452: static unsigned int hold_counter = 0;
      0000AA E4               [12]  508 	clr	a
      0000AB F5 33            [12]  509 	mov	_check_button_hold_counter_10000_94,a
      0000AD F5 34            [12]  510 	mov	(_check_button_hold_counter_10000_94 + 1),a
                                    511 ;	main.c:54: unsigned int temperature = 0;
      0000AF E4               [12]  512 	clr	a
      0000B0 F5 08            [12]  513 	mov	_temperature,a
      0000B2 F5 09            [12]  514 	mov	(_temperature + 1),a
                                    515 ;	main.c:55: unsigned char system_state = 0;
      0000B4 F5 0A            [12]  516 	mov	_system_state,a
                                    517 ;	main.c:56: unsigned int blink_timer = 0;
      0000B6 F5 0B            [12]  518 	mov	_blink_timer,a
      0000B8 F5 0C            [12]  519 	mov	(_blink_timer + 1),a
                                    520 ;	main.c:57: unsigned char event_count = 0;
      0000BA F5 0D            [12]  521 	mov	_event_count,a
                                    522 ;	main.c:58: unsigned char current_mode = 0;
      0000BC F5 0E            [12]  523 	mov	_current_mode,a
                                    524 ;	main.c:59: unsigned char button_was_pressed = 0;
      0000BE F5 0F            [12]  525 	mov	_button_was_pressed,a
                                    526 ;	main.c:60: unsigned int log_display_counter = 0;
      0000C0 F5 10            [12]  527 	mov	_log_display_counter,a
      0000C2 F5 11            [12]  528 	mov	(_log_display_counter + 1),a
                                    529 ;	main.c:61: unsigned char event_index = 0;
      0000C4 F5 12            [12]  530 	mov	_event_index,a
                                    531 ;	main.c:62: unsigned char total_events = 0;
      0000C6 F5 13            [12]  532 	mov	_total_events,a
                                    533 ;	main.c:63: unsigned char display_events_active = 0;
      0000C8 F5 14            [12]  534 	mov	_display_events_active,a
                                    535 	.area GSFINAL (CODE)
      0000CA 02 00 49         [24]  536 	ljmp	__sdcc_program_startup
                                    537 ;--------------------------------------------------------
                                    538 ; Home
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area HOME    (CODE)
      000049                        542 __sdcc_program_startup:
      000049 12 0A 0F         [24]  543 	lcall	_main
      00004C                        544 __sdcc_program_exit:
      00004C 80 FE            [24]  545 	sjmp	.
                                    546 ;	return from main will return to caller
                                    547 ;--------------------------------------------------------
                                    548 ; code
                                    549 ;--------------------------------------------------------
                                    550 	.area CSEG    (CODE)
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'delay'
                                    553 ;------------------------------------------------------------
                                    554 ;ms            Allocated to registers r6 r7 
                                    555 ;i             Allocated to registers r4 r5 
                                    556 ;j             Allocated to registers r2 r3 
                                    557 ;------------------------------------------------------------
                                    558 ;	main.c:69: void delay(unsigned int ms)
                                    559 ;	-----------------------------------------
                                    560 ;	 function delay
                                    561 ;	-----------------------------------------
      0000CD                        562 _delay:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
      0000CD AE 82            [24]  571 	mov	r6, dpl
      0000CF AF 83            [24]  572 	mov	r7, dph
                                    573 ;	main.c:72: for(i = 0; i < ms; i++)
      0000D1 7C 00            [12]  574 	mov	r4,#0x00
      0000D3 7D 00            [12]  575 	mov	r5,#0x00
      0000D5                        576 00107$:
      0000D5 C3               [12]  577 	clr	c
      0000D6 EC               [12]  578 	mov	a,r4
      0000D7 9E               [12]  579 	subb	a,r6
      0000D8 ED               [12]  580 	mov	a,r5
      0000D9 9F               [12]  581 	subb	a,r7
      0000DA 50 14            [24]  582 	jnc	00109$
                                    583 ;	main.c:73: for(j = 0; j < 1275; j++);
      0000DC 7A FB            [12]  584 	mov	r2,#0xfb
      0000DE 7B 04            [12]  585 	mov	r3,#0x04
      0000E0                        586 00105$:
      0000E0 1A               [12]  587 	dec	r2
      0000E1 BA FF 01         [24]  588 	cjne	r2,#0xff,00142$
      0000E4 1B               [12]  589 	dec	r3
      0000E5                        590 00142$:
      0000E5 EA               [12]  591 	mov	a,r2
      0000E6 4B               [12]  592 	orl	a,r3
      0000E7 70 F7            [24]  593 	jnz	00105$
                                    594 ;	main.c:72: for(i = 0; i < ms; i++)
      0000E9 0C               [12]  595 	inc	r4
      0000EA BC 00 E8         [24]  596 	cjne	r4,#0x00,00107$
      0000ED 0D               [12]  597 	inc	r5
      0000EE 80 E5            [24]  598 	sjmp	00107$
      0000F0                        599 00109$:
                                    600 ;	main.c:74: }
      0000F0 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'delay_us'
                                    604 ;------------------------------------------------------------
                                    605 ;us            Allocated to registers r6 r7 
                                    606 ;i             Allocated to registers r4 r5 
                                    607 ;------------------------------------------------------------
                                    608 ;	main.c:76: void delay_us(unsigned int us)
                                    609 ;	-----------------------------------------
                                    610 ;	 function delay_us
                                    611 ;	-----------------------------------------
      0000F1                        612 _delay_us:
      0000F1 AE 82            [24]  613 	mov	r6, dpl
      0000F3 AF 83            [24]  614 	mov	r7, dph
                                    615 ;	main.c:79: for(i = 0; i < us; i++);
      0000F5 7C 00            [12]  616 	mov	r4,#0x00
      0000F7 7D 00            [12]  617 	mov	r5,#0x00
      0000F9                        618 00103$:
      0000F9 C3               [12]  619 	clr	c
      0000FA EC               [12]  620 	mov	a,r4
      0000FB 9E               [12]  621 	subb	a,r6
      0000FC ED               [12]  622 	mov	a,r5
      0000FD 9F               [12]  623 	subb	a,r7
      0000FE 50 07            [24]  624 	jnc	00105$
      000100 0C               [12]  625 	inc	r4
      000101 BC 00 F5         [24]  626 	cjne	r4,#0x00,00103$
      000104 0D               [12]  627 	inc	r5
      000105 80 F2            [24]  628 	sjmp	00103$
      000107                        629 00105$:
                                    630 ;	main.c:80: }
      000107 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'lcd_cmd'
                                    634 ;------------------------------------------------------------
                                    635 ;cmd           Allocated to registers 
                                    636 ;------------------------------------------------------------
                                    637 ;	main.c:86: void lcd_cmd(unsigned char cmd)
                                    638 ;	-----------------------------------------
                                    639 ;	 function lcd_cmd
                                    640 ;	-----------------------------------------
      000108                        641 _lcd_cmd:
      000108 85 82 90         [24]  642 	mov	_P1,dpl
                                    643 ;	main.c:89: RS = 0;
                                    644 ;	assignBit
      00010B C2 B0            [12]  645 	clr	_RS
                                    646 ;	main.c:90: RW = 0;
                                    647 ;	assignBit
      00010D C2 B1            [12]  648 	clr	_RW
                                    649 ;	main.c:91: EN = 1;
                                    650 ;	assignBit
      00010F D2 B2            [12]  651 	setb	_EN
                                    652 ;	main.c:93: EN = 0;
                                    653 ;	assignBit
      000111 C2 B2            [12]  654 	clr	_EN
                                    655 ;	main.c:94: }
      000113 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'lcd_data'
                                    659 ;------------------------------------------------------------
                                    660 ;dat           Allocated to registers 
                                    661 ;------------------------------------------------------------
                                    662 ;	main.c:96: void lcd_data(unsigned char dat)
                                    663 ;	-----------------------------------------
                                    664 ;	 function lcd_data
                                    665 ;	-----------------------------------------
      000114                        666 _lcd_data:
      000114 85 82 90         [24]  667 	mov	_P1,dpl
                                    668 ;	main.c:99: RS = 1;
                                    669 ;	assignBit
      000117 D2 B0            [12]  670 	setb	_RS
                                    671 ;	main.c:100: RW = 0;
                                    672 ;	assignBit
      000119 C2 B1            [12]  673 	clr	_RW
                                    674 ;	main.c:101: EN = 1;
                                    675 ;	assignBit
      00011B D2 B2            [12]  676 	setb	_EN
                                    677 ;	main.c:103: EN = 0;
                                    678 ;	assignBit
      00011D C2 B2            [12]  679 	clr	_EN
                                    680 ;	main.c:104: }
      00011F 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'lcd_string'
                                    684 ;------------------------------------------------------------
                                    685 ;str           Allocated to registers 
                                    686 ;------------------------------------------------------------
                                    687 ;	main.c:106: void lcd_string(char *str)
                                    688 ;	-----------------------------------------
                                    689 ;	 function lcd_string
                                    690 ;	-----------------------------------------
      000120                        691 _lcd_string:
      000120 AD 82            [24]  692 	mov	r5, dpl
      000122 AE 83            [24]  693 	mov	r6, dph
      000124 AF F0            [24]  694 	mov	r7, b
                                    695 ;	main.c:108: while(*str)
      000126                        696 00101$:
      000126 8D 82            [24]  697 	mov	dpl,r5
      000128 8E 83            [24]  698 	mov	dph,r6
      00012A 8F F0            [24]  699 	mov	b,r7
      00012C 12 0D 9C         [24]  700 	lcall	__gptrget
      00012F FC               [12]  701 	mov	r4,a
      000130 60 18            [24]  702 	jz	00104$
                                    703 ;	main.c:109: lcd_data(*str++);
      000132 8C 82            [24]  704 	mov	dpl,r4
      000134 0D               [12]  705 	inc	r5
      000135 BD 00 01         [24]  706 	cjne	r5,#0x00,00122$
      000138 0E               [12]  707 	inc	r6
      000139                        708 00122$:
      000139 C0 07            [24]  709 	push	ar7
      00013B C0 06            [24]  710 	push	ar6
      00013D C0 05            [24]  711 	push	ar5
      00013F 12 01 14         [24]  712 	lcall	_lcd_data
      000142 D0 05            [24]  713 	pop	ar5
      000144 D0 06            [24]  714 	pop	ar6
      000146 D0 07            [24]  715 	pop	ar7
      000148 80 DC            [24]  716 	sjmp	00101$
      00014A                        717 00104$:
                                    718 ;	main.c:110: }
      00014A 22               [24]  719 	ret
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'lcd_init'
                                    722 ;------------------------------------------------------------
                                    723 ;	main.c:112: void lcd_init(void)
                                    724 ;	-----------------------------------------
                                    725 ;	 function lcd_init
                                    726 ;	-----------------------------------------
      00014B                        727 _lcd_init:
                                    728 ;	main.c:114: lcd_cmd(0x38);
      00014B 75 82 38         [24]  729 	mov	dpl, #0x38
      00014E 12 01 08         [24]  730 	lcall	_lcd_cmd
                                    731 ;	main.c:115: lcd_cmd(0x0C);
      000151 75 82 0C         [24]  732 	mov	dpl, #0x0c
      000154 12 01 08         [24]  733 	lcall	_lcd_cmd
                                    734 ;	main.c:116: lcd_cmd(0x06);
      000157 75 82 06         [24]  735 	mov	dpl, #0x06
      00015A 12 01 08         [24]  736 	lcall	_lcd_cmd
                                    737 ;	main.c:117: lcd_cmd(0x01);
      00015D 75 82 01         [24]  738 	mov	dpl, #0x01
                                    739 ;	main.c:118: delay(20);
                                    740 ;	main.c:119: }
      000160 02 01 08         [24]  741 	ljmp	_lcd_cmd
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'lcd_clear'
                                    744 ;------------------------------------------------------------
                                    745 ;	main.c:121: void lcd_clear(void)
                                    746 ;	-----------------------------------------
                                    747 ;	 function lcd_clear
                                    748 ;	-----------------------------------------
      000163                        749 _lcd_clear:
                                    750 ;	main.c:123: lcd_cmd(0x01);
      000163 75 82 01         [24]  751 	mov	dpl, #0x01
                                    752 ;	main.c:124: delay(5);
                                    753 ;	main.c:125: }
      000166 02 01 08         [24]  754 	ljmp	_lcd_cmd
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'display_temperature'
                                    757 ;------------------------------------------------------------
                                    758 ;temp          Allocated to registers r6 r7 
                                    759 ;------------------------------------------------------------
                                    760 ;	main.c:127: void display_temperature(unsigned int temp)
                                    761 ;	-----------------------------------------
                                    762 ;	 function display_temperature
                                    763 ;	-----------------------------------------
      000169                        764 _display_temperature:
                                    765 ;	main.c:129: if(temp / 100 == 0)
      000169 AE 82            [24]  766 	mov	r6,dpl
      00016B AF 83            [24]  767 	mov	r7,dph
      00016D 75 3B 64         [24]  768 	mov	__divuint_PARM_2,#0x64
      000170 75 3C 00         [24]  769 	mov	(__divuint_PARM_2 + 1),#0x00
      000173 C0 07            [24]  770 	push	ar7
      000175 C0 06            [24]  771 	push	ar6
      000177 12 0C EE         [24]  772 	lcall	__divuint
      00017A AC 82            [24]  773 	mov	r4, dpl
      00017C AD 83            [24]  774 	mov	r5, dph
      00017E D0 06            [24]  775 	pop	ar6
      000180 D0 07            [24]  776 	pop	ar7
      000182 EC               [12]  777 	mov	a,r4
      000183 4D               [12]  778 	orl	a,r5
      000184 70 10            [24]  779 	jnz	00102$
                                    780 ;	main.c:130: lcd_data(' ');
      000186 75 82 20         [24]  781 	mov	dpl, #0x20
      000189 C0 07            [24]  782 	push	ar7
      00018B C0 06            [24]  783 	push	ar6
      00018D 12 01 14         [24]  784 	lcall	_lcd_data
      000190 D0 06            [24]  785 	pop	ar6
      000192 D0 07            [24]  786 	pop	ar7
      000194 80 10            [24]  787 	sjmp	00103$
      000196                        788 00102$:
                                    789 ;	main.c:132: lcd_data((temp / 100) + '0');
      000196 74 30            [12]  790 	mov	a,#0x30
      000198 2C               [12]  791 	add	a, r4
      000199 F5 82            [12]  792 	mov	dpl,a
      00019B C0 07            [24]  793 	push	ar7
      00019D C0 06            [24]  794 	push	ar6
      00019F 12 01 14         [24]  795 	lcall	_lcd_data
      0001A2 D0 06            [24]  796 	pop	ar6
      0001A4 D0 07            [24]  797 	pop	ar7
      0001A6                        798 00103$:
                                    799 ;	main.c:133: lcd_data(((temp / 10) % 10) + '0');
      0001A6 75 3B 0A         [24]  800 	mov	__divuint_PARM_2,#0x0a
      0001A9 75 3C 00         [24]  801 	mov	(__divuint_PARM_2 + 1),#0x00
      0001AC 8E 82            [24]  802 	mov	dpl, r6
      0001AE 8F 83            [24]  803 	mov	dph, r7
      0001B0 C0 07            [24]  804 	push	ar7
      0001B2 C0 06            [24]  805 	push	ar6
      0001B4 12 0C EE         [24]  806 	lcall	__divuint
      0001B7 75 3B 0A         [24]  807 	mov	__moduint_PARM_2,#0x0a
      0001BA 75 3C 00         [24]  808 	mov	(__moduint_PARM_2 + 1),#0x00
      0001BD 12 0D 4F         [24]  809 	lcall	__moduint
      0001C0 AC 82            [24]  810 	mov	r4, dpl
      0001C2 74 30            [12]  811 	mov	a,#0x30
      0001C4 2C               [12]  812 	add	a, r4
      0001C5 F5 82            [12]  813 	mov	dpl,a
      0001C7 12 01 14         [24]  814 	lcall	_lcd_data
      0001CA D0 06            [24]  815 	pop	ar6
      0001CC D0 07            [24]  816 	pop	ar7
                                    817 ;	main.c:134: lcd_data((temp % 10) + '0');
      0001CE 75 3B 0A         [24]  818 	mov	__moduint_PARM_2,#0x0a
      0001D1 75 3C 00         [24]  819 	mov	(__moduint_PARM_2 + 1),#0x00
      0001D4 8E 82            [24]  820 	mov	dpl, r6
      0001D6 8F 83            [24]  821 	mov	dph, r7
      0001D8 12 0D 4F         [24]  822 	lcall	__moduint
      0001DB AE 82            [24]  823 	mov	r6, dpl
      0001DD 74 30            [12]  824 	mov	a,#0x30
      0001DF 2E               [12]  825 	add	a, r6
      0001E0 F5 82            [12]  826 	mov	dpl,a
                                    827 ;	main.c:135: }
      0001E2 02 01 14         [24]  828 	ljmp	_lcd_data
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'ADC_Read'
                                    831 ;------------------------------------------------------------
                                    832 ;adc_value     Allocated to registers 
                                    833 ;timeout       Allocated to registers r6 r7 
                                    834 ;------------------------------------------------------------
                                    835 ;	main.c:141: unsigned char ADC_Read(void)
                                    836 ;	-----------------------------------------
                                    837 ;	 function ADC_Read
                                    838 ;	-----------------------------------------
      0001E5                        839 _ADC_Read:
                                    840 ;	main.c:146: P0 = 0xFF;
      0001E5 75 80 FF         [24]  841 	mov	_P0,#0xff
                                    842 ;	main.c:147: ADC_WR = 0;
                                    843 ;	assignBit
      0001E8 C2 A1            [12]  844 	clr	_ADC_WR
                                    845 ;	main.c:149: ADC_WR = 1;
                                    846 ;	assignBit
      0001EA D2 A1            [12]  847 	setb	_ADC_WR
                                    848 ;	main.c:151: while(INTR == 1 && timeout < 10000)
      0001EC 7E 00            [12]  849 	mov	r6,#0x00
      0001EE 7F 00            [12]  850 	mov	r7,#0x00
      0001F0                        851 00102$:
      0001F0 30 A2 10         [24]  852 	jnb	_INTR,00104$
      0001F3 C3               [12]  853 	clr	c
      0001F4 EE               [12]  854 	mov	a,r6
      0001F5 94 10            [12]  855 	subb	a,#0x10
      0001F7 EF               [12]  856 	mov	a,r7
      0001F8 94 27            [12]  857 	subb	a,#0x27
      0001FA 50 07            [24]  858 	jnc	00104$
                                    859 ;	main.c:152: timeout++;
      0001FC 0E               [12]  860 	inc	r6
      0001FD BE 00 F0         [24]  861 	cjne	r6,#0x00,00102$
      000200 0F               [12]  862 	inc	r7
      000201 80 ED            [24]  863 	sjmp	00102$
      000203                        864 00104$:
                                    865 ;	main.c:154: ADC_RD = 0;
                                    866 ;	assignBit
      000203 C2 A0            [12]  867 	clr	_ADC_RD
                                    868 ;	main.c:156: adc_value = P0;
      000205 85 80 82         [24]  869 	mov	dpl,_P0
                                    870 ;	main.c:157: ADC_RD = 1;
                                    871 ;	assignBit
      000208 D2 A0            [12]  872 	setb	_ADC_RD
                                    873 ;	main.c:159: return adc_value;
                                    874 ;	main.c:160: }
      00020A 22               [24]  875 	ret
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'i2c_start'
                                    878 ;------------------------------------------------------------
                                    879 ;	main.c:166: void i2c_start(void)
                                    880 ;	-----------------------------------------
                                    881 ;	 function i2c_start
                                    882 ;	-----------------------------------------
      00020B                        883 _i2c_start:
                                    884 ;	main.c:168: SDA = 1;
                                    885 ;	assignBit
      00020B D2 A6            [12]  886 	setb	_SDA
                                    887 ;	main.c:169: SCL = 1;
                                    888 ;	assignBit
      00020D D2 A7            [12]  889 	setb	_SCL
                                    890 ;	main.c:171: SDA = 0;
                                    891 ;	assignBit
      00020F C2 A6            [12]  892 	clr	_SDA
                                    893 ;	main.c:173: SCL = 0;
                                    894 ;	assignBit
      000211 C2 A7            [12]  895 	clr	_SCL
                                    896 ;	main.c:174: }
      000213 22               [24]  897 	ret
                                    898 ;------------------------------------------------------------
                                    899 ;Allocation info for local variables in function 'i2c_stop'
                                    900 ;------------------------------------------------------------
                                    901 ;	main.c:176: void i2c_stop(void)
                                    902 ;	-----------------------------------------
                                    903 ;	 function i2c_stop
                                    904 ;	-----------------------------------------
      000214                        905 _i2c_stop:
                                    906 ;	main.c:178: SDA = 0;
                                    907 ;	assignBit
      000214 C2 A6            [12]  908 	clr	_SDA
                                    909 ;	main.c:179: SCL = 1;
                                    910 ;	assignBit
      000216 D2 A7            [12]  911 	setb	_SCL
                                    912 ;	main.c:181: SDA = 1;
                                    913 ;	assignBit
      000218 D2 A6            [12]  914 	setb	_SDA
                                    915 ;	main.c:182: delay_us(5);
                                    916 ;	main.c:183: }
      00021A 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'i2c_write'
                                    920 ;------------------------------------------------------------
                                    921 ;data          Allocated to registers r7 
                                    922 ;i             Allocated to registers r6 
                                    923 ;ack           Allocated to registers 
                                    924 ;------------------------------------------------------------
                                    925 ;	main.c:185: unsigned char i2c_write(unsigned char data)
                                    926 ;	-----------------------------------------
                                    927 ;	 function i2c_write
                                    928 ;	-----------------------------------------
      00021B                        929 _i2c_write:
      00021B AF 82            [24]  930 	mov	r7, dpl
                                    931 ;	main.c:189: for(i = 0; i < 8; i++)
      00021D 7E 00            [12]  932 	mov	r6,#0x00
      00021F                        933 00102$:
                                    934 ;	main.c:191: SDA = (data & 0x80) ? 1 : 0;
      00021F 8F 05            [24]  935 	mov	ar5,r7
      000221 53 05 80         [24]  936 	anl	ar5,#0x80
                                    937 ;	assignBit
      000224 ED               [12]  938 	mov	a,r5
      000225 24 FF            [12]  939 	add	a,#0xff
      000227 92 A6            [24]  940 	mov	_SDA,c
                                    941 ;	main.c:192: data <<= 1;
      000229 EF               [12]  942 	mov	a,r7
      00022A 2F               [12]  943 	add	a,r7
      00022B FF               [12]  944 	mov	r7,a
                                    945 ;	main.c:193: SCL = 1;
                                    946 ;	assignBit
      00022C D2 A7            [12]  947 	setb	_SCL
                                    948 ;	main.c:195: SCL = 0;
                                    949 ;	assignBit
      00022E C2 A7            [12]  950 	clr	_SCL
                                    951 ;	main.c:189: for(i = 0; i < 8; i++)
      000230 0E               [12]  952 	inc	r6
      000231 BE 08 00         [24]  953 	cjne	r6,#0x08,00121$
      000234                        954 00121$:
      000234 40 E9            [24]  955 	jc	00102$
                                    956 ;	main.c:199: SDA = 1;
                                    957 ;	assignBit
      000236 D2 A6            [12]  958 	setb	_SDA
                                    959 ;	main.c:200: SCL = 1;
                                    960 ;	assignBit
      000238 D2 A7            [12]  961 	setb	_SCL
                                    962 ;	main.c:202: ack = SDA;
      00023A A2 A6            [12]  963 	mov	c,_SDA
      00023C E4               [12]  964 	clr	a
      00023D 33               [12]  965 	rlc	a
      00023E F5 82            [12]  966 	mov	dpl,a
                                    967 ;	main.c:203: SCL = 0;
                                    968 ;	assignBit
      000240 C2 A7            [12]  969 	clr	_SCL
                                    970 ;	main.c:205: return ack;
                                    971 ;	main.c:206: }
      000242 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'i2c_read'
                                    975 ;------------------------------------------------------------
                                    976 ;ack           Allocated to registers r7 
                                    977 ;i             Allocated to registers r5 
                                    978 ;data          Allocated to registers r6 
                                    979 ;------------------------------------------------------------
                                    980 ;	main.c:208: unsigned char i2c_read(unsigned char ack)
                                    981 ;	-----------------------------------------
                                    982 ;	 function i2c_read
                                    983 ;	-----------------------------------------
      000243                        984 _i2c_read:
      000243 AF 82            [24]  985 	mov	r7, dpl
                                    986 ;	main.c:210: unsigned char i, data = 0;
      000245 7E 00            [12]  987 	mov	r6,#0x00
                                    988 ;	main.c:212: SDA = 1;
                                    989 ;	assignBit
      000247 D2 A6            [12]  990 	setb	_SDA
                                    991 ;	main.c:214: for(i = 0; i < 8; i++)
      000249 7D 00            [12]  992 	mov	r5,#0x00
      00024B                        993 00104$:
                                    994 ;	main.c:216: data <<= 1;
      00024B EE               [12]  995 	mov	a,r6
      00024C 2E               [12]  996 	add	a,r6
      00024D FE               [12]  997 	mov	r6,a
                                    998 ;	main.c:217: SCL = 1;
                                    999 ;	assignBit
      00024E D2 A7            [12] 1000 	setb	_SCL
                                   1001 ;	main.c:219: if(SDA) data |= 0x01;
      000250 30 A6 03         [24] 1002 	jnb	_SDA,00102$
      000253 43 06 01         [24] 1003 	orl	ar6,#0x01
      000256                       1004 00102$:
                                   1005 ;	main.c:220: SCL = 0;
                                   1006 ;	assignBit
      000256 C2 A7            [12] 1007 	clr	_SCL
                                   1008 ;	main.c:214: for(i = 0; i < 8; i++)
      000258 0D               [12] 1009 	inc	r5
      000259 BD 08 00         [24] 1010 	cjne	r5,#0x08,00131$
      00025C                       1011 00131$:
      00025C 40 ED            [24] 1012 	jc	00104$
                                   1013 ;	main.c:224: SDA = ack ? 0 : 1;
      00025E EF               [12] 1014 	mov	a,r7
      00025F B4 01 00         [24] 1015 	cjne	a,#0x01,00133$
      000262                       1016 00133$:
      000262 92 A6            [24] 1017 	mov	_SDA,c
                                   1018 ;	main.c:225: SCL = 1;
                                   1019 ;	assignBit
      000264 D2 A7            [12] 1020 	setb	_SCL
                                   1021 ;	main.c:227: SCL = 0;
                                   1022 ;	assignBit
      000266 C2 A7            [12] 1023 	clr	_SCL
                                   1024 ;	main.c:228: SDA = 1;
                                   1025 ;	assignBit
      000268 D2 A6            [12] 1026 	setb	_SDA
                                   1027 ;	main.c:230: return data;
      00026A 8E 82            [24] 1028 	mov	dpl, r6
                                   1029 ;	main.c:231: }
      00026C 22               [24] 1030 	ret
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'eeprom_write_byte'
                                   1033 ;------------------------------------------------------------
                                   1034 ;data          Allocated with name '_eeprom_write_byte_PARM_2'
                                   1035 ;addr          Allocated to registers r6 r7 
                                   1036 ;------------------------------------------------------------
                                   1037 ;	main.c:237: void eeprom_write_byte(unsigned int addr, unsigned char data)
                                   1038 ;	-----------------------------------------
                                   1039 ;	 function eeprom_write_byte
                                   1040 ;	-----------------------------------------
      00026D                       1041 _eeprom_write_byte:
      00026D AE 82            [24] 1042 	mov	r6, dpl
      00026F AF 83            [24] 1043 	mov	r7, dph
                                   1044 ;	main.c:239: i2c_start();
      000271 C0 07            [24] 1045 	push	ar7
      000273 C0 06            [24] 1046 	push	ar6
      000275 12 02 0B         [24] 1047 	lcall	_i2c_start
                                   1048 ;	main.c:240: i2c_write(EEPROM_ADDR_WRITE);
      000278 75 82 A0         [24] 1049 	mov	dpl, #0xa0
      00027B 12 02 1B         [24] 1050 	lcall	_i2c_write
      00027E D0 06            [24] 1051 	pop	ar6
      000280 D0 07            [24] 1052 	pop	ar7
                                   1053 ;	main.c:241: i2c_write((unsigned char)(addr >> 8));
      000282 8F 82            [24] 1054 	mov	dpl,r7
      000284 C0 07            [24] 1055 	push	ar7
      000286 C0 06            [24] 1056 	push	ar6
      000288 12 02 1B         [24] 1057 	lcall	_i2c_write
      00028B D0 06            [24] 1058 	pop	ar6
      00028D D0 07            [24] 1059 	pop	ar7
                                   1060 ;	main.c:242: i2c_write((unsigned char)(addr & 0xFF));
      00028F 8E 82            [24] 1061 	mov	dpl,r6
      000291 12 02 1B         [24] 1062 	lcall	_i2c_write
                                   1063 ;	main.c:243: i2c_write(data);
      000294 85 15 82         [24] 1064 	mov	dpl, _eeprom_write_byte_PARM_2
      000297 12 02 1B         [24] 1065 	lcall	_i2c_write
                                   1066 ;	main.c:244: i2c_stop();
                                   1067 ;	main.c:245: delay(10);
                                   1068 ;	main.c:246: }
      00029A 02 02 14         [24] 1069 	ljmp	_i2c_stop
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'eeprom_read_byte'
                                   1072 ;------------------------------------------------------------
                                   1073 ;addr          Allocated to registers r6 r7 
                                   1074 ;data          Allocated to registers r7 
                                   1075 ;------------------------------------------------------------
                                   1076 ;	main.c:248: unsigned char eeprom_read_byte(unsigned int addr)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function eeprom_read_byte
                                   1079 ;	-----------------------------------------
      00029D                       1080 _eeprom_read_byte:
      00029D AE 82            [24] 1081 	mov	r6, dpl
      00029F AF 83            [24] 1082 	mov	r7, dph
                                   1083 ;	main.c:252: i2c_start();
      0002A1 C0 07            [24] 1084 	push	ar7
      0002A3 C0 06            [24] 1085 	push	ar6
      0002A5 12 02 0B         [24] 1086 	lcall	_i2c_start
                                   1087 ;	main.c:253: i2c_write(EEPROM_ADDR_WRITE);
      0002A8 75 82 A0         [24] 1088 	mov	dpl, #0xa0
      0002AB 12 02 1B         [24] 1089 	lcall	_i2c_write
      0002AE D0 06            [24] 1090 	pop	ar6
      0002B0 D0 07            [24] 1091 	pop	ar7
                                   1092 ;	main.c:254: i2c_write((unsigned char)(addr >> 8));
      0002B2 8F 82            [24] 1093 	mov	dpl,r7
      0002B4 C0 07            [24] 1094 	push	ar7
      0002B6 C0 06            [24] 1095 	push	ar6
      0002B8 12 02 1B         [24] 1096 	lcall	_i2c_write
      0002BB D0 06            [24] 1097 	pop	ar6
      0002BD D0 07            [24] 1098 	pop	ar7
                                   1099 ;	main.c:255: i2c_write((unsigned char)(addr & 0xFF));
      0002BF 8E 82            [24] 1100 	mov	dpl,r6
      0002C1 12 02 1B         [24] 1101 	lcall	_i2c_write
                                   1102 ;	main.c:257: i2c_start();
      0002C4 12 02 0B         [24] 1103 	lcall	_i2c_start
                                   1104 ;	main.c:258: i2c_write(EEPROM_ADDR_READ);
      0002C7 75 82 A1         [24] 1105 	mov	dpl, #0xa1
      0002CA 12 02 1B         [24] 1106 	lcall	_i2c_write
                                   1107 ;	main.c:259: data = i2c_read(0);
      0002CD 75 82 00         [24] 1108 	mov	dpl, #0x00
      0002D0 12 02 43         [24] 1109 	lcall	_i2c_read
      0002D3 AF 82            [24] 1110 	mov	r7, dpl
                                   1111 ;	main.c:260: i2c_stop();
      0002D5 C0 07            [24] 1112 	push	ar7
      0002D7 12 02 14         [24] 1113 	lcall	_i2c_stop
      0002DA D0 07            [24] 1114 	pop	ar7
                                   1115 ;	main.c:262: return data;
      0002DC 8F 82            [24] 1116 	mov	dpl, r7
                                   1117 ;	main.c:263: }
      0002DE 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'bcd_to_decimal'
                                   1121 ;------------------------------------------------------------
                                   1122 ;bcd           Allocated to registers r7 
                                   1123 ;------------------------------------------------------------
                                   1124 ;	main.c:269: unsigned char bcd_to_decimal(unsigned char bcd)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function bcd_to_decimal
                                   1127 ;	-----------------------------------------
      0002DF                       1128 _bcd_to_decimal:
                                   1129 ;	main.c:271: return ((bcd >> 4) * 10) + (bcd & 0x0F);
      0002DF E5 82            [12] 1130 	mov	a,dpl
      0002E1 FF               [12] 1131 	mov	r7,a
      0002E2 C4               [12] 1132 	swap	a
      0002E3 54 0F            [12] 1133 	anl	a,#0x0f
      0002E5 75 F0 0A         [24] 1134 	mov	b,#0x0a
      0002E8 A4               [48] 1135 	mul	ab
      0002E9 FE               [12] 1136 	mov	r6,a
      0002EA 74 0F            [12] 1137 	mov	a,#0x0f
      0002EC 5F               [12] 1138 	anl	a,r7
      0002ED 2E               [12] 1139 	add	a, r6
      0002EE F5 82            [12] 1140 	mov	dpl,a
                                   1141 ;	main.c:272: }
      0002F0 22               [24] 1142 	ret
                                   1143 ;------------------------------------------------------------
                                   1144 ;Allocation info for local variables in function 'decimal_to_bcd'
                                   1145 ;------------------------------------------------------------
                                   1146 ;dec           Allocated to registers r7 
                                   1147 ;------------------------------------------------------------
                                   1148 ;	main.c:274: unsigned char decimal_to_bcd(unsigned char dec)
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function decimal_to_bcd
                                   1151 ;	-----------------------------------------
      0002F1                       1152 _decimal_to_bcd:
      0002F1 AF 82            [24] 1153 	mov	r7, dpl
                                   1154 ;	main.c:276: return ((dec / 10) << 4) | (dec % 10);
      0002F3 8F 06            [24] 1155 	mov	ar6,r7
      0002F5 75 F0 0A         [24] 1156 	mov	b,#0x0a
      0002F8 EE               [12] 1157 	mov	a,r6
      0002F9 84               [48] 1158 	div	ab
      0002FA C4               [12] 1159 	swap	a
      0002FB 54 F0            [12] 1160 	anl	a,#0xf0
      0002FD FE               [12] 1161 	mov	r6,a
      0002FE 75 F0 0A         [24] 1162 	mov	b,#0x0a
      000301 EF               [12] 1163 	mov	a,r7
      000302 84               [48] 1164 	div	ab
      000303 E5 F0            [12] 1165 	mov	a,b
      000305 4E               [12] 1166 	orl	a,r6
      000306 F5 82            [12] 1167 	mov	dpl,a
                                   1168 ;	main.c:277: }
      000308 22               [24] 1169 	ret
                                   1170 ;------------------------------------------------------------
                                   1171 ;Allocation info for local variables in function 'rtc_read_time'
                                   1172 ;------------------------------------------------------------
                                   1173 ;minutes       Allocated with name '_rtc_read_time_PARM_2'
                                   1174 ;seconds       Allocated with name '_rtc_read_time_PARM_3'
                                   1175 ;hours         Allocated to registers r5 r6 r7 
                                   1176 ;------------------------------------------------------------
                                   1177 ;	main.c:279: void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds)
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function rtc_read_time
                                   1180 ;	-----------------------------------------
      000309                       1181 _rtc_read_time:
      000309 AD 82            [24] 1182 	mov	r5, dpl
      00030B AE 83            [24] 1183 	mov	r6, dph
      00030D AF F0            [24] 1184 	mov	r7, b
                                   1185 ;	main.c:281: i2c_start();
      00030F C0 07            [24] 1186 	push	ar7
      000311 C0 06            [24] 1187 	push	ar6
      000313 C0 05            [24] 1188 	push	ar5
      000315 12 02 0B         [24] 1189 	lcall	_i2c_start
                                   1190 ;	main.c:282: i2c_write(RTC_ADDR_WRITE);
      000318 75 82 D0         [24] 1191 	mov	dpl, #0xd0
      00031B 12 02 1B         [24] 1192 	lcall	_i2c_write
                                   1193 ;	main.c:283: i2c_write(0x00);
      00031E 75 82 00         [24] 1194 	mov	dpl, #0x00
      000321 12 02 1B         [24] 1195 	lcall	_i2c_write
                                   1196 ;	main.c:284: i2c_start();
      000324 12 02 0B         [24] 1197 	lcall	_i2c_start
                                   1198 ;	main.c:285: i2c_write(RTC_ADDR_READ);
      000327 75 82 D1         [24] 1199 	mov	dpl, #0xd1
      00032A 12 02 1B         [24] 1200 	lcall	_i2c_write
                                   1201 ;	main.c:287: *seconds = bcd_to_decimal(i2c_read(1));
      00032D AA 19            [24] 1202 	mov	r2,_rtc_read_time_PARM_3
      00032F AB 1A            [24] 1203 	mov	r3,(_rtc_read_time_PARM_3 + 1)
      000331 AC 1B            [24] 1204 	mov	r4,(_rtc_read_time_PARM_3 + 2)
      000333 75 82 01         [24] 1205 	mov	dpl, #0x01
      000336 C0 04            [24] 1206 	push	ar4
      000338 C0 03            [24] 1207 	push	ar3
      00033A C0 02            [24] 1208 	push	ar2
      00033C 12 02 43         [24] 1209 	lcall	_i2c_read
      00033F 12 02 DF         [24] 1210 	lcall	_bcd_to_decimal
      000342 A9 82            [24] 1211 	mov	r1, dpl
      000344 D0 02            [24] 1212 	pop	ar2
      000346 D0 03            [24] 1213 	pop	ar3
      000348 D0 04            [24] 1214 	pop	ar4
      00034A 8A 82            [24] 1215 	mov	dpl,r2
      00034C 8B 83            [24] 1216 	mov	dph,r3
      00034E 8C F0            [24] 1217 	mov	b,r4
      000350 E9               [12] 1218 	mov	a,r1
      000351 12 0D 17         [24] 1219 	lcall	__gptrput
                                   1220 ;	main.c:288: *minutes = bcd_to_decimal(i2c_read(1));
      000354 AA 16            [24] 1221 	mov	r2,_rtc_read_time_PARM_2
      000356 AB 17            [24] 1222 	mov	r3,(_rtc_read_time_PARM_2 + 1)
      000358 AC 18            [24] 1223 	mov	r4,(_rtc_read_time_PARM_2 + 2)
      00035A 75 82 01         [24] 1224 	mov	dpl, #0x01
      00035D C0 04            [24] 1225 	push	ar4
      00035F C0 03            [24] 1226 	push	ar3
      000361 C0 02            [24] 1227 	push	ar2
      000363 12 02 43         [24] 1228 	lcall	_i2c_read
      000366 12 02 DF         [24] 1229 	lcall	_bcd_to_decimal
      000369 A9 82            [24] 1230 	mov	r1, dpl
      00036B D0 02            [24] 1231 	pop	ar2
      00036D D0 03            [24] 1232 	pop	ar3
      00036F D0 04            [24] 1233 	pop	ar4
      000371 8A 82            [24] 1234 	mov	dpl,r2
      000373 8B 83            [24] 1235 	mov	dph,r3
      000375 8C F0            [24] 1236 	mov	b,r4
      000377 E9               [12] 1237 	mov	a,r1
      000378 12 0D 17         [24] 1238 	lcall	__gptrput
                                   1239 ;	main.c:289: *hours = bcd_to_decimal(i2c_read(0) & 0x3F);
      00037B 75 82 00         [24] 1240 	mov	dpl, #0x00
      00037E 12 02 43         [24] 1241 	lcall	_i2c_read
      000381 E5 82            [12] 1242 	mov	a, dpl
      000383 54 3F            [12] 1243 	anl	a,#0x3f
      000385 F5 82            [12] 1244 	mov	dpl,a
      000387 12 02 DF         [24] 1245 	lcall	_bcd_to_decimal
      00038A AC 82            [24] 1246 	mov	r4, dpl
      00038C D0 05            [24] 1247 	pop	ar5
      00038E D0 06            [24] 1248 	pop	ar6
      000390 D0 07            [24] 1249 	pop	ar7
      000392 8D 82            [24] 1250 	mov	dpl,r5
      000394 8E 83            [24] 1251 	mov	dph,r6
      000396 8F F0            [24] 1252 	mov	b,r7
      000398 EC               [12] 1253 	mov	a,r4
      000399 12 0D 17         [24] 1254 	lcall	__gptrput
                                   1255 ;	main.c:291: i2c_stop();
                                   1256 ;	main.c:292: }
      00039C 02 02 14         [24] 1257 	ljmp	_i2c_stop
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'rtc_read_date'
                                   1260 ;------------------------------------------------------------
                                   1261 ;month         Allocated with name '_rtc_read_date_PARM_2'
                                   1262 ;year          Allocated with name '_rtc_read_date_PARM_3'
                                   1263 ;day           Allocated to registers r5 r6 r7 
                                   1264 ;------------------------------------------------------------
                                   1265 ;	main.c:294: void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year)
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function rtc_read_date
                                   1268 ;	-----------------------------------------
      00039F                       1269 _rtc_read_date:
      00039F AD 82            [24] 1270 	mov	r5, dpl
      0003A1 AE 83            [24] 1271 	mov	r6, dph
      0003A3 AF F0            [24] 1272 	mov	r7, b
                                   1273 ;	main.c:296: i2c_start();
      0003A5 C0 07            [24] 1274 	push	ar7
      0003A7 C0 06            [24] 1275 	push	ar6
      0003A9 C0 05            [24] 1276 	push	ar5
      0003AB 12 02 0B         [24] 1277 	lcall	_i2c_start
                                   1278 ;	main.c:297: i2c_write(RTC_ADDR_WRITE);
      0003AE 75 82 D0         [24] 1279 	mov	dpl, #0xd0
      0003B1 12 02 1B         [24] 1280 	lcall	_i2c_write
                                   1281 ;	main.c:298: i2c_write(0x04);
      0003B4 75 82 04         [24] 1282 	mov	dpl, #0x04
      0003B7 12 02 1B         [24] 1283 	lcall	_i2c_write
                                   1284 ;	main.c:299: i2c_start();
      0003BA 12 02 0B         [24] 1285 	lcall	_i2c_start
                                   1286 ;	main.c:300: i2c_write(RTC_ADDR_READ);
      0003BD 75 82 D1         [24] 1287 	mov	dpl, #0xd1
      0003C0 12 02 1B         [24] 1288 	lcall	_i2c_write
                                   1289 ;	main.c:302: *day = bcd_to_decimal(i2c_read(1));
      0003C3 75 82 01         [24] 1290 	mov	dpl, #0x01
      0003C6 12 02 43         [24] 1291 	lcall	_i2c_read
      0003C9 12 02 DF         [24] 1292 	lcall	_bcd_to_decimal
      0003CC AC 82            [24] 1293 	mov	r4, dpl
      0003CE D0 05            [24] 1294 	pop	ar5
      0003D0 D0 06            [24] 1295 	pop	ar6
      0003D2 D0 07            [24] 1296 	pop	ar7
      0003D4 8D 82            [24] 1297 	mov	dpl,r5
      0003D6 8E 83            [24] 1298 	mov	dph,r6
      0003D8 8F F0            [24] 1299 	mov	b,r7
      0003DA EC               [12] 1300 	mov	a,r4
      0003DB 12 0D 17         [24] 1301 	lcall	__gptrput
                                   1302 ;	main.c:303: *month = bcd_to_decimal(i2c_read(1));
      0003DE AD 1C            [24] 1303 	mov	r5,_rtc_read_date_PARM_2
      0003E0 AE 1D            [24] 1304 	mov	r6,(_rtc_read_date_PARM_2 + 1)
      0003E2 AF 1E            [24] 1305 	mov	r7,(_rtc_read_date_PARM_2 + 2)
      0003E4 75 82 01         [24] 1306 	mov	dpl, #0x01
      0003E7 C0 07            [24] 1307 	push	ar7
      0003E9 C0 06            [24] 1308 	push	ar6
      0003EB C0 05            [24] 1309 	push	ar5
      0003ED 12 02 43         [24] 1310 	lcall	_i2c_read
      0003F0 12 02 DF         [24] 1311 	lcall	_bcd_to_decimal
      0003F3 AC 82            [24] 1312 	mov	r4, dpl
      0003F5 D0 05            [24] 1313 	pop	ar5
      0003F7 D0 06            [24] 1314 	pop	ar6
      0003F9 D0 07            [24] 1315 	pop	ar7
      0003FB 8D 82            [24] 1316 	mov	dpl,r5
      0003FD 8E 83            [24] 1317 	mov	dph,r6
      0003FF 8F F0            [24] 1318 	mov	b,r7
      000401 EC               [12] 1319 	mov	a,r4
      000402 12 0D 17         [24] 1320 	lcall	__gptrput
                                   1321 ;	main.c:304: *year = bcd_to_decimal(i2c_read(0));
      000405 AD 1F            [24] 1322 	mov	r5,_rtc_read_date_PARM_3
      000407 AE 20            [24] 1323 	mov	r6,(_rtc_read_date_PARM_3 + 1)
      000409 AF 21            [24] 1324 	mov	r7,(_rtc_read_date_PARM_3 + 2)
      00040B 75 82 00         [24] 1325 	mov	dpl, #0x00
      00040E C0 07            [24] 1326 	push	ar7
      000410 C0 06            [24] 1327 	push	ar6
      000412 C0 05            [24] 1328 	push	ar5
      000414 12 02 43         [24] 1329 	lcall	_i2c_read
      000417 12 02 DF         [24] 1330 	lcall	_bcd_to_decimal
      00041A AC 82            [24] 1331 	mov	r4, dpl
      00041C D0 05            [24] 1332 	pop	ar5
      00041E D0 06            [24] 1333 	pop	ar6
      000420 D0 07            [24] 1334 	pop	ar7
      000422 8D 82            [24] 1335 	mov	dpl,r5
      000424 8E 83            [24] 1336 	mov	dph,r6
      000426 8F F0            [24] 1337 	mov	b,r7
      000428 EC               [12] 1338 	mov	a,r4
      000429 12 0D 17         [24] 1339 	lcall	__gptrput
                                   1340 ;	main.c:306: i2c_stop();
                                   1341 ;	main.c:307: }
      00042C 02 02 14         [24] 1342 	ljmp	_i2c_stop
                                   1343 ;------------------------------------------------------------
                                   1344 ;Allocation info for local variables in function 'log_event'
                                   1345 ;------------------------------------------------------------
                                   1346 ;state         Allocated with name '_log_event_PARM_2'
                                   1347 ;temp          Allocated to registers r6 r7 
                                   1348 ;addr          Allocated to registers r4 r5 
                                   1349 ;hours         Allocated with name '_log_event_hours_10000_76'
                                   1350 ;minutes       Allocated with name '_log_event_minutes_10000_76'
                                   1351 ;seconds       Allocated with name '_log_event_seconds_10000_76'
                                   1352 ;day           Allocated with name '_log_event_day_10000_76'
                                   1353 ;month         Allocated with name '_log_event_month_10000_76'
                                   1354 ;year          Allocated with name '_log_event_year_10000_76'
                                   1355 ;------------------------------------------------------------
                                   1356 ;	main.c:313: void log_event(unsigned int temp, unsigned char state)
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function log_event
                                   1359 ;	-----------------------------------------
      00042F                       1360 _log_event:
      00042F AE 82            [24] 1361 	mov	r6, dpl
      000431 AF 83            [24] 1362 	mov	r7, dph
                                   1363 ;	main.c:319: rtc_read_time(&hours, &minutes, &seconds);
      000433 75 16 24         [24] 1364 	mov	_rtc_read_time_PARM_2,#_log_event_minutes_10000_76
      000436 75 17 00         [24] 1365 	mov	(_rtc_read_time_PARM_2 + 1),#0x00
      000439 75 18 40         [24] 1366 	mov	(_rtc_read_time_PARM_2 + 2),#0x40
      00043C 75 19 25         [24] 1367 	mov	_rtc_read_time_PARM_3,#_log_event_seconds_10000_76
      00043F 75 1A 00         [24] 1368 	mov	(_rtc_read_time_PARM_3 + 1),#0x00
      000442 75 1B 40         [24] 1369 	mov	(_rtc_read_time_PARM_3 + 2),#0x40
      000445 90 00 23         [24] 1370 	mov	dptr,#_log_event_hours_10000_76
      000448 75 F0 40         [24] 1371 	mov	b, #0x40
      00044B C0 07            [24] 1372 	push	ar7
      00044D C0 06            [24] 1373 	push	ar6
      00044F 12 03 09         [24] 1374 	lcall	_rtc_read_time
                                   1375 ;	main.c:320: rtc_read_date(&day, &month, &year);
      000452 75 1C 27         [24] 1376 	mov	_rtc_read_date_PARM_2,#_log_event_month_10000_76
      000455 75 1D 00         [24] 1377 	mov	(_rtc_read_date_PARM_2 + 1),#0x00
      000458 75 1E 40         [24] 1378 	mov	(_rtc_read_date_PARM_2 + 2),#0x40
      00045B 75 1F 28         [24] 1379 	mov	_rtc_read_date_PARM_3,#_log_event_year_10000_76
      00045E 75 20 00         [24] 1380 	mov	(_rtc_read_date_PARM_3 + 1),#0x00
      000461 75 21 40         [24] 1381 	mov	(_rtc_read_date_PARM_3 + 2),#0x40
      000464 90 00 26         [24] 1382 	mov	dptr,#_log_event_day_10000_76
      000467 75 F0 40         [24] 1383 	mov	b, #0x40
      00046A 12 03 9F         [24] 1384 	lcall	_rtc_read_date
                                   1385 ;	main.c:322: event_count = eeprom_read_byte(0x0000);
      00046D 90 00 00         [24] 1386 	mov	dptr,#0x0000
      000470 12 02 9D         [24] 1387 	lcall	_eeprom_read_byte
      000473 85 82 0D         [24] 1388 	mov	_event_count,dpl
      000476 D0 06            [24] 1389 	pop	ar6
      000478 D0 07            [24] 1390 	pop	ar7
                                   1391 ;	main.c:323: addr = 0x0010 + (event_count * 8);
      00047A AC 0D            [24] 1392 	mov	r4,_event_count
      00047C E4               [12] 1393 	clr	a
      00047D 03               [12] 1394 	rr	a
      00047E 54 F8            [12] 1395 	anl	a,#0xf8
      000480 CC               [12] 1396 	xch	a,r4
      000481 C4               [12] 1397 	swap	a
      000482 03               [12] 1398 	rr	a
      000483 CC               [12] 1399 	xch	a,r4
      000484 6C               [12] 1400 	xrl	a,r4
      000485 CC               [12] 1401 	xch	a,r4
      000486 54 F8            [12] 1402 	anl	a,#0xf8
      000488 CC               [12] 1403 	xch	a,r4
      000489 6C               [12] 1404 	xrl	a,r4
      00048A FD               [12] 1405 	mov	r5,a
      00048B 74 10            [12] 1406 	mov	a,#0x10
      00048D 2C               [12] 1407 	add	a, r4
      00048E FC               [12] 1408 	mov	r4,a
      00048F E4               [12] 1409 	clr	a
      000490 3D               [12] 1410 	addc	a, r5
      000491 FD               [12] 1411 	mov	r5,a
                                   1412 ;	main.c:325: if(event_count >= 62)
      000492 74 C2            [12] 1413 	mov	a,#0x100 - 0x3e
      000494 25 0D            [12] 1414 	add	a,_event_count
      000496 50 07            [24] 1415 	jnc	00102$
                                   1416 ;	main.c:327: event_count = 0;
      000498 75 0D 00         [24] 1417 	mov	_event_count,#0x00
                                   1418 ;	main.c:328: addr = 0x0010;
      00049B 7C 10            [12] 1419 	mov	r4,#0x10
      00049D 7D 00            [12] 1420 	mov	r5,#0x00
      00049F                       1421 00102$:
                                   1422 ;	main.c:331: eeprom_write_byte(addr, (unsigned char)(temp & 0xFF));
      00049F 8E 15            [24] 1423 	mov	_eeprom_write_byte_PARM_2,r6
      0004A1 8C 82            [24] 1424 	mov	dpl, r4
      0004A3 8D 83            [24] 1425 	mov	dph, r5
      0004A5 C0 07            [24] 1426 	push	ar7
      0004A7 C0 06            [24] 1427 	push	ar6
      0004A9 C0 05            [24] 1428 	push	ar5
      0004AB C0 04            [24] 1429 	push	ar4
      0004AD 12 02 6D         [24] 1430 	lcall	_eeprom_write_byte
      0004B0 D0 04            [24] 1431 	pop	ar4
      0004B2 D0 05            [24] 1432 	pop	ar5
      0004B4 D0 06            [24] 1433 	pop	ar6
      0004B6 D0 07            [24] 1434 	pop	ar7
                                   1435 ;	main.c:332: eeprom_write_byte(addr + 1, (unsigned char)(temp >> 8));
      0004B8 8C 82            [24] 1436 	mov	dpl,r4
      0004BA 8D 83            [24] 1437 	mov	dph,r5
      0004BC A3               [24] 1438 	inc	dptr
      0004BD 8F 15            [24] 1439 	mov	_eeprom_write_byte_PARM_2,r7
      0004BF C0 05            [24] 1440 	push	ar5
      0004C1 C0 04            [24] 1441 	push	ar4
      0004C3 12 02 6D         [24] 1442 	lcall	_eeprom_write_byte
      0004C6 D0 04            [24] 1443 	pop	ar4
      0004C8 D0 05            [24] 1444 	pop	ar5
                                   1445 ;	main.c:333: eeprom_write_byte(addr + 2, state);
      0004CA 8C 82            [24] 1446 	mov	dpl,r4
      0004CC 8D 83            [24] 1447 	mov	dph,r5
      0004CE A3               [24] 1448 	inc	dptr
      0004CF A3               [24] 1449 	inc	dptr
      0004D0 85 22 15         [24] 1450 	mov	_eeprom_write_byte_PARM_2,_log_event_PARM_2
      0004D3 C0 05            [24] 1451 	push	ar5
      0004D5 C0 04            [24] 1452 	push	ar4
      0004D7 12 02 6D         [24] 1453 	lcall	_eeprom_write_byte
      0004DA D0 04            [24] 1454 	pop	ar4
      0004DC D0 05            [24] 1455 	pop	ar5
                                   1456 ;	main.c:334: eeprom_write_byte(addr + 3, seconds);
      0004DE 8C 82            [24] 1457 	mov	dpl,r4
      0004E0 8D 83            [24] 1458 	mov	dph,r5
      0004E2 A3               [24] 1459 	inc	dptr
      0004E3 A3               [24] 1460 	inc	dptr
      0004E4 A3               [24] 1461 	inc	dptr
      0004E5 85 25 15         [24] 1462 	mov	_eeprom_write_byte_PARM_2,_log_event_seconds_10000_76
      0004E8 C0 05            [24] 1463 	push	ar5
      0004EA C0 04            [24] 1464 	push	ar4
      0004EC 12 02 6D         [24] 1465 	lcall	_eeprom_write_byte
      0004EF D0 04            [24] 1466 	pop	ar4
      0004F1 D0 05            [24] 1467 	pop	ar5
                                   1468 ;	main.c:335: eeprom_write_byte(addr + 4, minutes);
      0004F3 8C 82            [24] 1469 	mov	dpl,r4
      0004F5 8D 83            [24] 1470 	mov	dph,r5
      0004F7 A3               [24] 1471 	inc	dptr
      0004F8 A3               [24] 1472 	inc	dptr
      0004F9 A3               [24] 1473 	inc	dptr
      0004FA A3               [24] 1474 	inc	dptr
      0004FB 85 24 15         [24] 1475 	mov	_eeprom_write_byte_PARM_2,_log_event_minutes_10000_76
      0004FE C0 05            [24] 1476 	push	ar5
      000500 C0 04            [24] 1477 	push	ar4
      000502 12 02 6D         [24] 1478 	lcall	_eeprom_write_byte
      000505 D0 04            [24] 1479 	pop	ar4
      000507 D0 05            [24] 1480 	pop	ar5
                                   1481 ;	main.c:336: eeprom_write_byte(addr + 5, hours);
      000509 8C 82            [24] 1482 	mov	dpl,r4
      00050B 8D 83            [24] 1483 	mov	dph,r5
      00050D A3               [24] 1484 	inc	dptr
      00050E A3               [24] 1485 	inc	dptr
      00050F A3               [24] 1486 	inc	dptr
      000510 A3               [24] 1487 	inc	dptr
      000511 A3               [24] 1488 	inc	dptr
      000512 85 23 15         [24] 1489 	mov	_eeprom_write_byte_PARM_2,_log_event_hours_10000_76
      000515 C0 05            [24] 1490 	push	ar5
      000517 C0 04            [24] 1491 	push	ar4
      000519 12 02 6D         [24] 1492 	lcall	_eeprom_write_byte
      00051C D0 04            [24] 1493 	pop	ar4
      00051E D0 05            [24] 1494 	pop	ar5
                                   1495 ;	main.c:337: eeprom_write_byte(addr + 6, day);
      000520 74 06            [12] 1496 	mov	a,#0x06
      000522 2C               [12] 1497 	add	a, r4
      000523 F5 82            [12] 1498 	mov	dpl,a
      000525 E4               [12] 1499 	clr	a
      000526 3D               [12] 1500 	addc	a, r5
      000527 F5 83            [12] 1501 	mov	dph,a
      000529 85 26 15         [24] 1502 	mov	_eeprom_write_byte_PARM_2,_log_event_day_10000_76
      00052C C0 05            [24] 1503 	push	ar5
      00052E C0 04            [24] 1504 	push	ar4
      000530 12 02 6D         [24] 1505 	lcall	_eeprom_write_byte
      000533 D0 04            [24] 1506 	pop	ar4
      000535 D0 05            [24] 1507 	pop	ar5
                                   1508 ;	main.c:338: eeprom_write_byte(addr + 7, month);
      000537 74 07            [12] 1509 	mov	a,#0x07
      000539 2C               [12] 1510 	add	a, r4
      00053A F5 82            [12] 1511 	mov	dpl,a
      00053C E4               [12] 1512 	clr	a
      00053D 3D               [12] 1513 	addc	a, r5
      00053E F5 83            [12] 1514 	mov	dph,a
      000540 85 27 15         [24] 1515 	mov	_eeprom_write_byte_PARM_2,_log_event_month_10000_76
      000543 12 02 6D         [24] 1516 	lcall	_eeprom_write_byte
                                   1517 ;	main.c:340: event_count++;
      000546 05 0D            [12] 1518 	inc	_event_count
                                   1519 ;	main.c:341: eeprom_write_byte(0x0000, event_count);
      000548 85 0D 15         [24] 1520 	mov	_eeprom_write_byte_PARM_2,_event_count
      00054B 90 00 00         [24] 1521 	mov	dptr,#0x0000
                                   1522 ;	main.c:342: }
      00054E 02 02 6D         [24] 1523 	ljmp	_eeprom_write_byte
                                   1524 ;------------------------------------------------------------
                                   1525 ;Allocation info for local variables in function 'display_events'
                                   1526 ;------------------------------------------------------------
                                   1527 ;count         Allocated with name '_display_events_count_10000_80'
                                   1528 ;state         Allocated to registers r1 
                                   1529 ;s             Allocated to registers 
                                   1530 ;m             Allocated with name '_display_events_m_10000_80'
                                   1531 ;h             Allocated with name '_display_events_h_10000_80'
                                   1532 ;d             Allocated with name '_display_events_d_10000_80'
                                   1533 ;mo            Allocated to registers 
                                   1534 ;addr          Allocated with name '_display_events_addr_10000_80'
                                   1535 ;temp          Allocated with name '_display_events_temp_10000_80'
                                   1536 ;idx           Allocated with name '_display_events_idx_10000_80'
                                   1537 ;timer         Allocated to registers r4 r7 
                                   1538 ;------------------------------------------------------------
                                   1539 ;	main.c:348: void display_events(void)
                                   1540 ;	-----------------------------------------
                                   1541 ;	 function display_events
                                   1542 ;	-----------------------------------------
      000551                       1543 _display_events:
                                   1544 ;	main.c:355: count = eeprom_read_byte(0x0000);
      000551 90 00 00         [24] 1545 	mov	dptr,#0x0000
      000554 12 02 9D         [24] 1546 	lcall	_eeprom_read_byte
                                   1547 ;	main.c:356: total_events = count;
                                   1548 ;	main.c:358: if(count == 0)
      000557 E5 82            [12] 1549 	mov	a,dpl
      000559 F5 29            [12] 1550 	mov	_display_events_count_10000_80,a
      00055B F5 13            [12] 1551 	mov	_total_events,a
      00055D 70 21            [24] 1552 	jnz	00102$
                                   1553 ;	main.c:360: lcd_clear();
      00055F 12 01 63         [24] 1554 	lcall	_lcd_clear
                                   1555 ;	main.c:361: lcd_cmd(0x80);
      000562 75 82 80         [24] 1556 	mov	dpl, #0x80
      000565 12 01 08         [24] 1557 	lcall	_lcd_cmd
                                   1558 ;	main.c:362: lcd_string("No Events Logged");
      000568 90 0E 2A         [24] 1559 	mov	dptr,#___str_0
      00056B 75 F0 80         [24] 1560 	mov	b, #0x80
      00056E 12 01 20         [24] 1561 	lcall	_lcd_string
                                   1562 ;	main.c:363: lcd_cmd(0xC0);
      000571 75 82 C0         [24] 1563 	mov	dpl, #0xc0
      000574 12 01 08         [24] 1564 	lcall	_lcd_cmd
                                   1565 ;	main.c:364: lcd_string("Release to exit");
      000577 90 0E 3B         [24] 1566 	mov	dptr,#___str_1
      00057A 75 F0 80         [24] 1567 	mov	b, #0x80
                                   1568 ;	main.c:365: return;
      00057D 02 01 20         [24] 1569 	ljmp	_lcd_string
      000580                       1570 00102$:
                                   1571 ;	main.c:368: lcd_clear();
      000580 12 01 63         [24] 1572 	lcall	_lcd_clear
                                   1573 ;	main.c:369: lcd_cmd(0x80);
      000583 75 82 80         [24] 1574 	mov	dpl, #0x80
      000586 12 01 08         [24] 1575 	lcall	_lcd_cmd
                                   1576 ;	main.c:370: lcd_string("Total Events: ");
      000589 90 0E 4B         [24] 1577 	mov	dptr,#___str_2
      00058C 75 F0 80         [24] 1578 	mov	b, #0x80
      00058F 12 01 20         [24] 1579 	lcall	_lcd_string
                                   1580 ;	main.c:371: lcd_data((count/10)+'0');
      000592 AD 29            [24] 1581 	mov	r5,_display_events_count_10000_80
      000594 7E 00            [12] 1582 	mov	r6,#0x00
      000596 8D 04            [24] 1583 	mov	ar4,r5
      000598 75 F0 0A         [24] 1584 	mov	b,#0x0a
      00059B EC               [12] 1585 	mov	a,r4
      00059C 84               [48] 1586 	div	ab
      00059D 24 30            [12] 1587 	add	a,#0x30
      00059F F5 82            [12] 1588 	mov	dpl,a
      0005A1 C0 06            [24] 1589 	push	ar6
      0005A3 C0 05            [24] 1590 	push	ar5
      0005A5 12 01 14         [24] 1591 	lcall	_lcd_data
      0005A8 D0 05            [24] 1592 	pop	ar5
                                   1593 ;	main.c:372: lcd_data((count%10)+'0');
      0005AA 8D 04            [24] 1594 	mov	ar4,r5
      0005AC 75 F0 0A         [24] 1595 	mov	b,#0x0a
      0005AF EC               [12] 1596 	mov	a,r4
      0005B0 84               [48] 1597 	div	ab
      0005B1 AC F0            [24] 1598 	mov	r4,b
      0005B3 74 30            [12] 1599 	mov	a,#0x30
      0005B5 2C               [12] 1600 	add	a, r4
      0005B6 F5 82            [12] 1601 	mov	dpl,a
      0005B8 C0 05            [24] 1602 	push	ar5
      0005BA 12 01 14         [24] 1603 	lcall	_lcd_data
                                   1604 ;	main.c:373: lcd_cmd(0xC0);
      0005BD 75 82 C0         [24] 1605 	mov	dpl, #0xc0
      0005C0 12 01 08         [24] 1606 	lcall	_lcd_cmd
                                   1607 ;	main.c:374: lcd_string("Hold to view logs");
      0005C3 90 0E 5A         [24] 1608 	mov	dptr,#___str_3
      0005C6 75 F0 80         [24] 1609 	mov	b, #0x80
      0005C9 12 01 20         [24] 1610 	lcall	_lcd_string
      0005CC D0 05            [24] 1611 	pop	ar5
      0005CE D0 06            [24] 1612 	pop	ar6
                                   1613 ;	main.c:377: if(BTN_VIEW == 1)
      0005D0 30 B3 01         [24] 1614 	jnb	_BTN_VIEW,00104$
                                   1615 ;	main.c:378: return;
      0005D3 22               [24] 1616 	ret
      0005D4                       1617 00104$:
                                   1618 ;	main.c:380: idx = 0;
      0005D4 75 31 00         [24] 1619 	mov	_display_events_idx_10000_80,#0x00
                                   1620 ;	main.c:381: display_events_active = 1;
      0005D7 75 14 01         [24] 1621 	mov	_display_events_active,#0x01
                                   1622 ;	main.c:383: while(display_events_active)
      0005DA 1D               [12] 1623 	dec	r5
      0005DB BD FF 01         [24] 1624 	cjne	r5,#0xff,00204$
      0005DE 1E               [12] 1625 	dec	r6
      0005DF                       1626 00204$:
      0005DF                       1627 00120$:
      0005DF E5 14            [12] 1628 	mov	a,_display_events_active
      0005E1 70 01            [24] 1629 	jnz	00205$
      0005E3 22               [24] 1630 	ret
      0005E4                       1631 00205$:
                                   1632 ;	main.c:385: if(BTN_VIEW == 1)
      0005E4 30 B3 04         [24] 1633 	jnb	_BTN_VIEW,00106$
                                   1634 ;	main.c:387: display_events_active = 0;
      0005E7 75 14 00         [24] 1635 	mov	_display_events_active,#0x00
                                   1636 ;	main.c:388: break;
      0005EA 22               [24] 1637 	ret
      0005EB                       1638 00106$:
                                   1639 ;	main.c:391: addr = 0x0010 + ((count - 1 - idx) * 8);
      0005EB AA 31            [24] 1640 	mov	r2,_display_events_idx_10000_80
      0005ED 7B 00            [12] 1641 	mov	r3,#0x00
      0005EF ED               [12] 1642 	mov	a,r5
      0005F0 C3               [12] 1643 	clr	c
      0005F1 9A               [12] 1644 	subb	a,r2
      0005F2 F8               [12] 1645 	mov	r0,a
      0005F3 EE               [12] 1646 	mov	a,r6
      0005F4 9B               [12] 1647 	subb	a,r3
      0005F5 C4               [12] 1648 	swap	a
      0005F6 03               [12] 1649 	rr	a
      0005F7 54 F8            [12] 1650 	anl	a,#0xf8
      0005F9 C8               [12] 1651 	xch	a,r0
      0005FA C4               [12] 1652 	swap	a
      0005FB 03               [12] 1653 	rr	a
      0005FC C8               [12] 1654 	xch	a,r0
      0005FD 68               [12] 1655 	xrl	a,r0
      0005FE C8               [12] 1656 	xch	a,r0
      0005FF 54 F8            [12] 1657 	anl	a,#0xf8
      000601 C8               [12] 1658 	xch	a,r0
      000602 68               [12] 1659 	xrl	a,r0
      000603 F9               [12] 1660 	mov	r1,a
      000604 74 10            [12] 1661 	mov	a,#0x10
      000606 28               [12] 1662 	add	a, r0
      000607 F5 2D            [12] 1663 	mov	_display_events_addr_10000_80,a
      000609 E4               [12] 1664 	clr	a
      00060A 39               [12] 1665 	addc	a, r1
      00060B F5 2E            [12] 1666 	mov	(_display_events_addr_10000_80 + 1),a
                                   1667 ;	main.c:392: temp = (eeprom_read_byte(addr + 1) << 8) | eeprom_read_byte(addr);
      00060D 85 2D 82         [24] 1668 	mov	dpl,_display_events_addr_10000_80
      000610 85 2E 83         [24] 1669 	mov	dph,(_display_events_addr_10000_80 + 1)
      000613 A3               [24] 1670 	inc	dptr
      000614 C0 06            [24] 1671 	push	ar6
      000616 C0 05            [24] 1672 	push	ar5
      000618 C0 03            [24] 1673 	push	ar3
      00061A C0 02            [24] 1674 	push	ar2
      00061C 12 02 9D         [24] 1675 	lcall	_eeprom_read_byte
      00061F AF 82            [24] 1676 	mov	r7, dpl
      000621 D0 02            [24] 1677 	pop	ar2
      000623 D0 03            [24] 1678 	pop	ar3
      000625 D0 05            [24] 1679 	pop	ar5
      000627 D0 06            [24] 1680 	pop	ar6
      000629 8F 04            [24] 1681 	mov	ar4,r7
      00062B 8C 07            [24] 1682 	mov	ar7,r4
      00062D 7C 00            [12] 1683 	mov	r4,#0x00
      00062F 85 2D 82         [24] 1684 	mov	dpl, _display_events_addr_10000_80
      000632 85 2E 83         [24] 1685 	mov	dph, (_display_events_addr_10000_80 + 1)
      000635 C0 07            [24] 1686 	push	ar7
      000637 C0 06            [24] 1687 	push	ar6
      000639 C0 05            [24] 1688 	push	ar5
      00063B C0 04            [24] 1689 	push	ar4
      00063D C0 03            [24] 1690 	push	ar3
      00063F C0 02            [24] 1691 	push	ar2
      000641 12 02 9D         [24] 1692 	lcall	_eeprom_read_byte
      000644 A9 82            [24] 1693 	mov	r1, dpl
      000646 D0 02            [24] 1694 	pop	ar2
      000648 D0 03            [24] 1695 	pop	ar3
      00064A D0 04            [24] 1696 	pop	ar4
      00064C D0 05            [24] 1697 	pop	ar5
      00064E D0 06            [24] 1698 	pop	ar6
      000650 D0 07            [24] 1699 	pop	ar7
      000652 89 00            [24] 1700 	mov	ar0,r1
      000654 79 00            [12] 1701 	mov	r1,#0x00
      000656 E8               [12] 1702 	mov	a,r0
      000657 4C               [12] 1703 	orl	a,r4
      000658 F5 2F            [12] 1704 	mov	_display_events_temp_10000_80,a
      00065A E9               [12] 1705 	mov	a,r1
      00065B 4F               [12] 1706 	orl	a,r7
      00065C F5 30            [12] 1707 	mov	(_display_events_temp_10000_80 + 1),a
                                   1708 ;	main.c:393: state = eeprom_read_byte(addr + 2);
      00065E 85 2D 82         [24] 1709 	mov	dpl,_display_events_addr_10000_80
      000661 85 2E 83         [24] 1710 	mov	dph,(_display_events_addr_10000_80 + 1)
      000664 A3               [24] 1711 	inc	dptr
      000665 A3               [24] 1712 	inc	dptr
      000666 C0 06            [24] 1713 	push	ar6
      000668 C0 05            [24] 1714 	push	ar5
      00066A C0 03            [24] 1715 	push	ar3
      00066C C0 02            [24] 1716 	push	ar2
      00066E 12 02 9D         [24] 1717 	lcall	_eeprom_read_byte
      000671 A9 82            [24] 1718 	mov	r1, dpl
      000673 D0 02            [24] 1719 	pop	ar2
      000675 D0 03            [24] 1720 	pop	ar3
      000677 D0 05            [24] 1721 	pop	ar5
      000679 D0 06            [24] 1722 	pop	ar6
                                   1723 ;	main.c:394: s = eeprom_read_byte(addr + 3);
      00067B 85 2D 82         [24] 1724 	mov	dpl,_display_events_addr_10000_80
      00067E 85 2E 83         [24] 1725 	mov	dph,(_display_events_addr_10000_80 + 1)
      000681 A3               [24] 1726 	inc	dptr
      000682 A3               [24] 1727 	inc	dptr
      000683 A3               [24] 1728 	inc	dptr
      000684 C0 06            [24] 1729 	push	ar6
      000686 C0 05            [24] 1730 	push	ar5
      000688 C0 03            [24] 1731 	push	ar3
      00068A C0 02            [24] 1732 	push	ar2
      00068C C0 01            [24] 1733 	push	ar1
      00068E 12 02 9D         [24] 1734 	lcall	_eeprom_read_byte
      000691 D0 01            [24] 1735 	pop	ar1
      000693 D0 02            [24] 1736 	pop	ar2
      000695 D0 03            [24] 1737 	pop	ar3
      000697 D0 05            [24] 1738 	pop	ar5
      000699 D0 06            [24] 1739 	pop	ar6
                                   1740 ;	main.c:395: m = eeprom_read_byte(addr + 4);
      00069B 85 2D 82         [24] 1741 	mov	dpl,_display_events_addr_10000_80
      00069E 85 2E 83         [24] 1742 	mov	dph,(_display_events_addr_10000_80 + 1)
      0006A1 A3               [24] 1743 	inc	dptr
      0006A2 A3               [24] 1744 	inc	dptr
      0006A3 A3               [24] 1745 	inc	dptr
      0006A4 A3               [24] 1746 	inc	dptr
      0006A5 C0 06            [24] 1747 	push	ar6
      0006A7 C0 05            [24] 1748 	push	ar5
      0006A9 C0 03            [24] 1749 	push	ar3
      0006AB C0 02            [24] 1750 	push	ar2
      0006AD C0 01            [24] 1751 	push	ar1
      0006AF 12 02 9D         [24] 1752 	lcall	_eeprom_read_byte
      0006B2 85 82 2A         [24] 1753 	mov	_display_events_m_10000_80,dpl
      0006B5 D0 01            [24] 1754 	pop	ar1
      0006B7 D0 02            [24] 1755 	pop	ar2
      0006B9 D0 03            [24] 1756 	pop	ar3
      0006BB D0 05            [24] 1757 	pop	ar5
      0006BD D0 06            [24] 1758 	pop	ar6
                                   1759 ;	main.c:396: h = eeprom_read_byte(addr + 5);
      0006BF 85 2D 82         [24] 1760 	mov	dpl,_display_events_addr_10000_80
      0006C2 85 2E 83         [24] 1761 	mov	dph,(_display_events_addr_10000_80 + 1)
      0006C5 A3               [24] 1762 	inc	dptr
      0006C6 A3               [24] 1763 	inc	dptr
      0006C7 A3               [24] 1764 	inc	dptr
      0006C8 A3               [24] 1765 	inc	dptr
      0006C9 A3               [24] 1766 	inc	dptr
      0006CA C0 06            [24] 1767 	push	ar6
      0006CC C0 05            [24] 1768 	push	ar5
      0006CE C0 03            [24] 1769 	push	ar3
      0006D0 C0 02            [24] 1770 	push	ar2
      0006D2 C0 01            [24] 1771 	push	ar1
      0006D4 12 02 9D         [24] 1772 	lcall	_eeprom_read_byte
      0006D7 85 82 2B         [24] 1773 	mov	_display_events_h_10000_80,dpl
      0006DA D0 01            [24] 1774 	pop	ar1
      0006DC D0 02            [24] 1775 	pop	ar2
      0006DE D0 03            [24] 1776 	pop	ar3
      0006E0 D0 05            [24] 1777 	pop	ar5
      0006E2 D0 06            [24] 1778 	pop	ar6
                                   1779 ;	main.c:397: d = eeprom_read_byte(addr + 6);
      0006E4 85 2D 82         [24] 1780 	mov	dpl,_display_events_addr_10000_80
      0006E7 85 2E 83         [24] 1781 	mov	dph,(_display_events_addr_10000_80 + 1)
      0006EA A3               [24] 1782 	inc	dptr
      0006EB A3               [24] 1783 	inc	dptr
      0006EC A3               [24] 1784 	inc	dptr
      0006ED A3               [24] 1785 	inc	dptr
      0006EE A3               [24] 1786 	inc	dptr
      0006EF A3               [24] 1787 	inc	dptr
      0006F0 C0 06            [24] 1788 	push	ar6
      0006F2 C0 05            [24] 1789 	push	ar5
      0006F4 C0 03            [24] 1790 	push	ar3
      0006F6 C0 02            [24] 1791 	push	ar2
      0006F8 C0 01            [24] 1792 	push	ar1
      0006FA 12 02 9D         [24] 1793 	lcall	_eeprom_read_byte
      0006FD 85 82 2C         [24] 1794 	mov	_display_events_d_10000_80,dpl
      000700 D0 01            [24] 1795 	pop	ar1
      000702 D0 02            [24] 1796 	pop	ar2
      000704 D0 03            [24] 1797 	pop	ar3
      000706 D0 05            [24] 1798 	pop	ar5
      000708 D0 06            [24] 1799 	pop	ar6
                                   1800 ;	main.c:398: mo = eeprom_read_byte(addr + 7);
      00070A 85 2D 82         [24] 1801 	mov	dpl,_display_events_addr_10000_80
      00070D 85 2E 83         [24] 1802 	mov	dph,(_display_events_addr_10000_80 + 1)
      000710 A3               [24] 1803 	inc	dptr
      000711 A3               [24] 1804 	inc	dptr
      000712 A3               [24] 1805 	inc	dptr
      000713 A3               [24] 1806 	inc	dptr
      000714 A3               [24] 1807 	inc	dptr
      000715 A3               [24] 1808 	inc	dptr
      000716 A3               [24] 1809 	inc	dptr
      000717 C0 06            [24] 1810 	push	ar6
      000719 C0 05            [24] 1811 	push	ar5
      00071B C0 03            [24] 1812 	push	ar3
      00071D C0 02            [24] 1813 	push	ar2
      00071F C0 01            [24] 1814 	push	ar1
      000721 12 02 9D         [24] 1815 	lcall	_eeprom_read_byte
                                   1816 ;	main.c:400: lcd_clear();
      000724 12 01 63         [24] 1817 	lcall	_lcd_clear
                                   1818 ;	main.c:402: lcd_cmd(0x80);
      000727 75 82 80         [24] 1819 	mov	dpl, #0x80
      00072A 12 01 08         [24] 1820 	lcall	_lcd_cmd
                                   1821 ;	main.c:403: lcd_string("#");
      00072D 90 0E 6C         [24] 1822 	mov	dptr,#___str_4
      000730 75 F0 80         [24] 1823 	mov	b, #0x80
      000733 12 01 20         [24] 1824 	lcall	_lcd_string
      000736 D0 01            [24] 1825 	pop	ar1
      000738 D0 02            [24] 1826 	pop	ar2
      00073A D0 03            [24] 1827 	pop	ar3
      00073C D0 05            [24] 1828 	pop	ar5
      00073E D0 06            [24] 1829 	pop	ar6
                                   1830 ;	main.c:404: lcd_data((idx+1)/10+'0');
      000740 0A               [12] 1831 	inc	r2
      000741 BA 00 01         [24] 1832 	cjne	r2,#0x00,00207$
      000744 0B               [12] 1833 	inc	r3
      000745                       1834 00207$:
      000745 75 3B 0A         [24] 1835 	mov	__divsint_PARM_2,#0x0a
      000748 75 3C 00         [24] 1836 	mov	(__divsint_PARM_2 + 1),#0x00
      00074B 8A 82            [24] 1837 	mov	dpl, r2
      00074D 8B 83            [24] 1838 	mov	dph, r3
      00074F C0 06            [24] 1839 	push	ar6
      000751 C0 05            [24] 1840 	push	ar5
      000753 C0 03            [24] 1841 	push	ar3
      000755 C0 02            [24] 1842 	push	ar2
      000757 C0 01            [24] 1843 	push	ar1
      000759 12 0D EE         [24] 1844 	lcall	__divsint
      00075C A8 82            [24] 1845 	mov	r0, dpl
      00075E 74 30            [12] 1846 	mov	a,#0x30
      000760 28               [12] 1847 	add	a, r0
      000761 F5 82            [12] 1848 	mov	dpl,a
      000763 12 01 14         [24] 1849 	lcall	_lcd_data
      000766 D0 01            [24] 1850 	pop	ar1
      000768 D0 02            [24] 1851 	pop	ar2
      00076A D0 03            [24] 1852 	pop	ar3
                                   1853 ;	main.c:405: lcd_data((idx+1)%10+'0');
      00076C 75 3B 0A         [24] 1854 	mov	__modsint_PARM_2,#0x0a
      00076F 75 3C 00         [24] 1855 	mov	(__modsint_PARM_2 + 1),#0x00
      000772 8A 82            [24] 1856 	mov	dpl, r2
      000774 8B 83            [24] 1857 	mov	dph, r3
      000776 C0 01            [24] 1858 	push	ar1
      000778 12 0D B8         [24] 1859 	lcall	__modsint
      00077B AC 82            [24] 1860 	mov	r4, dpl
      00077D 74 30            [12] 1861 	mov	a,#0x30
      00077F 2C               [12] 1862 	add	a, r4
      000780 F5 82            [12] 1863 	mov	dpl,a
      000782 12 01 14         [24] 1864 	lcall	_lcd_data
                                   1865 ;	main.c:406: lcd_string(": ");
      000785 90 0E 6E         [24] 1866 	mov	dptr,#___str_5
      000788 75 F0 80         [24] 1867 	mov	b, #0x80
      00078B 12 01 20         [24] 1868 	lcall	_lcd_string
      00078E D0 01            [24] 1869 	pop	ar1
      000790 D0 05            [24] 1870 	pop	ar5
      000792 D0 06            [24] 1871 	pop	ar6
                                   1872 ;	main.c:407: display_temperature(temp);
      000794 85 2F 82         [24] 1873 	mov	dpl, _display_events_temp_10000_80
      000797 85 30 83         [24] 1874 	mov	dph, (_display_events_temp_10000_80 + 1)
      00079A C0 06            [24] 1875 	push	ar6
      00079C C0 05            [24] 1876 	push	ar5
      00079E C0 01            [24] 1877 	push	ar1
      0007A0 12 01 69         [24] 1878 	lcall	_display_temperature
                                   1879 ;	main.c:408: lcd_data(223);
      0007A3 75 82 DF         [24] 1880 	mov	dpl, #0xdf
      0007A6 12 01 14         [24] 1881 	lcall	_lcd_data
                                   1882 ;	main.c:409: lcd_data('C');
      0007A9 75 82 43         [24] 1883 	mov	dpl, #0x43
      0007AC 12 01 14         [24] 1884 	lcall	_lcd_data
                                   1885 ;	main.c:411: lcd_cmd(0xC0);
      0007AF 75 82 C0         [24] 1886 	mov	dpl, #0xc0
      0007B2 12 01 08         [24] 1887 	lcall	_lcd_cmd
      0007B5 D0 01            [24] 1888 	pop	ar1
      0007B7 D0 05            [24] 1889 	pop	ar5
      0007B9 D0 06            [24] 1890 	pop	ar6
                                   1891 ;	main.c:412: if(state == 0) lcd_string("SAFE");
      0007BB E9               [12] 1892 	mov	a,r1
      0007BC 70 13            [24] 1893 	jnz	00111$
      0007BE 90 0E 71         [24] 1894 	mov	dptr,#___str_6
      0007C1 75 F0 80         [24] 1895 	mov	b, #0x80
      0007C4 C0 06            [24] 1896 	push	ar6
      0007C6 C0 05            [24] 1897 	push	ar5
      0007C8 12 01 20         [24] 1898 	lcall	_lcd_string
      0007CB D0 05            [24] 1899 	pop	ar5
      0007CD D0 06            [24] 1900 	pop	ar6
      0007CF 80 27            [24] 1901 	sjmp	00112$
      0007D1                       1902 00111$:
                                   1903 ;	main.c:413: else if(state == 1) lcd_string("WARNING");
      0007D1 B9 01 13         [24] 1904 	cjne	r1,#0x01,00108$
      0007D4 90 0E 76         [24] 1905 	mov	dptr,#___str_7
      0007D7 75 F0 80         [24] 1906 	mov	b, #0x80
      0007DA C0 06            [24] 1907 	push	ar6
      0007DC C0 05            [24] 1908 	push	ar5
      0007DE 12 01 20         [24] 1909 	lcall	_lcd_string
      0007E1 D0 05            [24] 1910 	pop	ar5
      0007E3 D0 06            [24] 1911 	pop	ar6
      0007E5 80 11            [24] 1912 	sjmp	00112$
      0007E7                       1913 00108$:
                                   1914 ;	main.c:414: else lcd_string("SHUTDOWN");
      0007E7 90 0E 7E         [24] 1915 	mov	dptr,#___str_8
      0007EA 75 F0 80         [24] 1916 	mov	b, #0x80
      0007ED C0 06            [24] 1917 	push	ar6
      0007EF C0 05            [24] 1918 	push	ar5
      0007F1 12 01 20         [24] 1919 	lcall	_lcd_string
      0007F4 D0 05            [24] 1920 	pop	ar5
      0007F6 D0 06            [24] 1921 	pop	ar6
      0007F8                       1922 00112$:
                                   1923 ;	main.c:416: lcd_string(" ");
      0007F8 90 0E 87         [24] 1924 	mov	dptr,#___str_9
      0007FB 75 F0 80         [24] 1925 	mov	b, #0x80
      0007FE C0 06            [24] 1926 	push	ar6
      000800 C0 05            [24] 1927 	push	ar5
      000802 12 01 20         [24] 1928 	lcall	_lcd_string
      000805 D0 05            [24] 1929 	pop	ar5
      000807 D0 06            [24] 1930 	pop	ar6
                                   1931 ;	main.c:417: lcd_data((h/10)+'0');
      000809 A8 2B            [24] 1932 	mov	r0,_display_events_h_10000_80
      00080B 88 07            [24] 1933 	mov	ar7,r0
      00080D 75 F0 0A         [24] 1934 	mov	b,#0x0a
      000810 EF               [12] 1935 	mov	a,r7
      000811 84               [48] 1936 	div	ab
      000812 24 30            [12] 1937 	add	a,#0x30
      000814 F5 82            [12] 1938 	mov	dpl,a
      000816 C0 06            [24] 1939 	push	ar6
      000818 C0 05            [24] 1940 	push	ar5
      00081A C0 00            [24] 1941 	push	ar0
      00081C 12 01 14         [24] 1942 	lcall	_lcd_data
      00081F D0 00            [24] 1943 	pop	ar0
                                   1944 ;	main.c:418: lcd_data((h%10)+'0');
      000821 75 F0 0A         [24] 1945 	mov	b,#0x0a
      000824 E8               [12] 1946 	mov	a,r0
      000825 84               [48] 1947 	div	ab
      000826 A8 F0            [24] 1948 	mov	r0,b
      000828 74 30            [12] 1949 	mov	a,#0x30
      00082A 28               [12] 1950 	add	a, r0
      00082B F5 82            [12] 1951 	mov	dpl,a
      00082D 12 01 14         [24] 1952 	lcall	_lcd_data
                                   1953 ;	main.c:419: lcd_data(':');
      000830 75 82 3A         [24] 1954 	mov	dpl, #0x3a
      000833 12 01 14         [24] 1955 	lcall	_lcd_data
      000836 D0 05            [24] 1956 	pop	ar5
      000838 D0 06            [24] 1957 	pop	ar6
                                   1958 ;	main.c:420: lcd_data((m/10)+'0');
      00083A A8 2A            [24] 1959 	mov	r0,_display_events_m_10000_80
      00083C 88 07            [24] 1960 	mov	ar7,r0
      00083E 75 F0 0A         [24] 1961 	mov	b,#0x0a
      000841 EF               [12] 1962 	mov	a,r7
      000842 84               [48] 1963 	div	ab
      000843 24 30            [12] 1964 	add	a,#0x30
      000845 F5 82            [12] 1965 	mov	dpl,a
      000847 C0 06            [24] 1966 	push	ar6
      000849 C0 05            [24] 1967 	push	ar5
      00084B C0 00            [24] 1968 	push	ar0
      00084D 12 01 14         [24] 1969 	lcall	_lcd_data
      000850 D0 00            [24] 1970 	pop	ar0
                                   1971 ;	main.c:421: lcd_data((m%10)+'0');
      000852 75 F0 0A         [24] 1972 	mov	b,#0x0a
      000855 E8               [12] 1973 	mov	a,r0
      000856 84               [48] 1974 	div	ab
      000857 A8 F0            [24] 1975 	mov	r0,b
      000859 74 30            [12] 1976 	mov	a,#0x30
      00085B 28               [12] 1977 	add	a, r0
      00085C F5 82            [12] 1978 	mov	dpl,a
      00085E 12 01 14         [24] 1979 	lcall	_lcd_data
                                   1980 ;	main.c:422: lcd_data('/');
      000861 75 82 2F         [24] 1981 	mov	dpl, #0x2f
      000864 12 01 14         [24] 1982 	lcall	_lcd_data
      000867 D0 05            [24] 1983 	pop	ar5
      000869 D0 06            [24] 1984 	pop	ar6
                                   1985 ;	main.c:423: lcd_data((d/10)+'0');
      00086B A8 2C            [24] 1986 	mov	r0,_display_events_d_10000_80
      00086D 88 07            [24] 1987 	mov	ar7,r0
      00086F 75 F0 0A         [24] 1988 	mov	b,#0x0a
      000872 EF               [12] 1989 	mov	a,r7
      000873 84               [48] 1990 	div	ab
      000874 24 30            [12] 1991 	add	a,#0x30
      000876 F5 82            [12] 1992 	mov	dpl,a
      000878 C0 06            [24] 1993 	push	ar6
      00087A C0 05            [24] 1994 	push	ar5
      00087C C0 00            [24] 1995 	push	ar0
      00087E 12 01 14         [24] 1996 	lcall	_lcd_data
      000881 D0 00            [24] 1997 	pop	ar0
                                   1998 ;	main.c:424: lcd_data((d%10)+'0');
      000883 75 F0 0A         [24] 1999 	mov	b,#0x0a
      000886 E8               [12] 2000 	mov	a,r0
      000887 84               [48] 2001 	div	ab
      000888 A8 F0            [24] 2002 	mov	r0,b
      00088A 74 30            [12] 2003 	mov	a,#0x30
      00088C 28               [12] 2004 	add	a, r0
      00088D F5 82            [12] 2005 	mov	dpl,a
      00088F 12 01 14         [24] 2006 	lcall	_lcd_data
      000892 D0 05            [24] 2007 	pop	ar5
      000894 D0 06            [24] 2008 	pop	ar6
                                   2009 ;	main.c:427: while(timer < LOG_DISPLAY_TIME)
      000896 7C 00            [12] 2010 	mov	r4,#0x00
      000898 7F 00            [12] 2011 	mov	r7,#0x00
      00089A                       2012 00115$:
      00089A C3               [12] 2013 	clr	c
      00089B EC               [12] 2014 	mov	a,r4
      00089C 94 B8            [12] 2015 	subb	a,#0xb8
      00089E EF               [12] 2016 	mov	a,r7
      00089F 94 0B            [12] 2017 	subb	a,#0x0b
      0008A1 50 0D            [24] 2018 	jnc	00117$
                                   2019 ;	main.c:430: timer += 10;
      0008A3 74 0A            [12] 2020 	mov	a,#0x0a
      0008A5 2C               [12] 2021 	add	a, r4
      0008A6 FC               [12] 2022 	mov	r4,a
      0008A7 E4               [12] 2023 	clr	a
      0008A8 3F               [12] 2024 	addc	a, r7
      0008A9 FF               [12] 2025 	mov	r7,a
                                   2026 ;	main.c:432: if(BTN_VIEW == 1)
      0008AA 30 B3 ED         [24] 2027 	jnb	_BTN_VIEW,00115$
                                   2028 ;	main.c:434: display_events_active = 0;
      0008AD 75 14 00         [24] 2029 	mov	_display_events_active,#0x00
                                   2030 ;	main.c:435: break;
      0008B0                       2031 00117$:
                                   2032 ;	main.c:439: idx++;
      0008B0 05 31            [12] 2033 	inc	_display_events_idx_10000_80
                                   2034 ;	main.c:440: if(idx >= count)
      0008B2 C3               [12] 2035 	clr	c
      0008B3 E5 31            [12] 2036 	mov	a,_display_events_idx_10000_80
      0008B5 95 29            [12] 2037 	subb	a,_display_events_count_10000_80
      0008B7 50 03            [24] 2038 	jnc	00213$
      0008B9 02 05 DF         [24] 2039 	ljmp	00120$
      0008BC                       2040 00213$:
                                   2041 ;	main.c:441: idx = 0;
      0008BC 75 31 00         [24] 2042 	mov	_display_events_idx_10000_80,#0x00
                                   2043 ;	main.c:443: }
      0008BF 02 05 DF         [24] 2044 	ljmp	00120$
                                   2045 ;------------------------------------------------------------
                                   2046 ;Allocation info for local variables in function 'check_button'
                                   2047 ;------------------------------------------------------------
                                   2048 ;last_state    Allocated with name '_check_button_last_state_10000_94'
                                   2049 ;hold_counter  Allocated with name '_check_button_hold_counter_10000_94'
                                   2050 ;current_state Allocated to registers r6 
                                   2051 ;------------------------------------------------------------
                                   2052 ;	main.c:449: void check_button(void)
                                   2053 ;	-----------------------------------------
                                   2054 ;	 function check_button
                                   2055 ;	-----------------------------------------
      0008C2                       2056 _check_button:
                                   2057 ;	main.c:455: current_state = BTN_VIEW;
      0008C2 A2 B3            [12] 2058 	mov	c,_BTN_VIEW
      0008C4 E4               [12] 2059 	clr	a
      0008C5 33               [12] 2060 	rlc	a
                                   2061 ;	main.c:457: if(current_state == 0)
      0008C6 FE               [12] 2062 	mov	r6,a
      0008C7 70 78            [24] 2063 	jnz	00109$
                                   2064 ;	main.c:459: if(last_state == 1)
      0008C9 74 01            [12] 2065 	mov	a,#0x01
      0008CB B5 32 08         [24] 2066 	cjne	a,_check_button_last_state_10000_94,00102$
                                   2067 ;	main.c:461: hold_counter = 0;
      0008CE E4               [12] 2068 	clr	a
      0008CF F5 33            [12] 2069 	mov	_check_button_hold_counter_10000_94,a
      0008D1 F5 34            [12] 2070 	mov	(_check_button_hold_counter_10000_94 + 1),a
                                   2071 ;	main.c:462: button_was_pressed = 1;
      0008D3 75 0F 01         [24] 2072 	mov	_button_was_pressed,#0x01
      0008D6                       2073 00102$:
                                   2074 ;	main.c:465: hold_counter++;
      0008D6 05 33            [12] 2075 	inc	_check_button_hold_counter_10000_94
      0008D8 E4               [12] 2076 	clr	a
      0008D9 B5 33 02         [24] 2077 	cjne	a,_check_button_hold_counter_10000_94,00151$
      0008DC 05 34            [12] 2078 	inc	(_check_button_hold_counter_10000_94 + 1)
      0008DE                       2079 00151$:
                                   2080 ;	main.c:467: if(hold_counter >= 30 && current_mode == 0)
      0008DE C3               [12] 2081 	clr	c
      0008DF E5 33            [12] 2082 	mov	a,_check_button_hold_counter_10000_94
      0008E1 94 1E            [12] 2083 	subb	a,#0x1e
      0008E3 E5 34            [12] 2084 	mov	a,(_check_button_hold_counter_10000_94 + 1)
      0008E5 94 00            [12] 2085 	subb	a,#0x00
      0008E7 40 68            [24] 2086 	jc	00110$
      0008E9 E5 0E            [12] 2087 	mov	a,_current_mode
      0008EB 70 64            [24] 2088 	jnz	00110$
                                   2089 ;	main.c:469: current_mode = 1;
      0008ED 75 0E 01         [24] 2090 	mov	_current_mode,#0x01
                                   2091 ;	main.c:470: lcd_clear();
      0008F0 C0 06            [24] 2092 	push	ar6
      0008F2 12 01 63         [24] 2093 	lcall	_lcd_clear
                                   2094 ;	main.c:471: lcd_cmd(0x80);
      0008F5 75 82 80         [24] 2095 	mov	dpl, #0x80
      0008F8 12 01 08         [24] 2096 	lcall	_lcd_cmd
                                   2097 ;	main.c:472: lcd_string("<<< LOGS MODE >>>");
      0008FB 90 0E 89         [24] 2098 	mov	dptr,#___str_10
      0008FE 75 F0 80         [24] 2099 	mov	b, #0x80
      000901 12 01 20         [24] 2100 	lcall	_lcd_string
                                   2101 ;	main.c:473: lcd_cmd(0xC0);
      000904 75 82 C0         [24] 2102 	mov	dpl, #0xc0
      000907 12 01 08         [24] 2103 	lcall	_lcd_cmd
                                   2104 ;	main.c:474: lcd_string("Hold to view logs");
      00090A 90 0E 5A         [24] 2105 	mov	dptr,#___str_3
      00090D 75 F0 80         [24] 2106 	mov	b, #0x80
      000910 12 01 20         [24] 2107 	lcall	_lcd_string
                                   2108 ;	main.c:477: display_events();
      000913 12 05 51         [24] 2109 	lcall	_display_events
                                   2110 ;	main.c:479: current_mode = 0;
      000916 75 0E 00         [24] 2111 	mov	_current_mode,#0x00
                                   2112 ;	main.c:480: lcd_clear();
      000919 12 01 63         [24] 2113 	lcall	_lcd_clear
                                   2114 ;	main.c:481: lcd_cmd(0x80);
      00091C 75 82 80         [24] 2115 	mov	dpl, #0x80
      00091F 12 01 08         [24] 2116 	lcall	_lcd_cmd
                                   2117 ;	main.c:482: lcd_string("<<< MONITORING >>>");
      000922 90 0E 9B         [24] 2118 	mov	dptr,#___str_11
      000925 75 F0 80         [24] 2119 	mov	b, #0x80
      000928 12 01 20         [24] 2120 	lcall	_lcd_string
                                   2121 ;	main.c:483: lcd_cmd(0xC0);
      00092B 75 82 C0         [24] 2122 	mov	dpl, #0xc0
      00092E 12 01 08         [24] 2123 	lcall	_lcd_cmd
                                   2124 ;	main.c:484: lcd_string("Mode");
      000931 90 0E AE         [24] 2125 	mov	dptr,#___str_12
      000934 75 F0 80         [24] 2126 	mov	b, #0x80
      000937 12 01 20         [24] 2127 	lcall	_lcd_string
                                   2128 ;	main.c:486: lcd_clear();
      00093A 12 01 63         [24] 2129 	lcall	_lcd_clear
      00093D D0 06            [24] 2130 	pop	ar6
      00093F 80 10            [24] 2131 	sjmp	00110$
      000941                       2132 00109$:
                                   2133 ;	main.c:491: if(button_was_pressed == 1)
      000941 74 01            [12] 2134 	mov	a,#0x01
      000943 B5 0F 06         [24] 2135 	cjne	a,_button_was_pressed,00107$
                                   2136 ;	main.c:493: button_was_pressed = 0;
      000946 75 0F 00         [24] 2137 	mov	_button_was_pressed,#0x00
                                   2138 ;	main.c:494: display_events_active = 0;
      000949 75 14 00         [24] 2139 	mov	_display_events_active,#0x00
      00094C                       2140 00107$:
                                   2141 ;	main.c:496: hold_counter = 0;
      00094C E4               [12] 2142 	clr	a
      00094D F5 33            [12] 2143 	mov	_check_button_hold_counter_10000_94,a
      00094F F5 34            [12] 2144 	mov	(_check_button_hold_counter_10000_94 + 1),a
      000951                       2145 00110$:
                                   2146 ;	main.c:499: last_state = current_state;
      000951 8E 32            [24] 2147 	mov	_check_button_last_state_10000_94,r6
                                   2148 ;	main.c:500: }
      000953 22               [24] 2149 	ret
                                   2150 ;------------------------------------------------------------
                                   2151 ;Allocation info for local variables in function 'update_lcd'
                                   2152 ;------------------------------------------------------------
                                   2153 ;	main.c:506: void update_lcd(void)
                                   2154 ;	-----------------------------------------
                                   2155 ;	 function update_lcd
                                   2156 ;	-----------------------------------------
      000954                       2157 _update_lcd:
                                   2158 ;	main.c:508: lcd_cmd(0x80);
      000954 75 82 80         [24] 2159 	mov	dpl, #0x80
      000957 12 01 08         [24] 2160 	lcall	_lcd_cmd
                                   2161 ;	main.c:509: lcd_string("TEMP: ");
      00095A 90 0E B3         [24] 2162 	mov	dptr,#___str_13
      00095D 75 F0 80         [24] 2163 	mov	b, #0x80
      000960 12 01 20         [24] 2164 	lcall	_lcd_string
                                   2165 ;	main.c:510: display_temperature(temperature);
      000963 85 08 82         [24] 2166 	mov	dpl, _temperature
      000966 85 09 83         [24] 2167 	mov	dph, (_temperature + 1)
      000969 12 01 69         [24] 2168 	lcall	_display_temperature
                                   2169 ;	main.c:511: lcd_data(223);
      00096C 75 82 DF         [24] 2170 	mov	dpl, #0xdf
      00096F 12 01 14         [24] 2171 	lcall	_lcd_data
                                   2172 ;	main.c:512: lcd_data('C');
      000972 75 82 43         [24] 2173 	mov	dpl, #0x43
      000975 12 01 14         [24] 2174 	lcall	_lcd_data
                                   2175 ;	main.c:513: lcd_string("   ");
      000978 90 0E BA         [24] 2176 	mov	dptr,#___str_14
      00097B 75 F0 80         [24] 2177 	mov	b, #0x80
      00097E 12 01 20         [24] 2178 	lcall	_lcd_string
                                   2179 ;	main.c:515: lcd_cmd(0xC0);
      000981 75 82 C0         [24] 2180 	mov	dpl, #0xc0
      000984 12 01 08         [24] 2181 	lcall	_lcd_cmd
                                   2182 ;	main.c:516: if(system_state == 0)
      000987 E5 0A            [12] 2183 	mov	a,_system_state
      000989 70 09            [24] 2184 	jnz	00105$
                                   2185 ;	main.c:517: lcd_string("STATUS: SAFE     ");
      00098B 90 0E BE         [24] 2186 	mov	dptr,#___str_15
      00098E 75 F0 80         [24] 2187 	mov	b, #0x80
      000991 02 01 20         [24] 2188 	ljmp	_lcd_string
      000994                       2189 00105$:
                                   2190 ;	main.c:518: else if(system_state == 1)
      000994 74 01            [12] 2191 	mov	a,#0x01
      000996 B5 0A 09         [24] 2192 	cjne	a,_system_state,00102$
                                   2193 ;	main.c:519: lcd_string("STATUS: WARNING  ");
      000999 90 0E D0         [24] 2194 	mov	dptr,#___str_16
      00099C 75 F0 80         [24] 2195 	mov	b, #0x80
      00099F 02 01 20         [24] 2196 	ljmp	_lcd_string
      0009A2                       2197 00102$:
                                   2198 ;	main.c:521: lcd_string("STATUS: SHUTDOWN ");
      0009A2 90 0E E2         [24] 2199 	mov	dptr,#___str_17
      0009A5 75 F0 80         [24] 2200 	mov	b, #0x80
                                   2201 ;	main.c:522: }
      0009A8 02 01 20         [24] 2202 	ljmp	_lcd_string
                                   2203 ;------------------------------------------------------------
                                   2204 ;Allocation info for local variables in function 'safe_operation'
                                   2205 ;------------------------------------------------------------
                                   2206 ;	main.c:528: void safe_operation(void)
                                   2207 ;	-----------------------------------------
                                   2208 ;	 function safe_operation
                                   2209 ;	-----------------------------------------
      0009AB                       2210 _safe_operation:
                                   2211 ;	main.c:530: system_state = 0;
      0009AB 75 0A 00         [24] 2212 	mov	_system_state,#0x00
                                   2213 ;	main.c:531: LED = 0;
                                   2214 ;	assignBit
      0009AE C2 A4            [12] 2215 	clr	_LED
                                   2216 ;	main.c:532: BUZZER = 0;
                                   2217 ;	assignBit
      0009B0 C2 A5            [12] 2218 	clr	_BUZZER
                                   2219 ;	main.c:533: RELAY = RELAY_ON;
                                   2220 ;	assignBit
      0009B2 D2 A3            [12] 2221 	setb	_RELAY
                                   2222 ;	main.c:534: }
      0009B4 22               [24] 2223 	ret
                                   2224 ;------------------------------------------------------------
                                   2225 ;Allocation info for local variables in function 'warning_operation'
                                   2226 ;------------------------------------------------------------
                                   2227 ;	main.c:536: void warning_operation(void)
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function warning_operation
                                   2230 ;	-----------------------------------------
      0009B5                       2231 _warning_operation:
                                   2232 ;	main.c:538: system_state = 1;
      0009B5 75 0A 01         [24] 2233 	mov	_system_state,#0x01
                                   2234 ;	main.c:539: RELAY = RELAY_ON;
                                   2235 ;	assignBit
      0009B8 D2 A3            [12] 2236 	setb	_RELAY
                                   2237 ;	main.c:541: blink_timer++;
      0009BA 05 0B            [12] 2238 	inc	_blink_timer
      0009BC E4               [12] 2239 	clr	a
      0009BD B5 0B 02         [24] 2240 	cjne	a,_blink_timer,00113$
      0009C0 05 0C            [12] 2241 	inc	(_blink_timer + 1)
      0009C2                       2242 00113$:
                                   2243 ;	main.c:542: if(blink_timer % 10 < 5)
      0009C2 75 3B 0A         [24] 2244 	mov	__moduint_PARM_2,#0x0a
      0009C5 75 3C 00         [24] 2245 	mov	(__moduint_PARM_2 + 1),#0x00
      0009C8 85 0B 82         [24] 2246 	mov	dpl, _blink_timer
      0009CB 85 0C 83         [24] 2247 	mov	dph, (_blink_timer + 1)
      0009CE 12 0D 4F         [24] 2248 	lcall	__moduint
      0009D1 AE 82            [24] 2249 	mov	r6, dpl
      0009D3 AF 83            [24] 2250 	mov	r7, dph
      0009D5 C3               [12] 2251 	clr	c
      0009D6 EE               [12] 2252 	mov	a,r6
      0009D7 94 05            [12] 2253 	subb	a,#0x05
      0009D9 EF               [12] 2254 	mov	a,r7
      0009DA 94 00            [12] 2255 	subb	a,#0x00
      0009DC 50 05            [24] 2256 	jnc	00102$
                                   2257 ;	main.c:544: LED = 1;
                                   2258 ;	assignBit
      0009DE D2 A4            [12] 2259 	setb	_LED
                                   2260 ;	main.c:545: BUZZER = 1;
                                   2261 ;	assignBit
      0009E0 D2 A5            [12] 2262 	setb	_BUZZER
      0009E2 22               [24] 2263 	ret
      0009E3                       2264 00102$:
                                   2265 ;	main.c:549: LED = 0;
                                   2266 ;	assignBit
      0009E3 C2 A4            [12] 2267 	clr	_LED
                                   2268 ;	main.c:550: BUZZER = 0;
                                   2269 ;	assignBit
      0009E5 C2 A5            [12] 2270 	clr	_BUZZER
                                   2271 ;	main.c:552: }
      0009E7 22               [24] 2272 	ret
                                   2273 ;------------------------------------------------------------
                                   2274 ;Allocation info for local variables in function 'critical_operation'
                                   2275 ;------------------------------------------------------------
                                   2276 ;	main.c:554: void critical_operation(void)
                                   2277 ;	-----------------------------------------
                                   2278 ;	 function critical_operation
                                   2279 ;	-----------------------------------------
      0009E8                       2280 _critical_operation:
                                   2281 ;	main.c:556: system_state = 2;
      0009E8 75 0A 02         [24] 2282 	mov	_system_state,#0x02
                                   2283 ;	main.c:557: RELAY = RELAY_OFF;
                                   2284 ;	assignBit
      0009EB C2 A3            [12] 2285 	clr	_RELAY
                                   2286 ;	main.c:559: blink_timer++;
      0009ED 05 0B            [12] 2287 	inc	_blink_timer
      0009EF E4               [12] 2288 	clr	a
      0009F0 B5 0B 02         [24] 2289 	cjne	a,_blink_timer,00113$
      0009F3 05 0C            [12] 2290 	inc	(_blink_timer + 1)
      0009F5                       2291 00113$:
                                   2292 ;	main.c:560: if(blink_timer % 4 < 2)
      0009F5 74 03            [12] 2293 	mov	a,#0x03
      0009F7 55 0B            [12] 2294 	anl	a,_blink_timer
      0009F9 FE               [12] 2295 	mov	r6,a
      0009FA 7F 00            [12] 2296 	mov	r7,#0x00
      0009FC C3               [12] 2297 	clr	c
      0009FD EE               [12] 2298 	mov	a,r6
      0009FE 94 02            [12] 2299 	subb	a,#0x02
      000A00 EF               [12] 2300 	mov	a,r7
      000A01 94 00            [12] 2301 	subb	a,#0x00
      000A03 50 05            [24] 2302 	jnc	00102$
                                   2303 ;	main.c:562: LED = 1;
                                   2304 ;	assignBit
      000A05 D2 A4            [12] 2305 	setb	_LED
                                   2306 ;	main.c:563: BUZZER = 1;
                                   2307 ;	assignBit
      000A07 D2 A5            [12] 2308 	setb	_BUZZER
      000A09 22               [24] 2309 	ret
      000A0A                       2310 00102$:
                                   2311 ;	main.c:567: LED = 0;
                                   2312 ;	assignBit
      000A0A C2 A4            [12] 2313 	clr	_LED
                                   2314 ;	main.c:568: BUZZER = 0;
                                   2315 ;	assignBit
      000A0C C2 A5            [12] 2316 	clr	_BUZZER
                                   2317 ;	main.c:570: }
      000A0E 22               [24] 2318 	ret
                                   2319 ;------------------------------------------------------------
                                   2320 ;Allocation info for local variables in function 'main'
                                   2321 ;------------------------------------------------------------
                                   2322 ;adc           Allocated to registers 
                                   2323 ;temp          Allocated to registers r4 r5 
                                   2324 ;prev_state    Allocated to registers r7 
                                   2325 ;loop_counter  Allocated to registers r6 
                                   2326 ;hours         Allocated with name '_main_hours_10000_121'
                                   2327 ;minutes       Allocated with name '_main_minutes_10000_121'
                                   2328 ;seconds       Allocated with name '_main_seconds_10000_121'
                                   2329 ;day           Allocated with name '_main_day_10000_121'
                                   2330 ;month         Allocated with name '_main_month_10000_121'
                                   2331 ;year          Allocated with name '_main_year_10000_121'
                                   2332 ;------------------------------------------------------------
                                   2333 ;	main.c:576: void main(void)
                                   2334 ;	-----------------------------------------
                                   2335 ;	 function main
                                   2336 ;	-----------------------------------------
      000A0F                       2337 _main:
                                   2338 ;	main.c:580: unsigned char prev_state = 2;
      000A0F 7F 02            [12] 2339 	mov	r7,#0x02
                                   2340 ;	main.c:581: unsigned int loop_counter = 0;
      000A11 7E 00            [12] 2341 	mov	r6,#0x00
                                   2342 ;	main.c:585: RELAY = RELAY_ON;
                                   2343 ;	assignBit
      000A13 D2 A3            [12] 2344 	setb	_RELAY
                                   2345 ;	main.c:586: LED = 0;
                                   2346 ;	assignBit
      000A15 C2 A4            [12] 2347 	clr	_LED
                                   2348 ;	main.c:587: BUZZER = 0;
                                   2349 ;	assignBit
      000A17 C2 A5            [12] 2350 	clr	_BUZZER
                                   2351 ;	main.c:589: lcd_init();
      000A19 C0 07            [24] 2352 	push	ar7
      000A1B C0 06            [24] 2353 	push	ar6
      000A1D 12 01 4B         [24] 2354 	lcall	_lcd_init
                                   2355 ;	main.c:591: lcd_clear();
      000A20 12 01 63         [24] 2356 	lcall	_lcd_clear
                                   2357 ;	main.c:592: lcd_cmd(0x80);
      000A23 75 82 80         [24] 2358 	mov	dpl, #0x80
      000A26 12 01 08         [24] 2359 	lcall	_lcd_cmd
                                   2360 ;	main.c:593: lcd_string("Overheat System");
      000A29 90 0E F4         [24] 2361 	mov	dptr,#___str_18
      000A2C 75 F0 80         [24] 2362 	mov	b, #0x80
      000A2F 12 01 20         [24] 2363 	lcall	_lcd_string
                                   2364 ;	main.c:594: lcd_cmd(0xC0);
      000A32 75 82 C0         [24] 2365 	mov	dpl, #0xc0
      000A35 12 01 08         [24] 2366 	lcall	_lcd_cmd
                                   2367 ;	main.c:595: lcd_string("v5.0 Ready...");
      000A38 90 0F 04         [24] 2368 	mov	dptr,#___str_19
      000A3B 75 F0 80         [24] 2369 	mov	b, #0x80
      000A3E 12 01 20         [24] 2370 	lcall	_lcd_string
                                   2371 ;	main.c:597: lcd_clear();
      000A41 12 01 63         [24] 2372 	lcall	_lcd_clear
                                   2373 ;	main.c:599: rtc_read_time(&hours, &minutes, &seconds);
      000A44 75 16 36         [24] 2374 	mov	_rtc_read_time_PARM_2,#_main_minutes_10000_121
      000A47 75 17 00         [24] 2375 	mov	(_rtc_read_time_PARM_2 + 1),#0x00
      000A4A 75 18 40         [24] 2376 	mov	(_rtc_read_time_PARM_2 + 2),#0x40
      000A4D 75 19 37         [24] 2377 	mov	_rtc_read_time_PARM_3,#_main_seconds_10000_121
      000A50 75 1A 00         [24] 2378 	mov	(_rtc_read_time_PARM_3 + 1),#0x00
      000A53 75 1B 40         [24] 2379 	mov	(_rtc_read_time_PARM_3 + 2),#0x40
      000A56 90 00 35         [24] 2380 	mov	dptr,#_main_hours_10000_121
      000A59 75 F0 40         [24] 2381 	mov	b, #0x40
      000A5C 12 03 09         [24] 2382 	lcall	_rtc_read_time
                                   2383 ;	main.c:600: rtc_read_date(&day, &month, &year);
      000A5F 75 1C 39         [24] 2384 	mov	_rtc_read_date_PARM_2,#_main_month_10000_121
      000A62 75 1D 00         [24] 2385 	mov	(_rtc_read_date_PARM_2 + 1),#0x00
      000A65 75 1E 40         [24] 2386 	mov	(_rtc_read_date_PARM_2 + 2),#0x40
      000A68 75 1F 3A         [24] 2387 	mov	_rtc_read_date_PARM_3,#_main_year_10000_121
      000A6B 75 20 00         [24] 2388 	mov	(_rtc_read_date_PARM_3 + 1),#0x00
      000A6E 75 21 40         [24] 2389 	mov	(_rtc_read_date_PARM_3 + 2),#0x40
      000A71 90 00 38         [24] 2390 	mov	dptr,#_main_day_10000_121
      000A74 75 F0 40         [24] 2391 	mov	b, #0x40
      000A77 12 03 9F         [24] 2392 	lcall	_rtc_read_date
                                   2393 ;	main.c:602: lcd_cmd(0x80);
      000A7A 75 82 80         [24] 2394 	mov	dpl, #0x80
      000A7D 12 01 08         [24] 2395 	lcall	_lcd_cmd
                                   2396 ;	main.c:603: lcd_string("Time: ");
      000A80 90 0F 12         [24] 2397 	mov	dptr,#___str_20
      000A83 75 F0 80         [24] 2398 	mov	b, #0x80
      000A86 12 01 20         [24] 2399 	lcall	_lcd_string
                                   2400 ;	main.c:604: lcd_data((hours/10)+'0');
      000A89 AD 35            [24] 2401 	mov	r5,_main_hours_10000_121
      000A8B 75 F0 0A         [24] 2402 	mov	b,#0x0a
      000A8E ED               [12] 2403 	mov	a,r5
      000A8F 84               [48] 2404 	div	ab
      000A90 24 30            [12] 2405 	add	a,#0x30
      000A92 F5 82            [12] 2406 	mov	dpl,a
      000A94 12 01 14         [24] 2407 	lcall	_lcd_data
                                   2408 ;	main.c:605: lcd_data((hours%10)+'0');
      000A97 AD 35            [24] 2409 	mov	r5,_main_hours_10000_121
      000A99 75 F0 0A         [24] 2410 	mov	b,#0x0a
      000A9C ED               [12] 2411 	mov	a,r5
      000A9D 84               [48] 2412 	div	ab
      000A9E AD F0            [24] 2413 	mov	r5,b
      000AA0 74 30            [12] 2414 	mov	a,#0x30
      000AA2 2D               [12] 2415 	add	a, r5
      000AA3 F5 82            [12] 2416 	mov	dpl,a
      000AA5 12 01 14         [24] 2417 	lcall	_lcd_data
                                   2418 ;	main.c:606: lcd_data(':');
      000AA8 75 82 3A         [24] 2419 	mov	dpl, #0x3a
      000AAB 12 01 14         [24] 2420 	lcall	_lcd_data
                                   2421 ;	main.c:607: lcd_data((minutes/10)+'0');
      000AAE AD 36            [24] 2422 	mov	r5,_main_minutes_10000_121
      000AB0 75 F0 0A         [24] 2423 	mov	b,#0x0a
      000AB3 ED               [12] 2424 	mov	a,r5
      000AB4 84               [48] 2425 	div	ab
      000AB5 24 30            [12] 2426 	add	a,#0x30
      000AB7 F5 82            [12] 2427 	mov	dpl,a
      000AB9 12 01 14         [24] 2428 	lcall	_lcd_data
                                   2429 ;	main.c:608: lcd_data((minutes%10)+'0');
      000ABC AD 36            [24] 2430 	mov	r5,_main_minutes_10000_121
      000ABE 75 F0 0A         [24] 2431 	mov	b,#0x0a
      000AC1 ED               [12] 2432 	mov	a,r5
      000AC2 84               [48] 2433 	div	ab
      000AC3 AD F0            [24] 2434 	mov	r5,b
      000AC5 74 30            [12] 2435 	mov	a,#0x30
      000AC7 2D               [12] 2436 	add	a, r5
      000AC8 F5 82            [12] 2437 	mov	dpl,a
      000ACA 12 01 14         [24] 2438 	lcall	_lcd_data
                                   2439 ;	main.c:609: lcd_data(':');
      000ACD 75 82 3A         [24] 2440 	mov	dpl, #0x3a
      000AD0 12 01 14         [24] 2441 	lcall	_lcd_data
                                   2442 ;	main.c:610: lcd_data((seconds/10)+'0');
      000AD3 AD 37            [24] 2443 	mov	r5,_main_seconds_10000_121
      000AD5 75 F0 0A         [24] 2444 	mov	b,#0x0a
      000AD8 ED               [12] 2445 	mov	a,r5
      000AD9 84               [48] 2446 	div	ab
      000ADA 24 30            [12] 2447 	add	a,#0x30
      000ADC F5 82            [12] 2448 	mov	dpl,a
      000ADE 12 01 14         [24] 2449 	lcall	_lcd_data
                                   2450 ;	main.c:611: lcd_data((seconds%10)+'0');
      000AE1 AD 37            [24] 2451 	mov	r5,_main_seconds_10000_121
      000AE3 75 F0 0A         [24] 2452 	mov	b,#0x0a
      000AE6 ED               [12] 2453 	mov	a,r5
      000AE7 84               [48] 2454 	div	ab
      000AE8 AD F0            [24] 2455 	mov	r5,b
      000AEA 74 30            [12] 2456 	mov	a,#0x30
      000AEC 2D               [12] 2457 	add	a, r5
      000AED F5 82            [12] 2458 	mov	dpl,a
      000AEF 12 01 14         [24] 2459 	lcall	_lcd_data
                                   2460 ;	main.c:613: lcd_cmd(0xC0);
      000AF2 75 82 C0         [24] 2461 	mov	dpl, #0xc0
      000AF5 12 01 08         [24] 2462 	lcall	_lcd_cmd
                                   2463 ;	main.c:614: lcd_string("Date: ");
      000AF8 90 0F 19         [24] 2464 	mov	dptr,#___str_21
      000AFB 75 F0 80         [24] 2465 	mov	b, #0x80
      000AFE 12 01 20         [24] 2466 	lcall	_lcd_string
                                   2467 ;	main.c:615: lcd_data((day/10)+'0');
      000B01 AD 38            [24] 2468 	mov	r5,_main_day_10000_121
      000B03 75 F0 0A         [24] 2469 	mov	b,#0x0a
      000B06 ED               [12] 2470 	mov	a,r5
      000B07 84               [48] 2471 	div	ab
      000B08 24 30            [12] 2472 	add	a,#0x30
      000B0A F5 82            [12] 2473 	mov	dpl,a
      000B0C 12 01 14         [24] 2474 	lcall	_lcd_data
                                   2475 ;	main.c:616: lcd_data((day%10)+'0');
      000B0F AD 38            [24] 2476 	mov	r5,_main_day_10000_121
      000B11 75 F0 0A         [24] 2477 	mov	b,#0x0a
      000B14 ED               [12] 2478 	mov	a,r5
      000B15 84               [48] 2479 	div	ab
      000B16 AD F0            [24] 2480 	mov	r5,b
      000B18 74 30            [12] 2481 	mov	a,#0x30
      000B1A 2D               [12] 2482 	add	a, r5
      000B1B F5 82            [12] 2483 	mov	dpl,a
      000B1D 12 01 14         [24] 2484 	lcall	_lcd_data
                                   2485 ;	main.c:617: lcd_data('/');
      000B20 75 82 2F         [24] 2486 	mov	dpl, #0x2f
      000B23 12 01 14         [24] 2487 	lcall	_lcd_data
                                   2488 ;	main.c:618: lcd_data((month/10)+'0');
      000B26 AD 39            [24] 2489 	mov	r5,_main_month_10000_121
      000B28 75 F0 0A         [24] 2490 	mov	b,#0x0a
      000B2B ED               [12] 2491 	mov	a,r5
      000B2C 84               [48] 2492 	div	ab
      000B2D 24 30            [12] 2493 	add	a,#0x30
      000B2F F5 82            [12] 2494 	mov	dpl,a
      000B31 12 01 14         [24] 2495 	lcall	_lcd_data
                                   2496 ;	main.c:619: lcd_data((month%10)+'0');
      000B34 AD 39            [24] 2497 	mov	r5,_main_month_10000_121
      000B36 75 F0 0A         [24] 2498 	mov	b,#0x0a
      000B39 ED               [12] 2499 	mov	a,r5
      000B3A 84               [48] 2500 	div	ab
      000B3B AD F0            [24] 2501 	mov	r5,b
      000B3D 74 30            [12] 2502 	mov	a,#0x30
      000B3F 2D               [12] 2503 	add	a, r5
      000B40 F5 82            [12] 2504 	mov	dpl,a
      000B42 12 01 14         [24] 2505 	lcall	_lcd_data
                                   2506 ;	main.c:620: lcd_data('/');
      000B45 75 82 2F         [24] 2507 	mov	dpl, #0x2f
      000B48 12 01 14         [24] 2508 	lcall	_lcd_data
                                   2509 ;	main.c:621: lcd_data((year/10)+'0');
      000B4B AD 3A            [24] 2510 	mov	r5,_main_year_10000_121
      000B4D 75 F0 0A         [24] 2511 	mov	b,#0x0a
      000B50 ED               [12] 2512 	mov	a,r5
      000B51 84               [48] 2513 	div	ab
      000B52 24 30            [12] 2514 	add	a,#0x30
      000B54 F5 82            [12] 2515 	mov	dpl,a
      000B56 12 01 14         [24] 2516 	lcall	_lcd_data
                                   2517 ;	main.c:622: lcd_data((year%10)+'0');
      000B59 AD 3A            [24] 2518 	mov	r5,_main_year_10000_121
      000B5B 75 F0 0A         [24] 2519 	mov	b,#0x0a
      000B5E ED               [12] 2520 	mov	a,r5
      000B5F 84               [48] 2521 	div	ab
      000B60 AD F0            [24] 2522 	mov	r5,b
      000B62 74 30            [12] 2523 	mov	a,#0x30
      000B64 2D               [12] 2524 	add	a, r5
      000B65 F5 82            [12] 2525 	mov	dpl,a
      000B67 12 01 14         [24] 2526 	lcall	_lcd_data
                                   2527 ;	main.c:624: lcd_clear();
      000B6A 12 01 63         [24] 2528 	lcall	_lcd_clear
                                   2529 ;	main.c:626: lcd_cmd(0x80);
      000B6D 75 82 80         [24] 2530 	mov	dpl, #0x80
      000B70 12 01 08         [24] 2531 	lcall	_lcd_cmd
                                   2532 ;	main.c:627: lcd_string("W:");
      000B73 90 0F 20         [24] 2533 	mov	dptr,#___str_22
      000B76 75 F0 80         [24] 2534 	mov	b, #0x80
      000B79 12 01 20         [24] 2535 	lcall	_lcd_string
                                   2536 ;	main.c:628: display_temperature(WARNING_TEMP);
      000B7C 90 00 46         [24] 2537 	mov	dptr,#0x0046
      000B7F 12 01 69         [24] 2538 	lcall	_display_temperature
                                   2539 ;	main.c:629: lcd_data(223);
      000B82 75 82 DF         [24] 2540 	mov	dpl, #0xdf
      000B85 12 01 14         [24] 2541 	lcall	_lcd_data
                                   2542 ;	main.c:630: lcd_data('C');
      000B88 75 82 43         [24] 2543 	mov	dpl, #0x43
      000B8B 12 01 14         [24] 2544 	lcall	_lcd_data
                                   2545 ;	main.c:631: lcd_string(" C:");
      000B8E 90 0F 23         [24] 2546 	mov	dptr,#___str_23
      000B91 75 F0 80         [24] 2547 	mov	b, #0x80
      000B94 12 01 20         [24] 2548 	lcall	_lcd_string
                                   2549 ;	main.c:632: display_temperature(CRITICAL_TEMP);
      000B97 90 00 55         [24] 2550 	mov	dptr,#0x0055
      000B9A 12 01 69         [24] 2551 	lcall	_display_temperature
                                   2552 ;	main.c:633: lcd_data(223);
      000B9D 75 82 DF         [24] 2553 	mov	dpl, #0xdf
      000BA0 12 01 14         [24] 2554 	lcall	_lcd_data
                                   2555 ;	main.c:634: lcd_data('C');
      000BA3 75 82 43         [24] 2556 	mov	dpl, #0x43
      000BA6 12 01 14         [24] 2557 	lcall	_lcd_data
                                   2558 ;	main.c:635: lcd_cmd(0xC0);
      000BA9 75 82 C0         [24] 2559 	mov	dpl, #0xc0
      000BAC 12 01 08         [24] 2560 	lcall	_lcd_cmd
                                   2561 ;	main.c:636: lcd_string("Hold VIEW for logs");
      000BAF 90 0F 27         [24] 2562 	mov	dptr,#___str_24
      000BB2 75 F0 80         [24] 2563 	mov	b, #0x80
      000BB5 12 01 20         [24] 2564 	lcall	_lcd_string
                                   2565 ;	main.c:638: lcd_clear();
      000BB8 12 01 63         [24] 2566 	lcall	_lcd_clear
      000BBB D0 06            [24] 2567 	pop	ar6
      000BBD D0 07            [24] 2568 	pop	ar7
                                   2569 ;	main.c:640: current_mode = 0;
      000BBF 75 0E 00         [24] 2570 	mov	_current_mode,#0x00
                                   2571 ;	main.c:642: while(1)
      000BC2                       2572 00121$:
                                   2573 ;	main.c:644: check_button();
      000BC2 C0 07            [24] 2574 	push	ar7
      000BC4 C0 06            [24] 2575 	push	ar6
      000BC6 12 08 C2         [24] 2576 	lcall	_check_button
      000BC9 D0 06            [24] 2577 	pop	ar6
      000BCB D0 07            [24] 2578 	pop	ar7
                                   2579 ;	main.c:646: if(current_mode == 1)
      000BCD 74 01            [12] 2580 	mov	a,#0x01
      000BCF B5 0E 02         [24] 2581 	cjne	a,_current_mode,00181$
      000BD2 80 EE            [24] 2582 	sjmp	00121$
      000BD4                       2583 00181$:
                                   2584 ;	main.c:649: adc = ADC_Read();
      000BD4 C0 07            [24] 2585 	push	ar7
      000BD6 C0 06            [24] 2586 	push	ar6
      000BD8 12 01 E5         [24] 2587 	lcall	_ADC_Read
      000BDB AD 82            [24] 2588 	mov	r5, dpl
                                   2589 ;	main.c:650: temp = ((unsigned int)adc * 500) / 255;
      000BDD 8D 3B            [24] 2590 	mov	__mulint_PARM_2,r5
      000BDF 75 3C 00         [24] 2591 	mov	(__mulint_PARM_2 + 1),#0x00
      000BE2 90 01 F4         [24] 2592 	mov	dptr,#0x01f4
      000BE5 12 0D 32         [24] 2593 	lcall	__mulint
      000BE8 75 3B FF         [24] 2594 	mov	__divuint_PARM_2,#0xff
      000BEB 75 3C 00         [24] 2595 	mov	(__divuint_PARM_2 + 1),#0x00
                                   2596 ;	main.c:651: temperature = temp;
      000BEE 12 0C EE         [24] 2597 	lcall	__divuint
      000BF1 AC 82            [24] 2598 	mov	r4, dpl
      000BF3 AD 83            [24] 2599 	mov	r5, dph
      000BF5 D0 06            [24] 2600 	pop	ar6
      000BF7 D0 07            [24] 2601 	pop	ar7
      000BF9 8C 08            [24] 2602 	mov	_temperature,r4
      000BFB 8D 09            [24] 2603 	mov	(_temperature + 1),r5
                                   2604 ;	main.c:653: loop_counter++;
      000BFD 0E               [12] 2605 	inc	r6
                                   2606 ;	main.c:654: if(loop_counter >= 10)
      000BFE BE 0A 00         [24] 2607 	cjne	r6,#0x0a,00182$
      000C01                       2608 00182$:
      000C01 40 11            [24] 2609 	jc	00104$
                                   2610 ;	main.c:656: update_lcd();
      000C03 C0 07            [24] 2611 	push	ar7
      000C05 C0 05            [24] 2612 	push	ar5
      000C07 C0 04            [24] 2613 	push	ar4
      000C09 12 09 54         [24] 2614 	lcall	_update_lcd
      000C0C D0 04            [24] 2615 	pop	ar4
      000C0E D0 05            [24] 2616 	pop	ar5
      000C10 D0 07            [24] 2617 	pop	ar7
                                   2618 ;	main.c:657: loop_counter = 0;
      000C12 7E 00            [12] 2619 	mov	r6,#0x00
      000C14                       2620 00104$:
                                   2621 ;	main.c:660: if(temp < WARNING_TEMP)
      000C14 C3               [12] 2622 	clr	c
      000C15 EC               [12] 2623 	mov	a,r4
      000C16 94 46            [12] 2624 	subb	a,#0x46
      000C18 ED               [12] 2625 	mov	a,r5
      000C19 94 00            [12] 2626 	subb	a,#0x00
      000C1B 50 22            [24] 2627 	jnc	00118$
                                   2628 ;	main.c:662: if(prev_state != 0)
      000C1D EF               [12] 2629 	mov	a,r7
      000C1E 60 12            [24] 2630 	jz	00106$
                                   2631 ;	main.c:664: prev_state = 0;
      000C20 7F 00            [12] 2632 	mov	r7,#0x00
                                   2633 ;	main.c:665: safe_operation();
      000C22 C0 07            [24] 2634 	push	ar7
      000C24 C0 06            [24] 2635 	push	ar6
      000C26 12 09 AB         [24] 2636 	lcall	_safe_operation
                                   2637 ;	main.c:666: update_lcd();
      000C29 12 09 54         [24] 2638 	lcall	_update_lcd
      000C2C D0 06            [24] 2639 	pop	ar6
      000C2E D0 07            [24] 2640 	pop	ar7
      000C30 80 90            [24] 2641 	sjmp	00121$
      000C32                       2642 00106$:
                                   2643 ;	main.c:670: safe_operation();
      000C32 C0 07            [24] 2644 	push	ar7
      000C34 C0 06            [24] 2645 	push	ar6
      000C36 12 09 AB         [24] 2646 	lcall	_safe_operation
      000C39 D0 06            [24] 2647 	pop	ar6
      000C3B D0 07            [24] 2648 	pop	ar7
      000C3D 80 83            [24] 2649 	sjmp	00121$
      000C3F                       2650 00118$:
                                   2651 ;	main.c:673: else if(temp < CRITICAL_TEMP)
      000C3F C3               [12] 2652 	clr	c
      000C40 EC               [12] 2653 	mov	a,r4
      000C41 94 55            [12] 2654 	subb	a,#0x55
      000C43 ED               [12] 2655 	mov	a,r5
      000C44 94 00            [12] 2656 	subb	a,#0x00
      000C46 50 26            [24] 2657 	jnc	00115$
                                   2658 ;	main.c:675: if(prev_state != 1)
      000C48 BF 01 02         [24] 2659 	cjne	r7,#0x01,00187$
      000C4B 80 13            [24] 2660 	sjmp	00109$
      000C4D                       2661 00187$:
                                   2662 ;	main.c:677: prev_state = 1;
      000C4D 7F 01            [12] 2663 	mov	r7,#0x01
                                   2664 ;	main.c:678: warning_operation();
      000C4F C0 07            [24] 2665 	push	ar7
      000C51 C0 06            [24] 2666 	push	ar6
      000C53 12 09 B5         [24] 2667 	lcall	_warning_operation
                                   2668 ;	main.c:679: update_lcd();
      000C56 12 09 54         [24] 2669 	lcall	_update_lcd
      000C59 D0 06            [24] 2670 	pop	ar6
      000C5B D0 07            [24] 2671 	pop	ar7
      000C5D 02 0B C2         [24] 2672 	ljmp	00121$
      000C60                       2673 00109$:
                                   2674 ;	main.c:683: warning_operation();
      000C60 C0 07            [24] 2675 	push	ar7
      000C62 C0 06            [24] 2676 	push	ar6
      000C64 12 09 B5         [24] 2677 	lcall	_warning_operation
      000C67 D0 06            [24] 2678 	pop	ar6
      000C69 D0 07            [24] 2679 	pop	ar7
      000C6B 02 0B C2         [24] 2680 	ljmp	00121$
      000C6E                       2681 00115$:
                                   2682 ;	main.c:688: if(prev_state != 2)
      000C6E BF 02 02         [24] 2683 	cjne	r7,#0x02,00188$
      000C71 80 6D            [24] 2684 	sjmp	00112$
      000C73                       2685 00188$:
                                   2686 ;	main.c:690: prev_state = 2;
      000C73 7F 02            [12] 2687 	mov	r7,#0x02
                                   2688 ;	main.c:691: critical_operation();
      000C75 C0 07            [24] 2689 	push	ar7
      000C77 C0 06            [24] 2690 	push	ar6
      000C79 C0 05            [24] 2691 	push	ar5
      000C7B C0 04            [24] 2692 	push	ar4
      000C7D 12 09 E8         [24] 2693 	lcall	_critical_operation
                                   2694 ;	main.c:692: update_lcd();
      000C80 12 09 54         [24] 2695 	lcall	_update_lcd
      000C83 D0 04            [24] 2696 	pop	ar4
      000C85 D0 05            [24] 2697 	pop	ar5
                                   2698 ;	main.c:694: log_event(temp, 2);
      000C87 75 22 02         [24] 2699 	mov	_log_event_PARM_2,#0x02
      000C8A 8C 82            [24] 2700 	mov	dpl, r4
      000C8C 8D 83            [24] 2701 	mov	dph, r5
      000C8E C0 05            [24] 2702 	push	ar5
      000C90 C0 04            [24] 2703 	push	ar4
      000C92 12 04 2F         [24] 2704 	lcall	_log_event
                                   2705 ;	main.c:696: lcd_clear();
      000C95 12 01 63         [24] 2706 	lcall	_lcd_clear
                                   2707 ;	main.c:697: lcd_cmd(0x80);
      000C98 75 82 80         [24] 2708 	mov	dpl, #0x80
      000C9B 12 01 08         [24] 2709 	lcall	_lcd_cmd
                                   2710 ;	main.c:698: lcd_string("EVENT LOGGED!");
      000C9E 90 0F 3A         [24] 2711 	mov	dptr,#___str_25
      000CA1 75 F0 80         [24] 2712 	mov	b, #0x80
      000CA4 12 01 20         [24] 2713 	lcall	_lcd_string
                                   2714 ;	main.c:699: lcd_cmd(0xC0);
      000CA7 75 82 C0         [24] 2715 	mov	dpl, #0xc0
      000CAA 12 01 08         [24] 2716 	lcall	_lcd_cmd
                                   2717 ;	main.c:700: lcd_string("Temp: ");
      000CAD 90 0F 48         [24] 2718 	mov	dptr,#___str_26
      000CB0 75 F0 80         [24] 2719 	mov	b, #0x80
      000CB3 12 01 20         [24] 2720 	lcall	_lcd_string
      000CB6 D0 04            [24] 2721 	pop	ar4
      000CB8 D0 05            [24] 2722 	pop	ar5
                                   2723 ;	main.c:701: display_temperature(temp);
      000CBA 8C 82            [24] 2724 	mov	dpl, r4
      000CBC 8D 83            [24] 2725 	mov	dph, r5
      000CBE 12 01 69         [24] 2726 	lcall	_display_temperature
                                   2727 ;	main.c:702: lcd_data(223);
      000CC1 75 82 DF         [24] 2728 	mov	dpl, #0xdf
      000CC4 12 01 14         [24] 2729 	lcall	_lcd_data
                                   2730 ;	main.c:703: lcd_data('C');
      000CC7 75 82 43         [24] 2731 	mov	dpl, #0x43
      000CCA 12 01 14         [24] 2732 	lcall	_lcd_data
                                   2733 ;	main.c:704: lcd_string(" SHUTDOWN");
      000CCD 90 0F 4F         [24] 2734 	mov	dptr,#___str_27
      000CD0 75 F0 80         [24] 2735 	mov	b, #0x80
      000CD3 12 01 20         [24] 2736 	lcall	_lcd_string
                                   2737 ;	main.c:706: update_lcd();
      000CD6 12 09 54         [24] 2738 	lcall	_update_lcd
      000CD9 D0 06            [24] 2739 	pop	ar6
      000CDB D0 07            [24] 2740 	pop	ar7
      000CDD 02 0B C2         [24] 2741 	ljmp	00121$
      000CE0                       2742 00112$:
                                   2743 ;	main.c:710: critical_operation();
      000CE0 C0 07            [24] 2744 	push	ar7
      000CE2 C0 06            [24] 2745 	push	ar6
      000CE4 12 09 E8         [24] 2746 	lcall	_critical_operation
      000CE7 D0 06            [24] 2747 	pop	ar6
      000CE9 D0 07            [24] 2748 	pop	ar7
                                   2749 ;	main.c:714: delay(10);
                                   2750 ;	main.c:716: }
      000CEB 02 0B C2         [24] 2751 	ljmp	00121$
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area CONST   (CODE)
                                   2754 	.area CONST   (CODE)
      000E2A                       2755 ___str_0:
      000E2A 4E 6F 20 45 76 65 6E  2756 	.ascii "No Events Logged"
             74 73 20 4C 6F 67 67
             65 64
      000E3A 00                    2757 	.db 0x00
                                   2758 	.area CSEG    (CODE)
                                   2759 	.area CONST   (CODE)
      000E3B                       2760 ___str_1:
      000E3B 52 65 6C 65 61 73 65  2761 	.ascii "Release to exit"
             20 74 6F 20 65 78 69
             74
      000E4A 00                    2762 	.db 0x00
                                   2763 	.area CSEG    (CODE)
                                   2764 	.area CONST   (CODE)
      000E4B                       2765 ___str_2:
      000E4B 54 6F 74 61 6C 20 45  2766 	.ascii "Total Events: "
             76 65 6E 74 73 3A 20
      000E59 00                    2767 	.db 0x00
                                   2768 	.area CSEG    (CODE)
                                   2769 	.area CONST   (CODE)
      000E5A                       2770 ___str_3:
      000E5A 48 6F 6C 64 20 74 6F  2771 	.ascii "Hold to view logs"
             20 76 69 65 77 20 6C
             6F 67 73
      000E6B 00                    2772 	.db 0x00
                                   2773 	.area CSEG    (CODE)
                                   2774 	.area CONST   (CODE)
      000E6C                       2775 ___str_4:
      000E6C 23                    2776 	.ascii "#"
      000E6D 00                    2777 	.db 0x00
                                   2778 	.area CSEG    (CODE)
                                   2779 	.area CONST   (CODE)
      000E6E                       2780 ___str_5:
      000E6E 3A 20                 2781 	.ascii ": "
      000E70 00                    2782 	.db 0x00
                                   2783 	.area CSEG    (CODE)
                                   2784 	.area CONST   (CODE)
      000E71                       2785 ___str_6:
      000E71 53 41 46 45           2786 	.ascii "SAFE"
      000E75 00                    2787 	.db 0x00
                                   2788 	.area CSEG    (CODE)
                                   2789 	.area CONST   (CODE)
      000E76                       2790 ___str_7:
      000E76 57 41 52 4E 49 4E 47  2791 	.ascii "WARNING"
      000E7D 00                    2792 	.db 0x00
                                   2793 	.area CSEG    (CODE)
                                   2794 	.area CONST   (CODE)
      000E7E                       2795 ___str_8:
      000E7E 53 48 55 54 44 4F 57  2796 	.ascii "SHUTDOWN"
             4E
      000E86 00                    2797 	.db 0x00
                                   2798 	.area CSEG    (CODE)
                                   2799 	.area CONST   (CODE)
      000E87                       2800 ___str_9:
      000E87 20                    2801 	.ascii " "
      000E88 00                    2802 	.db 0x00
                                   2803 	.area CSEG    (CODE)
                                   2804 	.area CONST   (CODE)
      000E89                       2805 ___str_10:
      000E89 3C 3C 3C 20 4C 4F 47  2806 	.ascii "<<< LOGS MODE >>>"
             53 20 4D 4F 44 45 20
             3E 3E 3E
      000E9A 00                    2807 	.db 0x00
                                   2808 	.area CSEG    (CODE)
                                   2809 	.area CONST   (CODE)
      000E9B                       2810 ___str_11:
      000E9B 3C 3C 3C 20 4D 4F 4E  2811 	.ascii "<<< MONITORING >>>"
             49 54 4F 52 49 4E 47
             20 3E 3E 3E
      000EAD 00                    2812 	.db 0x00
                                   2813 	.area CSEG    (CODE)
                                   2814 	.area CONST   (CODE)
      000EAE                       2815 ___str_12:
      000EAE 4D 6F 64 65           2816 	.ascii "Mode"
      000EB2 00                    2817 	.db 0x00
                                   2818 	.area CSEG    (CODE)
                                   2819 	.area CONST   (CODE)
      000EB3                       2820 ___str_13:
      000EB3 54 45 4D 50 3A 20     2821 	.ascii "TEMP: "
      000EB9 00                    2822 	.db 0x00
                                   2823 	.area CSEG    (CODE)
                                   2824 	.area CONST   (CODE)
      000EBA                       2825 ___str_14:
      000EBA 20 20 20              2826 	.ascii "   "
      000EBD 00                    2827 	.db 0x00
                                   2828 	.area CSEG    (CODE)
                                   2829 	.area CONST   (CODE)
      000EBE                       2830 ___str_15:
      000EBE 53 54 41 54 55 53 3A  2831 	.ascii "STATUS: SAFE     "
             20 53 41 46 45 20 20
             20 20 20
      000ECF 00                    2832 	.db 0x00
                                   2833 	.area CSEG    (CODE)
                                   2834 	.area CONST   (CODE)
      000ED0                       2835 ___str_16:
      000ED0 53 54 41 54 55 53 3A  2836 	.ascii "STATUS: WARNING  "
             20 57 41 52 4E 49 4E
             47 20 20
      000EE1 00                    2837 	.db 0x00
                                   2838 	.area CSEG    (CODE)
                                   2839 	.area CONST   (CODE)
      000EE2                       2840 ___str_17:
      000EE2 53 54 41 54 55 53 3A  2841 	.ascii "STATUS: SHUTDOWN "
             20 53 48 55 54 44 4F
             57 4E 20
      000EF3 00                    2842 	.db 0x00
                                   2843 	.area CSEG    (CODE)
                                   2844 	.area CONST   (CODE)
      000EF4                       2845 ___str_18:
      000EF4 4F 76 65 72 68 65 61  2846 	.ascii "Overheat System"
             74 20 53 79 73 74 65
             6D
      000F03 00                    2847 	.db 0x00
                                   2848 	.area CSEG    (CODE)
                                   2849 	.area CONST   (CODE)
      000F04                       2850 ___str_19:
      000F04 76 35 2E 30 20 52 65  2851 	.ascii "v5.0 Ready..."
             61 64 79 2E 2E 2E
      000F11 00                    2852 	.db 0x00
                                   2853 	.area CSEG    (CODE)
                                   2854 	.area CONST   (CODE)
      000F12                       2855 ___str_20:
      000F12 54 69 6D 65 3A 20     2856 	.ascii "Time: "
      000F18 00                    2857 	.db 0x00
                                   2858 	.area CSEG    (CODE)
                                   2859 	.area CONST   (CODE)
      000F19                       2860 ___str_21:
      000F19 44 61 74 65 3A 20     2861 	.ascii "Date: "
      000F1F 00                    2862 	.db 0x00
                                   2863 	.area CSEG    (CODE)
                                   2864 	.area CONST   (CODE)
      000F20                       2865 ___str_22:
      000F20 57 3A                 2866 	.ascii "W:"
      000F22 00                    2867 	.db 0x00
                                   2868 	.area CSEG    (CODE)
                                   2869 	.area CONST   (CODE)
      000F23                       2870 ___str_23:
      000F23 20 43 3A              2871 	.ascii " C:"
      000F26 00                    2872 	.db 0x00
                                   2873 	.area CSEG    (CODE)
                                   2874 	.area CONST   (CODE)
      000F27                       2875 ___str_24:
      000F27 48 6F 6C 64 20 56 49  2876 	.ascii "Hold VIEW for logs"
             45 57 20 66 6F 72 20
             6C 6F 67 73
      000F39 00                    2877 	.db 0x00
                                   2878 	.area CSEG    (CODE)
                                   2879 	.area CONST   (CODE)
      000F3A                       2880 ___str_25:
      000F3A 45 56 45 4E 54 20 4C  2881 	.ascii "EVENT LOGGED!"
             4F 47 47 45 44 21
      000F47 00                    2882 	.db 0x00
                                   2883 	.area CSEG    (CODE)
                                   2884 	.area CONST   (CODE)
      000F48                       2885 ___str_26:
      000F48 54 65 6D 70 3A 20     2886 	.ascii "Temp: "
      000F4E 00                    2887 	.db 0x00
                                   2888 	.area CSEG    (CODE)
                                   2889 	.area CONST   (CODE)
      000F4F                       2890 ___str_27:
      000F4F 20 53 48 55 54 44 4F  2891 	.ascii " SHUTDOWN"
             57 4E
      000F58 00                    2892 	.db 0x00
                                   2893 	.area CSEG    (CODE)
                                   2894 	.area XINIT   (CODE)
                                   2895 	.area CABS    (ABS,CODE)
