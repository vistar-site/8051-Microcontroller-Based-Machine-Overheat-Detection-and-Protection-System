# 8051 Microcontroller-Based Machine Overheat Detection and Protection System

An embedded system designed to monitor machine temperature, detect overheating, generate alerts, and automatically shut down a machine when critical temperature levels are reached.

## 📌 Project Overview

This project was developed as part of **CS 356 – Embedded Systems** during the third year, second semester of the Computer Engineering and IT programme at the University of Dar es Salaam.

The system uses an **AT89C51 (8051) microcontroller** to continuously monitor machine temperature using an LM35 sensor. Based on predefined temperature thresholds, it determines the machine's operating state, activates warning indicators, controls a shutdown relay, and records important events for later review.

The main goal is to provide an automated and cost-effective approach to machine temperature monitoring and overheat protection.

## ⚙️ System Features

- Real-time machine temperature monitoring.
- Temperature display using a 16×2 LCD.
- Three operating states: SAFE, WARNING, and CRITICAL.
- Visual alerts using red and green LEDs.
- Audible alerts using a buzzer.
- Automatic machine shutdown through relay control.
- Event logging using I²C EEPROM.
- Date and time tracking using a DS1307 RTC.
- Monitoring and Logs modes selected through a toggle switch.
- Serial event monitoring through Proteus Virtual Terminal.
- SMS notification logic during warning and critical state transitions.

## 🌡️ Operating Logic

The system uses three temperature states:

| Temperature | State | System Response |
|---|---|---|
| Below 70°C | SAFE | Green LED ON, machine running |
| 70°C–84°C | WARNING | Red LED and buzzer alerts, machine continues running |
| 85°C and above | CRITICAL | Alarm activated, event logged, relay switched OFF |

When the temperature reaches the critical threshold, the system de-energizes the relay to stop the machine and protect it from overheating.

## 🔩 Hardware Components

| Component | Purpose |
|---|---|
| AT89C51 (8051) | Main microcontroller |
| LM35 | Temperature sensing |
| ADC0804 | Analog-to-digital conversion |
| 16×2 LCD | Temperature and status display |
| 24C04 EEPROM | Event storage |
| DS1307 RTC | Date and time tracking |
| BC547 Transistor | Relay driver |
| 12V SPDT Relay | Machine shutdown control |
| Red and Green LEDs | Visual indicators |
| Buzzer | Audible warning |
| Toggle Switch | Operating mode selection |
| Virtual Terminal | Serial monitoring and debugging |

## 💻 Software and Development Tools

- **Embedded C:** Firmware development.
- **Keil µVision 5:** Code development and C51 compilation.
- **Proteus Design Suite 8.10:** Circuit design and simulation.

## 🏗️ System Architecture

The system is divided into four main subsystems:

1. **Input Subsystem:** LM35 temperature sensor, ADC0804 and toggle switch.
2. **Processing Subsystem:** AT89C51 microcontroller, responsible for processing readings and controlling system operations.
3. **Output Subsystem:** LCD, LEDs, buzzer, relay and Virtual Terminal.
4. **Storage Subsystem:** 24C04 EEPROM and DS1307 RTC for event storage and timestamps.

### System Workflow

1. The LM35 senses the machine temperature.
2. ADC0804 converts the analog signal into digital data.
3. The AT89C51 processes the temperature reading.
4. The system compares the reading against predefined thresholds.
5. The LCD displays the temperature and current status.
6. LEDs, buzzer and relay respond according to the operating state.
7. Critical events are stored in EEPROM with date and time information.
8. Users can switch to Logs Mode to review recorded events.

## 🔄 Embedded System Concepts Implemented

This project provided practical implementation of:

- 8051 microcontroller programming.
- Embedded C programming.
- Sensor interfacing.
- ADC interfacing and data conversion.
- LCD interfacing.
- I²C communication protocol using software bit-banging.
- EEPROM read/write operations.
- RTC integration.
- UART serial communication.
- State-machine design.
- Relay and actuator control.
- Hardware-software integration.

## 🧪 Testing and Validation

The system was simulated and tested in Proteus using different temperature conditions.

| Test Temperature | Expected Result | Outcome |
|---|---|---|
| 37°C | SAFE operation | Passed |
| 75°C | WARNING alerts | Passed |
| 90°C | CRITICAL shutdown | Passed |

Additional tests verified event logging, timestamp retrieval, LCD updates, and switching between Monitoring and Logs modes.

The simulated temperature readings matched the applied test values at the three tested points.

## 🚀 Future Improvements

Possible enhancements include:

- Multiple temperature sensors for monitoring different machine sections.
- Wireless communication for remote monitoring and control.
- Increased EEPROM storage capacity.
- Predictive maintenance using temperature trend analysis.
- A web-based dashboard for remote monitoring and visualization.

## 🎓 Learning Outcomes

This project strengthened my understanding of how hardware and software work together to build practical solutions.

It provided hands-on experience in microcontroller programming, peripheral interfacing, communication protocols, data storage, system logic, simulation, and debugging.

More importantly, it demonstrated how basic electronic components can be combined and programmed to solve real-world engineering problems.

---

**Course:** CS 356 – Embedded Systems  
**Institution:** University of Dar es Salaam (UDSM)  
**Programme:** Computer Engineering and Information Technology  
**Project:** Machine Overheat Detection and Protection System

**Developed by:** Vistar Chrispin Lyimo and Project Team
