;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _critical_operation
	.globl _warning_operation
	.globl _safe_operation
	.globl _update_lcd
	.globl _check_button
	.globl _display_events
	.globl _log_event
	.globl _rtc_read_date
	.globl _rtc_read_time
	.globl _decimal_to_bcd
	.globl _bcd_to_decimal
	.globl _eeprom_read_byte
	.globl _eeprom_write_byte
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_stop
	.globl _i2c_start
	.globl _ADC_Read
	.globl _display_temperature
	.globl _lcd_clear
	.globl _lcd_init
	.globl _lcd_string
	.globl _lcd_data
	.globl _lcd_cmd
	.globl _delay_us
	.globl _delay
	.globl _BTN_VIEW
	.globl _SCL
	.globl _SDA
	.globl _BUZZER
	.globl _LED
	.globl _RELAY
	.globl _INTR
	.globl _ADC_WR
	.globl _ADC_RD
	.globl _EN
	.globl _RW
	.globl _RS
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _log_event_PARM_2
	.globl _rtc_read_date_PARM_3
	.globl _rtc_read_date_PARM_2
	.globl _rtc_read_time_PARM_3
	.globl _rtc_read_time_PARM_2
	.globl _eeprom_write_byte_PARM_2
	.globl _display_events_active
	.globl _total_events
	.globl _event_index
	.globl _log_display_counter
	.globl _button_was_pressed
	.globl _current_mode
	.globl _event_count
	.globl _blink_timer
	.globl _system_state
	.globl _temperature
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RS	=	0x00b0
_RW	=	0x00b1
_EN	=	0x00b2
_ADC_RD	=	0x00a0
_ADC_WR	=	0x00a1
_INTR	=	0x00a2
_RELAY	=	0x00a3
_LED	=	0x00a4
_BUZZER	=	0x00a5
_SDA	=	0x00a6
_SCL	=	0x00a7
_BTN_VIEW	=	0x00b3
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_temperature::
	.ds 2
_system_state::
	.ds 1
_blink_timer::
	.ds 2
_event_count::
	.ds 1
_current_mode::
	.ds 1
_button_was_pressed::
	.ds 1
_log_display_counter::
	.ds 2
_event_index::
	.ds 1
_total_events::
	.ds 1
_display_events_active::
	.ds 1
_eeprom_write_byte_PARM_2:
	.ds 1
_rtc_read_time_PARM_2:
	.ds 3
_rtc_read_time_PARM_3:
	.ds 3
_rtc_read_date_PARM_2:
	.ds 3
_rtc_read_date_PARM_3:
	.ds 3
_log_event_PARM_2:
	.ds 1
_log_event_hours_10000_76:
	.ds 1
_log_event_minutes_10000_76:
	.ds 1
_log_event_seconds_10000_76:
	.ds 1
_log_event_day_10000_76:
	.ds 1
_log_event_month_10000_76:
	.ds 1
_log_event_year_10000_76:
	.ds 1
_display_events_count_10000_80:
	.ds 1
_display_events_m_10000_80:
	.ds 1
_display_events_h_10000_80:
	.ds 1
_display_events_d_10000_80:
	.ds 1
_display_events_addr_10000_80:
	.ds 2
_display_events_temp_10000_80:
	.ds 2
_display_events_idx_10000_80:
	.ds 1
_check_button_last_state_10000_94:
	.ds 1
_check_button_hold_counter_10000_94:
	.ds 2
_main_hours_10000_121:
	.ds 1
_main_minutes_10000_121:
	.ds 1
_main_seconds_10000_121:
	.ds 1
_main_day_10000_121:
	.ds 1
_main_month_10000_121:
	.ds 1
_main_year_10000_121:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'check_button'
;------------------------------------------------------------
;last_state    Allocated with name '_check_button_last_state_10000_94'
;hold_counter  Allocated with name '_check_button_hold_counter_10000_94'
;current_state Allocated to registers r6 
;------------------------------------------------------------
;	main.c:451: static unsigned char last_state = 1;
	mov	_check_button_last_state_10000_94,#0x01
;	main.c:452: static unsigned int hold_counter = 0;
	clr	a
	mov	_check_button_hold_counter_10000_94,a
	mov	(_check_button_hold_counter_10000_94 + 1),a
;	main.c:54: unsigned int temperature = 0;
	clr	a
	mov	_temperature,a
	mov	(_temperature + 1),a
;	main.c:55: unsigned char system_state = 0;
	mov	_system_state,a
;	main.c:56: unsigned int blink_timer = 0;
	mov	_blink_timer,a
	mov	(_blink_timer + 1),a
;	main.c:57: unsigned char event_count = 0;
	mov	_event_count,a
;	main.c:58: unsigned char current_mode = 0;
	mov	_current_mode,a
;	main.c:59: unsigned char button_was_pressed = 0;
	mov	_button_was_pressed,a
;	main.c:60: unsigned int log_display_counter = 0;
	mov	_log_display_counter,a
	mov	(_log_display_counter + 1),a
;	main.c:61: unsigned char event_index = 0;
	mov	_event_index,a
;	main.c:62: unsigned char total_events = 0;
	mov	_total_events,a
;	main.c:63: unsigned char display_events_active = 0;
	mov	_display_events_active,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
__sdcc_program_exit:
	sjmp	.
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:69: void delay(unsigned int ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	main.c:72: for(i = 0; i < ms; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:73: for(j = 0; j < 1275; j++);
	mov	r2,#0xfb
	mov	r3,#0x04
00105$:
	dec	r2
	cjne	r2,#0xff,00142$
	dec	r3
00142$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:72: for(i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:76: void delay_us(unsigned int us)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6, dpl
	mov	r7, dph
;	main.c:79: for(i = 0; i < us; i++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	main.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;cmd           Allocated to registers 
;------------------------------------------------------------
;	main.c:86: void lcd_cmd(unsigned char cmd)
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	_P1,dpl
;	main.c:89: RS = 0;
;	assignBit
	clr	_RS
;	main.c:90: RW = 0;
;	assignBit
	clr	_RW
;	main.c:91: EN = 1;
;	assignBit
	setb	_EN
;	main.c:93: EN = 0;
;	assignBit
	clr	_EN
;	main.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_data'
;------------------------------------------------------------
;dat           Allocated to registers 
;------------------------------------------------------------
;	main.c:96: void lcd_data(unsigned char dat)
;	-----------------------------------------
;	 function lcd_data
;	-----------------------------------------
_lcd_data:
	mov	_P1,dpl
;	main.c:99: RS = 1;
;	assignBit
	setb	_RS
;	main.c:100: RW = 0;
;	assignBit
	clr	_RW
;	main.c:101: EN = 1;
;	assignBit
	setb	_EN
;	main.c:103: EN = 0;
;	assignBit
	clr	_EN
;	main.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_string'
;------------------------------------------------------------
;str           Allocated to registers 
;------------------------------------------------------------
;	main.c:106: void lcd_string(char *str)
;	-----------------------------------------
;	 function lcd_string
;	-----------------------------------------
_lcd_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:108: while(*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:109: lcd_data(*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00122$
	inc	r6
00122$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_data
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	main.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	main.c:112: void lcd_init(void)
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	main.c:114: lcd_cmd(0x38);
	mov	dpl, #0x38
	lcall	_lcd_cmd
;	main.c:115: lcd_cmd(0x0C);
	mov	dpl, #0x0c
	lcall	_lcd_cmd
;	main.c:116: lcd_cmd(0x06);
	mov	dpl, #0x06
	lcall	_lcd_cmd
;	main.c:117: lcd_cmd(0x01);
	mov	dpl, #0x01
;	main.c:118: delay(20);
;	main.c:119: }
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;	main.c:121: void lcd_clear(void)
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
;	main.c:123: lcd_cmd(0x01);
	mov	dpl, #0x01
;	main.c:124: delay(5);
;	main.c:125: }
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'display_temperature'
;------------------------------------------------------------
;temp          Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:127: void display_temperature(unsigned int temp)
;	-----------------------------------------
;	 function display_temperature
;	-----------------------------------------
_display_temperature:
;	main.c:129: if(temp / 100 == 0)
	mov	r6,dpl
	mov	r7,dph
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	a,r4
	orl	a,r5
	jnz	00102$
;	main.c:130: lcd_data(' ');
	mov	dpl, #0x20
	push	ar7
	push	ar6
	lcall	_lcd_data
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	main.c:132: lcd_data((temp / 100) + '0');
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_lcd_data
	pop	ar6
	pop	ar7
00103$:
;	main.c:133: lcd_data(((temp / 10) % 10) + '0');
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4, dpl
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	lcall	_lcd_data
	pop	ar6
	pop	ar7
;	main.c:134: lcd_data((temp % 10) + '0');
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__moduint
	mov	r6, dpl
	mov	a,#0x30
	add	a, r6
	mov	dpl,a
;	main.c:135: }
	ljmp	_lcd_data
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Read'
;------------------------------------------------------------
;adc_value     Allocated to registers 
;timeout       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:141: unsigned char ADC_Read(void)
;	-----------------------------------------
;	 function ADC_Read
;	-----------------------------------------
_ADC_Read:
;	main.c:146: P0 = 0xFF;
	mov	_P0,#0xff
;	main.c:147: ADC_WR = 0;
;	assignBit
	clr	_ADC_WR
;	main.c:149: ADC_WR = 1;
;	assignBit
	setb	_ADC_WR
;	main.c:151: while(INTR == 1 && timeout < 10000)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
	jnb	_INTR,00104$
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	subb	a,#0x27
	jnc	00104$
;	main.c:152: timeout++;
	inc	r6
	cjne	r6,#0x00,00102$
	inc	r7
	sjmp	00102$
00104$:
;	main.c:154: ADC_RD = 0;
;	assignBit
	clr	_ADC_RD
;	main.c:156: adc_value = P0;
	mov	dpl,_P0
;	main.c:157: ADC_RD = 1;
;	assignBit
	setb	_ADC_RD
;	main.c:159: return adc_value;
;	main.c:160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	main.c:166: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	main.c:168: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:169: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:171: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:173: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:174: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	main.c:176: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	main.c:178: SDA = 0;
;	assignBit
	clr	_SDA
;	main.c:179: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:181: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:182: delay_us(5);
;	main.c:183: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data          Allocated to registers r7 
;i             Allocated to registers r6 
;ack           Allocated to registers 
;------------------------------------------------------------
;	main.c:185: unsigned char i2c_write(unsigned char data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	main.c:189: for(i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	main.c:191: SDA = (data & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_SDA,c
;	main.c:192: data <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main.c:193: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:195: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:189: for(i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00121$
00121$:
	jc	00102$
;	main.c:199: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:200: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:202: ack = SDA;
	mov	c,_SDA
	clr	a
	rlc	a
	mov	dpl,a
;	main.c:203: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:205: return ack;
;	main.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;ack           Allocated to registers r7 
;i             Allocated to registers r5 
;data          Allocated to registers r6 
;------------------------------------------------------------
;	main.c:208: unsigned char i2c_read(unsigned char ack)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	mov	r7, dpl
;	main.c:210: unsigned char i, data = 0;
	mov	r6,#0x00
;	main.c:212: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:214: for(i = 0; i < 8; i++)
	mov	r5,#0x00
00104$:
;	main.c:216: data <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	main.c:217: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:219: if(SDA) data |= 0x01;
	jnb	_SDA,00102$
	orl	ar6,#0x01
00102$:
;	main.c:220: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:214: for(i = 0; i < 8; i++)
	inc	r5
	cjne	r5,#0x08,00131$
00131$:
	jc	00104$
;	main.c:224: SDA = ack ? 0 : 1;
	mov	a,r7
	cjne	a,#0x01,00133$
00133$:
	mov	_SDA,c
;	main.c:225: SCL = 1;
;	assignBit
	setb	_SCL
;	main.c:227: SCL = 0;
;	assignBit
	clr	_SCL
;	main.c:228: SDA = 1;
;	assignBit
	setb	_SDA
;	main.c:230: return data;
	mov	dpl, r6
;	main.c:231: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_write_byte'
;------------------------------------------------------------
;data          Allocated with name '_eeprom_write_byte_PARM_2'
;addr          Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:237: void eeprom_write_byte(unsigned int addr, unsigned char data)
;	-----------------------------------------
;	 function eeprom_write_byte
;	-----------------------------------------
_eeprom_write_byte:
	mov	r6, dpl
	mov	r7, dph
;	main.c:239: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	main.c:240: i2c_write(EEPROM_ADDR_WRITE);
	mov	dpl, #0xa0
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:241: i2c_write((unsigned char)(addr >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:242: i2c_write((unsigned char)(addr & 0xFF));
	mov	dpl,r6
	lcall	_i2c_write
;	main.c:243: i2c_write(data);
	mov	dpl, _eeprom_write_byte_PARM_2
	lcall	_i2c_write
;	main.c:244: i2c_stop();
;	main.c:245: delay(10);
;	main.c:246: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_read_byte'
;------------------------------------------------------------
;addr          Allocated to registers r6 r7 
;data          Allocated to registers r7 
;------------------------------------------------------------
;	main.c:248: unsigned char eeprom_read_byte(unsigned int addr)
;	-----------------------------------------
;	 function eeprom_read_byte
;	-----------------------------------------
_eeprom_read_byte:
	mov	r6, dpl
	mov	r7, dph
;	main.c:252: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	main.c:253: i2c_write(EEPROM_ADDR_WRITE);
	mov	dpl, #0xa0
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:254: i2c_write((unsigned char)(addr >> 8));
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	pop	ar6
	pop	ar7
;	main.c:255: i2c_write((unsigned char)(addr & 0xFF));
	mov	dpl,r6
	lcall	_i2c_write
;	main.c:257: i2c_start();
	lcall	_i2c_start
;	main.c:258: i2c_write(EEPROM_ADDR_READ);
	mov	dpl, #0xa1
	lcall	_i2c_write
;	main.c:259: data = i2c_read(0);
	mov	dpl, #0x00
	lcall	_i2c_read
	mov	r7, dpl
;	main.c:260: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	main.c:262: return data;
	mov	dpl, r7
;	main.c:263: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd_to_decimal'
;------------------------------------------------------------
;bcd           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:269: unsigned char bcd_to_decimal(unsigned char bcd)
;	-----------------------------------------
;	 function bcd_to_decimal
;	-----------------------------------------
_bcd_to_decimal:
;	main.c:271: return ((bcd >> 4) * 10) + (bcd & 0x0F);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,#0x0f
	anl	a,r7
	add	a, r6
	mov	dpl,a
;	main.c:272: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decimal_to_bcd'
;------------------------------------------------------------
;dec           Allocated to registers r7 
;------------------------------------------------------------
;	main.c:274: unsigned char decimal_to_bcd(unsigned char dec)
;	-----------------------------------------
;	 function decimal_to_bcd
;	-----------------------------------------
_decimal_to_bcd:
	mov	r7, dpl
;	main.c:276: return ((dec / 10) << 4) | (dec % 10);
	mov	ar6,r7
	mov	b,#0x0a
	mov	a,r6
	div	ab
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	a,b
	orl	a,r6
	mov	dpl,a
;	main.c:277: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_read_time'
;------------------------------------------------------------
;minutes       Allocated with name '_rtc_read_time_PARM_2'
;seconds       Allocated with name '_rtc_read_time_PARM_3'
;hours         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:279: void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds)
;	-----------------------------------------
;	 function rtc_read_time
;	-----------------------------------------
_rtc_read_time:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:281: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main.c:282: i2c_write(RTC_ADDR_WRITE);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:283: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	main.c:284: i2c_start();
	lcall	_i2c_start
;	main.c:285: i2c_write(RTC_ADDR_READ);
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main.c:287: *seconds = bcd_to_decimal(i2c_read(1));
	mov	r2,_rtc_read_time_PARM_3
	mov	r3,(_rtc_read_time_PARM_3 + 1)
	mov	r4,(_rtc_read_time_PARM_3 + 2)
	mov	dpl, #0x01
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	main.c:288: *minutes = bcd_to_decimal(i2c_read(1));
	mov	r2,_rtc_read_time_PARM_2
	mov	r3,(_rtc_read_time_PARM_2 + 1)
	mov	r4,(_rtc_read_time_PARM_2 + 2)
	mov	dpl, #0x01
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	main.c:289: *hours = bcd_to_decimal(i2c_read(0) & 0x3F);
	mov	dpl, #0x00
	lcall	_i2c_read
	mov	a, dpl
	anl	a,#0x3f
	mov	dpl,a
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:291: i2c_stop();
;	main.c:292: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_read_date'
;------------------------------------------------------------
;month         Allocated with name '_rtc_read_date_PARM_2'
;year          Allocated with name '_rtc_read_date_PARM_3'
;day           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:294: void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year)
;	-----------------------------------------
;	 function rtc_read_date
;	-----------------------------------------
_rtc_read_date:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:296: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	main.c:297: i2c_write(RTC_ADDR_WRITE);
	mov	dpl, #0xd0
	lcall	_i2c_write
;	main.c:298: i2c_write(0x04);
	mov	dpl, #0x04
	lcall	_i2c_write
;	main.c:299: i2c_start();
	lcall	_i2c_start
;	main.c:300: i2c_write(RTC_ADDR_READ);
	mov	dpl, #0xd1
	lcall	_i2c_write
;	main.c:302: *day = bcd_to_decimal(i2c_read(1));
	mov	dpl, #0x01
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:303: *month = bcd_to_decimal(i2c_read(1));
	mov	r5,_rtc_read_date_PARM_2
	mov	r6,(_rtc_read_date_PARM_2 + 1)
	mov	r7,(_rtc_read_date_PARM_2 + 2)
	mov	dpl, #0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:304: *year = bcd_to_decimal(i2c_read(0));
	mov	r5,_rtc_read_date_PARM_3
	mov	r6,(_rtc_read_date_PARM_3 + 1)
	mov	r7,(_rtc_read_date_PARM_3 + 2)
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd_to_decimal
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	main.c:306: i2c_stop();
;	main.c:307: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'log_event'
;------------------------------------------------------------
;state         Allocated with name '_log_event_PARM_2'
;temp          Allocated to registers r6 r7 
;addr          Allocated to registers r4 r5 
;hours         Allocated with name '_log_event_hours_10000_76'
;minutes       Allocated with name '_log_event_minutes_10000_76'
;seconds       Allocated with name '_log_event_seconds_10000_76'
;day           Allocated with name '_log_event_day_10000_76'
;month         Allocated with name '_log_event_month_10000_76'
;year          Allocated with name '_log_event_year_10000_76'
;------------------------------------------------------------
;	main.c:313: void log_event(unsigned int temp, unsigned char state)
;	-----------------------------------------
;	 function log_event
;	-----------------------------------------
_log_event:
	mov	r6, dpl
	mov	r7, dph
;	main.c:319: rtc_read_time(&hours, &minutes, &seconds);
	mov	_rtc_read_time_PARM_2,#_log_event_minutes_10000_76
	mov	(_rtc_read_time_PARM_2 + 1),#0x00
	mov	(_rtc_read_time_PARM_2 + 2),#0x40
	mov	_rtc_read_time_PARM_3,#_log_event_seconds_10000_76
	mov	(_rtc_read_time_PARM_3 + 1),#0x00
	mov	(_rtc_read_time_PARM_3 + 2),#0x40
	mov	dptr,#_log_event_hours_10000_76
	mov	b, #0x40
	push	ar7
	push	ar6
	lcall	_rtc_read_time
;	main.c:320: rtc_read_date(&day, &month, &year);
	mov	_rtc_read_date_PARM_2,#_log_event_month_10000_76
	mov	(_rtc_read_date_PARM_2 + 1),#0x00
	mov	(_rtc_read_date_PARM_2 + 2),#0x40
	mov	_rtc_read_date_PARM_3,#_log_event_year_10000_76
	mov	(_rtc_read_date_PARM_3 + 1),#0x00
	mov	(_rtc_read_date_PARM_3 + 2),#0x40
	mov	dptr,#_log_event_day_10000_76
	mov	b, #0x40
	lcall	_rtc_read_date
;	main.c:322: event_count = eeprom_read_byte(0x0000);
	mov	dptr,#0x0000
	lcall	_eeprom_read_byte
	mov	_event_count,dpl
	pop	ar6
	pop	ar7
;	main.c:323: addr = 0x0010 + (event_count * 8);
	mov	r4,_event_count
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,#0x10
	add	a, r4
	mov	r4,a
	clr	a
	addc	a, r5
	mov	r5,a
;	main.c:325: if(event_count >= 62)
	mov	a,#0x100 - 0x3e
	add	a,_event_count
	jnc	00102$
;	main.c:327: event_count = 0;
	mov	_event_count,#0x00
;	main.c:328: addr = 0x0010;
	mov	r4,#0x10
	mov	r5,#0x00
00102$:
;	main.c:331: eeprom_write_byte(addr, (unsigned char)(temp & 0xFF));
	mov	_eeprom_write_byte_PARM_2,r6
	mov	dpl, r4
	mov	dph, r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:332: eeprom_write_byte(addr + 1, (unsigned char)(temp >> 8));
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	mov	_eeprom_write_byte_PARM_2,r7
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:333: eeprom_write_byte(addr + 2, state);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	mov	_eeprom_write_byte_PARM_2,_log_event_PARM_2
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:334: eeprom_write_byte(addr + 3, seconds);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	mov	_eeprom_write_byte_PARM_2,_log_event_seconds_10000_76
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:335: eeprom_write_byte(addr + 4, minutes);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	_eeprom_write_byte_PARM_2,_log_event_minutes_10000_76
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:336: eeprom_write_byte(addr + 5, hours);
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	_eeprom_write_byte_PARM_2,_log_event_hours_10000_76
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:337: eeprom_write_byte(addr + 6, day);
	mov	a,#0x06
	add	a, r4
	mov	dpl,a
	clr	a
	addc	a, r5
	mov	dph,a
	mov	_eeprom_write_byte_PARM_2,_log_event_day_10000_76
	push	ar5
	push	ar4
	lcall	_eeprom_write_byte
	pop	ar4
	pop	ar5
;	main.c:338: eeprom_write_byte(addr + 7, month);
	mov	a,#0x07
	add	a, r4
	mov	dpl,a
	clr	a
	addc	a, r5
	mov	dph,a
	mov	_eeprom_write_byte_PARM_2,_log_event_month_10000_76
	lcall	_eeprom_write_byte
;	main.c:340: event_count++;
	inc	_event_count
;	main.c:341: eeprom_write_byte(0x0000, event_count);
	mov	_eeprom_write_byte_PARM_2,_event_count
	mov	dptr,#0x0000
;	main.c:342: }
	ljmp	_eeprom_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'display_events'
;------------------------------------------------------------
;count         Allocated with name '_display_events_count_10000_80'
;state         Allocated to registers r1 
;s             Allocated to registers 
;m             Allocated with name '_display_events_m_10000_80'
;h             Allocated with name '_display_events_h_10000_80'
;d             Allocated with name '_display_events_d_10000_80'
;mo            Allocated to registers 
;addr          Allocated with name '_display_events_addr_10000_80'
;temp          Allocated with name '_display_events_temp_10000_80'
;idx           Allocated with name '_display_events_idx_10000_80'
;timer         Allocated to registers r4 r7 
;------------------------------------------------------------
;	main.c:348: void display_events(void)
;	-----------------------------------------
;	 function display_events
;	-----------------------------------------
_display_events:
;	main.c:355: count = eeprom_read_byte(0x0000);
	mov	dptr,#0x0000
	lcall	_eeprom_read_byte
;	main.c:356: total_events = count;
;	main.c:358: if(count == 0)
	mov	a,dpl
	mov	_display_events_count_10000_80,a
	mov	_total_events,a
	jnz	00102$
;	main.c:360: lcd_clear();
	lcall	_lcd_clear
;	main.c:361: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:362: lcd_string("No Events Logged");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:363: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:364: lcd_string("Release to exit");
	mov	dptr,#___str_1
	mov	b, #0x80
;	main.c:365: return;
	ljmp	_lcd_string
00102$:
;	main.c:368: lcd_clear();
	lcall	_lcd_clear
;	main.c:369: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:370: lcd_string("Total Events: ");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:371: lcd_data((count/10)+'0');
	mov	r5,_display_events_count_10000_80
	mov	r6,#0x00
	mov	ar4,r5
	mov	b,#0x0a
	mov	a,r4
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_lcd_data
	pop	ar5
;	main.c:372: lcd_data((count%10)+'0');
	mov	ar4,r5
	mov	b,#0x0a
	mov	a,r4
	div	ab
	mov	r4,b
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	push	ar5
	lcall	_lcd_data
;	main.c:373: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:374: lcd_string("Hold to view logs");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar5
	pop	ar6
;	main.c:377: if(BTN_VIEW == 1)
	jnb	_BTN_VIEW,00104$
;	main.c:378: return;
	ret
00104$:
;	main.c:380: idx = 0;
	mov	_display_events_idx_10000_80,#0x00
;	main.c:381: display_events_active = 1;
	mov	_display_events_active,#0x01
;	main.c:383: while(display_events_active)
	dec	r5
	cjne	r5,#0xff,00204$
	dec	r6
00204$:
00120$:
	mov	a,_display_events_active
	jnz	00205$
	ret
00205$:
;	main.c:385: if(BTN_VIEW == 1)
	jnb	_BTN_VIEW,00106$
;	main.c:387: display_events_active = 0;
	mov	_display_events_active,#0x00
;	main.c:388: break;
	ret
00106$:
;	main.c:391: addr = 0x0010 + ((count - 1 - idx) * 8);
	mov	r2,_display_events_idx_10000_80
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r6
	subb	a,r3
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r0
	swap	a
	rr	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf8
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,#0x10
	add	a, r0
	mov	_display_events_addr_10000_80,a
	clr	a
	addc	a, r1
	mov	(_display_events_addr_10000_80 + 1),a
;	main.c:392: temp = (eeprom_read_byte(addr + 1) << 8) | eeprom_read_byte(addr);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_eeprom_read_byte
	mov	r7, dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	mov	ar4,r7
	mov	ar7,r4
	mov	r4,#0x00
	mov	dpl, _display_events_addr_10000_80
	mov	dph, (_display_events_addr_10000_80 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_eeprom_read_byte
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r1
	mov	r1,#0x00
	mov	a,r0
	orl	a,r4
	mov	_display_events_temp_10000_80,a
	mov	a,r1
	orl	a,r7
	mov	(_display_events_temp_10000_80 + 1),a
;	main.c:393: state = eeprom_read_byte(addr + 2);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_eeprom_read_byte
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:394: s = eeprom_read_byte(addr + 3);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_eeprom_read_byte
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:395: m = eeprom_read_byte(addr + 4);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_eeprom_read_byte
	mov	_display_events_m_10000_80,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:396: h = eeprom_read_byte(addr + 5);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_eeprom_read_byte
	mov	_display_events_h_10000_80,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:397: d = eeprom_read_byte(addr + 6);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_eeprom_read_byte
	mov	_display_events_d_10000_80,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:398: mo = eeprom_read_byte(addr + 7);
	mov	dpl,_display_events_addr_10000_80
	mov	dph,(_display_events_addr_10000_80 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_eeprom_read_byte
;	main.c:400: lcd_clear();
	lcall	_lcd_clear
;	main.c:402: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:403: lcd_string("#");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	main.c:404: lcd_data((idx+1)/10+'0');
	inc	r2
	cjne	r2,#0x00,00207$
	inc	r3
00207$:
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r2
	mov	dph, r3
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	__divsint
	mov	r0, dpl
	mov	a,#0x30
	add	a, r0
	mov	dpl,a
	lcall	_lcd_data
	pop	ar1
	pop	ar2
	pop	ar3
;	main.c:405: lcd_data((idx+1)%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r2
	mov	dph, r3
	push	ar1
	lcall	__modsint
	mov	r4, dpl
	mov	a,#0x30
	add	a, r4
	mov	dpl,a
	lcall	_lcd_data
;	main.c:406: lcd_string(": ");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar1
	pop	ar5
	pop	ar6
;	main.c:407: display_temperature(temp);
	mov	dpl, _display_events_temp_10000_80
	mov	dph, (_display_events_temp_10000_80 + 1)
	push	ar6
	push	ar5
	push	ar1
	lcall	_display_temperature
;	main.c:408: lcd_data(223);
	mov	dpl, #0xdf
	lcall	_lcd_data
;	main.c:409: lcd_data('C');
	mov	dpl, #0x43
	lcall	_lcd_data
;	main.c:411: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
	pop	ar1
	pop	ar5
	pop	ar6
;	main.c:412: if(state == 0) lcd_string("SAFE");
	mov	a,r1
	jnz	00111$
	mov	dptr,#___str_6
	mov	b, #0x80
	push	ar6
	push	ar5
	lcall	_lcd_string
	pop	ar5
	pop	ar6
	sjmp	00112$
00111$:
;	main.c:413: else if(state == 1) lcd_string("WARNING");
	cjne	r1,#0x01,00108$
	mov	dptr,#___str_7
	mov	b, #0x80
	push	ar6
	push	ar5
	lcall	_lcd_string
	pop	ar5
	pop	ar6
	sjmp	00112$
00108$:
;	main.c:414: else lcd_string("SHUTDOWN");
	mov	dptr,#___str_8
	mov	b, #0x80
	push	ar6
	push	ar5
	lcall	_lcd_string
	pop	ar5
	pop	ar6
00112$:
;	main.c:416: lcd_string(" ");
	mov	dptr,#___str_9
	mov	b, #0x80
	push	ar6
	push	ar5
	lcall	_lcd_string
	pop	ar5
	pop	ar6
;	main.c:417: lcd_data((h/10)+'0');
	mov	r0,_display_events_h_10000_80
	mov	ar7,r0
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar0
	lcall	_lcd_data
	pop	ar0
;	main.c:418: lcd_data((h%10)+'0');
	mov	b,#0x0a
	mov	a,r0
	div	ab
	mov	r0,b
	mov	a,#0x30
	add	a, r0
	mov	dpl,a
	lcall	_lcd_data
;	main.c:419: lcd_data(':');
	mov	dpl, #0x3a
	lcall	_lcd_data
	pop	ar5
	pop	ar6
;	main.c:420: lcd_data((m/10)+'0');
	mov	r0,_display_events_m_10000_80
	mov	ar7,r0
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar0
	lcall	_lcd_data
	pop	ar0
;	main.c:421: lcd_data((m%10)+'0');
	mov	b,#0x0a
	mov	a,r0
	div	ab
	mov	r0,b
	mov	a,#0x30
	add	a, r0
	mov	dpl,a
	lcall	_lcd_data
;	main.c:422: lcd_data('/');
	mov	dpl, #0x2f
	lcall	_lcd_data
	pop	ar5
	pop	ar6
;	main.c:423: lcd_data((d/10)+'0');
	mov	r0,_display_events_d_10000_80
	mov	ar7,r0
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar0
	lcall	_lcd_data
	pop	ar0
;	main.c:424: lcd_data((d%10)+'0');
	mov	b,#0x0a
	mov	a,r0
	div	ab
	mov	r0,b
	mov	a,#0x30
	add	a, r0
	mov	dpl,a
	lcall	_lcd_data
	pop	ar5
	pop	ar6
;	main.c:427: while(timer < LOG_DISPLAY_TIME)
	mov	r4,#0x00
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,r4
	subb	a,#0xb8
	mov	a,r7
	subb	a,#0x0b
	jnc	00117$
;	main.c:430: timer += 10;
	mov	a,#0x0a
	add	a, r4
	mov	r4,a
	clr	a
	addc	a, r7
	mov	r7,a
;	main.c:432: if(BTN_VIEW == 1)
	jnb	_BTN_VIEW,00115$
;	main.c:434: display_events_active = 0;
	mov	_display_events_active,#0x00
;	main.c:435: break;
00117$:
;	main.c:439: idx++;
	inc	_display_events_idx_10000_80
;	main.c:440: if(idx >= count)
	clr	c
	mov	a,_display_events_idx_10000_80
	subb	a,_display_events_count_10000_80
	jnc	00213$
	ljmp	00120$
00213$:
;	main.c:441: idx = 0;
	mov	_display_events_idx_10000_80,#0x00
;	main.c:443: }
	ljmp	00120$
;------------------------------------------------------------
;Allocation info for local variables in function 'check_button'
;------------------------------------------------------------
;last_state    Allocated with name '_check_button_last_state_10000_94'
;hold_counter  Allocated with name '_check_button_hold_counter_10000_94'
;current_state Allocated to registers r6 
;------------------------------------------------------------
;	main.c:449: void check_button(void)
;	-----------------------------------------
;	 function check_button
;	-----------------------------------------
_check_button:
;	main.c:455: current_state = BTN_VIEW;
	mov	c,_BTN_VIEW
	clr	a
	rlc	a
;	main.c:457: if(current_state == 0)
	mov	r6,a
	jnz	00109$
;	main.c:459: if(last_state == 1)
	mov	a,#0x01
	cjne	a,_check_button_last_state_10000_94,00102$
;	main.c:461: hold_counter = 0;
	clr	a
	mov	_check_button_hold_counter_10000_94,a
	mov	(_check_button_hold_counter_10000_94 + 1),a
;	main.c:462: button_was_pressed = 1;
	mov	_button_was_pressed,#0x01
00102$:
;	main.c:465: hold_counter++;
	inc	_check_button_hold_counter_10000_94
	clr	a
	cjne	a,_check_button_hold_counter_10000_94,00151$
	inc	(_check_button_hold_counter_10000_94 + 1)
00151$:
;	main.c:467: if(hold_counter >= 30 && current_mode == 0)
	clr	c
	mov	a,_check_button_hold_counter_10000_94
	subb	a,#0x1e
	mov	a,(_check_button_hold_counter_10000_94 + 1)
	subb	a,#0x00
	jc	00110$
	mov	a,_current_mode
	jnz	00110$
;	main.c:469: current_mode = 1;
	mov	_current_mode,#0x01
;	main.c:470: lcd_clear();
	push	ar6
	lcall	_lcd_clear
;	main.c:471: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:472: lcd_string("<<< LOGS MODE >>>");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:473: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:474: lcd_string("Hold to view logs");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:477: display_events();
	lcall	_display_events
;	main.c:479: current_mode = 0;
	mov	_current_mode,#0x00
;	main.c:480: lcd_clear();
	lcall	_lcd_clear
;	main.c:481: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:482: lcd_string("<<< MONITORING >>>");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:483: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:484: lcd_string("Mode");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:486: lcd_clear();
	lcall	_lcd_clear
	pop	ar6
	sjmp	00110$
00109$:
;	main.c:491: if(button_was_pressed == 1)
	mov	a,#0x01
	cjne	a,_button_was_pressed,00107$
;	main.c:493: button_was_pressed = 0;
	mov	_button_was_pressed,#0x00
;	main.c:494: display_events_active = 0;
	mov	_display_events_active,#0x00
00107$:
;	main.c:496: hold_counter = 0;
	clr	a
	mov	_check_button_hold_counter_10000_94,a
	mov	(_check_button_hold_counter_10000_94 + 1),a
00110$:
;	main.c:499: last_state = current_state;
	mov	_check_button_last_state_10000_94,r6
;	main.c:500: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_lcd'
;------------------------------------------------------------
;	main.c:506: void update_lcd(void)
;	-----------------------------------------
;	 function update_lcd
;	-----------------------------------------
_update_lcd:
;	main.c:508: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:509: lcd_string("TEMP: ");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:510: display_temperature(temperature);
	mov	dpl, _temperature
	mov	dph, (_temperature + 1)
	lcall	_display_temperature
;	main.c:511: lcd_data(223);
	mov	dpl, #0xdf
	lcall	_lcd_data
;	main.c:512: lcd_data('C');
	mov	dpl, #0x43
	lcall	_lcd_data
;	main.c:513: lcd_string("   ");
	mov	dptr,#___str_14
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:515: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:516: if(system_state == 0)
	mov	a,_system_state
	jnz	00105$
;	main.c:517: lcd_string("STATUS: SAFE     ");
	mov	dptr,#___str_15
	mov	b, #0x80
	ljmp	_lcd_string
00105$:
;	main.c:518: else if(system_state == 1)
	mov	a,#0x01
	cjne	a,_system_state,00102$
;	main.c:519: lcd_string("STATUS: WARNING  ");
	mov	dptr,#___str_16
	mov	b, #0x80
	ljmp	_lcd_string
00102$:
;	main.c:521: lcd_string("STATUS: SHUTDOWN ");
	mov	dptr,#___str_17
	mov	b, #0x80
;	main.c:522: }
	ljmp	_lcd_string
;------------------------------------------------------------
;Allocation info for local variables in function 'safe_operation'
;------------------------------------------------------------
;	main.c:528: void safe_operation(void)
;	-----------------------------------------
;	 function safe_operation
;	-----------------------------------------
_safe_operation:
;	main.c:530: system_state = 0;
	mov	_system_state,#0x00
;	main.c:531: LED = 0;
;	assignBit
	clr	_LED
;	main.c:532: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:533: RELAY = RELAY_ON;
;	assignBit
	setb	_RELAY
;	main.c:534: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'warning_operation'
;------------------------------------------------------------
;	main.c:536: void warning_operation(void)
;	-----------------------------------------
;	 function warning_operation
;	-----------------------------------------
_warning_operation:
;	main.c:538: system_state = 1;
	mov	_system_state,#0x01
;	main.c:539: RELAY = RELAY_ON;
;	assignBit
	setb	_RELAY
;	main.c:541: blink_timer++;
	inc	_blink_timer
	clr	a
	cjne	a,_blink_timer,00113$
	inc	(_blink_timer + 1)
00113$:
;	main.c:542: if(blink_timer % 10 < 5)
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, _blink_timer
	mov	dph, (_blink_timer + 1)
	lcall	__moduint
	mov	r6, dpl
	mov	r7, dph
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	main.c:544: LED = 1;
;	assignBit
	setb	_LED
;	main.c:545: BUZZER = 1;
;	assignBit
	setb	_BUZZER
	ret
00102$:
;	main.c:549: LED = 0;
;	assignBit
	clr	_LED
;	main.c:550: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:552: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'critical_operation'
;------------------------------------------------------------
;	main.c:554: void critical_operation(void)
;	-----------------------------------------
;	 function critical_operation
;	-----------------------------------------
_critical_operation:
;	main.c:556: system_state = 2;
	mov	_system_state,#0x02
;	main.c:557: RELAY = RELAY_OFF;
;	assignBit
	clr	_RELAY
;	main.c:559: blink_timer++;
	inc	_blink_timer
	clr	a
	cjne	a,_blink_timer,00113$
	inc	(_blink_timer + 1)
00113$:
;	main.c:560: if(blink_timer % 4 < 2)
	mov	a,#0x03
	anl	a,_blink_timer
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	main.c:562: LED = 1;
;	assignBit
	setb	_LED
;	main.c:563: BUZZER = 1;
;	assignBit
	setb	_BUZZER
	ret
00102$:
;	main.c:567: LED = 0;
;	assignBit
	clr	_LED
;	main.c:568: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:570: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;adc           Allocated to registers 
;temp          Allocated to registers r4 r5 
;prev_state    Allocated to registers r7 
;loop_counter  Allocated to registers r6 
;hours         Allocated with name '_main_hours_10000_121'
;minutes       Allocated with name '_main_minutes_10000_121'
;seconds       Allocated with name '_main_seconds_10000_121'
;day           Allocated with name '_main_day_10000_121'
;month         Allocated with name '_main_month_10000_121'
;year          Allocated with name '_main_year_10000_121'
;------------------------------------------------------------
;	main.c:576: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:580: unsigned char prev_state = 2;
	mov	r7,#0x02
;	main.c:581: unsigned int loop_counter = 0;
	mov	r6,#0x00
;	main.c:585: RELAY = RELAY_ON;
;	assignBit
	setb	_RELAY
;	main.c:586: LED = 0;
;	assignBit
	clr	_LED
;	main.c:587: BUZZER = 0;
;	assignBit
	clr	_BUZZER
;	main.c:589: lcd_init();
	push	ar7
	push	ar6
	lcall	_lcd_init
;	main.c:591: lcd_clear();
	lcall	_lcd_clear
;	main.c:592: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:593: lcd_string("Overheat System");
	mov	dptr,#___str_18
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:594: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:595: lcd_string("v5.0 Ready...");
	mov	dptr,#___str_19
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:597: lcd_clear();
	lcall	_lcd_clear
;	main.c:599: rtc_read_time(&hours, &minutes, &seconds);
	mov	_rtc_read_time_PARM_2,#_main_minutes_10000_121
	mov	(_rtc_read_time_PARM_2 + 1),#0x00
	mov	(_rtc_read_time_PARM_2 + 2),#0x40
	mov	_rtc_read_time_PARM_3,#_main_seconds_10000_121
	mov	(_rtc_read_time_PARM_3 + 1),#0x00
	mov	(_rtc_read_time_PARM_3 + 2),#0x40
	mov	dptr,#_main_hours_10000_121
	mov	b, #0x40
	lcall	_rtc_read_time
;	main.c:600: rtc_read_date(&day, &month, &year);
	mov	_rtc_read_date_PARM_2,#_main_month_10000_121
	mov	(_rtc_read_date_PARM_2 + 1),#0x00
	mov	(_rtc_read_date_PARM_2 + 2),#0x40
	mov	_rtc_read_date_PARM_3,#_main_year_10000_121
	mov	(_rtc_read_date_PARM_3 + 1),#0x00
	mov	(_rtc_read_date_PARM_3 + 2),#0x40
	mov	dptr,#_main_day_10000_121
	mov	b, #0x40
	lcall	_rtc_read_date
;	main.c:602: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:603: lcd_string("Time: ");
	mov	dptr,#___str_20
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:604: lcd_data((hours/10)+'0');
	mov	r5,_main_hours_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:605: lcd_data((hours%10)+'0');
	mov	r5,_main_hours_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:606: lcd_data(':');
	mov	dpl, #0x3a
	lcall	_lcd_data
;	main.c:607: lcd_data((minutes/10)+'0');
	mov	r5,_main_minutes_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:608: lcd_data((minutes%10)+'0');
	mov	r5,_main_minutes_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:609: lcd_data(':');
	mov	dpl, #0x3a
	lcall	_lcd_data
;	main.c:610: lcd_data((seconds/10)+'0');
	mov	r5,_main_seconds_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:611: lcd_data((seconds%10)+'0');
	mov	r5,_main_seconds_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:613: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:614: lcd_string("Date: ");
	mov	dptr,#___str_21
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:615: lcd_data((day/10)+'0');
	mov	r5,_main_day_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:616: lcd_data((day%10)+'0');
	mov	r5,_main_day_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:617: lcd_data('/');
	mov	dpl, #0x2f
	lcall	_lcd_data
;	main.c:618: lcd_data((month/10)+'0');
	mov	r5,_main_month_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:619: lcd_data((month%10)+'0');
	mov	r5,_main_month_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:620: lcd_data('/');
	mov	dpl, #0x2f
	lcall	_lcd_data
;	main.c:621: lcd_data((year/10)+'0');
	mov	r5,_main_year_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_data
;	main.c:622: lcd_data((year%10)+'0');
	mov	r5,_main_year_10000_121
	mov	b,#0x0a
	mov	a,r5
	div	ab
	mov	r5,b
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	lcall	_lcd_data
;	main.c:624: lcd_clear();
	lcall	_lcd_clear
;	main.c:626: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:627: lcd_string("W:");
	mov	dptr,#___str_22
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:628: display_temperature(WARNING_TEMP);
	mov	dptr,#0x0046
	lcall	_display_temperature
;	main.c:629: lcd_data(223);
	mov	dpl, #0xdf
	lcall	_lcd_data
;	main.c:630: lcd_data('C');
	mov	dpl, #0x43
	lcall	_lcd_data
;	main.c:631: lcd_string(" C:");
	mov	dptr,#___str_23
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:632: display_temperature(CRITICAL_TEMP);
	mov	dptr,#0x0055
	lcall	_display_temperature
;	main.c:633: lcd_data(223);
	mov	dpl, #0xdf
	lcall	_lcd_data
;	main.c:634: lcd_data('C');
	mov	dpl, #0x43
	lcall	_lcd_data
;	main.c:635: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:636: lcd_string("Hold VIEW for logs");
	mov	dptr,#___str_24
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:638: lcd_clear();
	lcall	_lcd_clear
	pop	ar6
	pop	ar7
;	main.c:640: current_mode = 0;
	mov	_current_mode,#0x00
;	main.c:642: while(1)
00121$:
;	main.c:644: check_button();
	push	ar7
	push	ar6
	lcall	_check_button
	pop	ar6
	pop	ar7
;	main.c:646: if(current_mode == 1)
	mov	a,#0x01
	cjne	a,_current_mode,00181$
	sjmp	00121$
00181$:
;	main.c:649: adc = ADC_Read();
	push	ar7
	push	ar6
	lcall	_ADC_Read
	mov	r5, dpl
;	main.c:650: temp = ((unsigned int)adc * 500) / 255;
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x01f4
	lcall	__mulint
	mov	__divuint_PARM_2,#0xff
	mov	(__divuint_PARM_2 + 1),#0x00
;	main.c:651: temperature = temp;
	lcall	__divuint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	_temperature,r4
	mov	(_temperature + 1),r5
;	main.c:653: loop_counter++;
	inc	r6
;	main.c:654: if(loop_counter >= 10)
	cjne	r6,#0x0a,00182$
00182$:
	jc	00104$
;	main.c:656: update_lcd();
	push	ar7
	push	ar5
	push	ar4
	lcall	_update_lcd
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:657: loop_counter = 0;
	mov	r6,#0x00
00104$:
;	main.c:660: if(temp < WARNING_TEMP)
	clr	c
	mov	a,r4
	subb	a,#0x46
	mov	a,r5
	subb	a,#0x00
	jnc	00118$
;	main.c:662: if(prev_state != 0)
	mov	a,r7
	jz	00106$
;	main.c:664: prev_state = 0;
	mov	r7,#0x00
;	main.c:665: safe_operation();
	push	ar7
	push	ar6
	lcall	_safe_operation
;	main.c:666: update_lcd();
	lcall	_update_lcd
	pop	ar6
	pop	ar7
	sjmp	00121$
00106$:
;	main.c:670: safe_operation();
	push	ar7
	push	ar6
	lcall	_safe_operation
	pop	ar6
	pop	ar7
	sjmp	00121$
00118$:
;	main.c:673: else if(temp < CRITICAL_TEMP)
	clr	c
	mov	a,r4
	subb	a,#0x55
	mov	a,r5
	subb	a,#0x00
	jnc	00115$
;	main.c:675: if(prev_state != 1)
	cjne	r7,#0x01,00187$
	sjmp	00109$
00187$:
;	main.c:677: prev_state = 1;
	mov	r7,#0x01
;	main.c:678: warning_operation();
	push	ar7
	push	ar6
	lcall	_warning_operation
;	main.c:679: update_lcd();
	lcall	_update_lcd
	pop	ar6
	pop	ar7
	ljmp	00121$
00109$:
;	main.c:683: warning_operation();
	push	ar7
	push	ar6
	lcall	_warning_operation
	pop	ar6
	pop	ar7
	ljmp	00121$
00115$:
;	main.c:688: if(prev_state != 2)
	cjne	r7,#0x02,00188$
	sjmp	00112$
00188$:
;	main.c:690: prev_state = 2;
	mov	r7,#0x02
;	main.c:691: critical_operation();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_critical_operation
;	main.c:692: update_lcd();
	lcall	_update_lcd
	pop	ar4
	pop	ar5
;	main.c:694: log_event(temp, 2);
	mov	_log_event_PARM_2,#0x02
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	_log_event
;	main.c:696: lcd_clear();
	lcall	_lcd_clear
;	main.c:697: lcd_cmd(0x80);
	mov	dpl, #0x80
	lcall	_lcd_cmd
;	main.c:698: lcd_string("EVENT LOGGED!");
	mov	dptr,#___str_25
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:699: lcd_cmd(0xC0);
	mov	dpl, #0xc0
	lcall	_lcd_cmd
;	main.c:700: lcd_string("Temp: ");
	mov	dptr,#___str_26
	mov	b, #0x80
	lcall	_lcd_string
	pop	ar4
	pop	ar5
;	main.c:701: display_temperature(temp);
	mov	dpl, r4
	mov	dph, r5
	lcall	_display_temperature
;	main.c:702: lcd_data(223);
	mov	dpl, #0xdf
	lcall	_lcd_data
;	main.c:703: lcd_data('C');
	mov	dpl, #0x43
	lcall	_lcd_data
;	main.c:704: lcd_string(" SHUTDOWN");
	mov	dptr,#___str_27
	mov	b, #0x80
	lcall	_lcd_string
;	main.c:706: update_lcd();
	lcall	_update_lcd
	pop	ar6
	pop	ar7
	ljmp	00121$
00112$:
;	main.c:710: critical_operation();
	push	ar7
	push	ar6
	lcall	_critical_operation
	pop	ar6
	pop	ar7
;	main.c:714: delay(10);
;	main.c:716: }
	ljmp	00121$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "No Events Logged"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Release to exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Total Events: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Hold to view logs"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "#"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii ": "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "SAFE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "WARNING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "SHUTDOWN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "<<< LOGS MODE >>>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "<<< MONITORING >>>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "TEMP: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "STATUS: SAFE     "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "STATUS: WARNING  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "STATUS: SHUTDOWN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Overheat System"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "v5.0 Ready..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Time: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Date: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "W:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " C:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Hold VIEW for logs"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "EVENT LOGGED!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Temp: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " SHUTDOWN"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
