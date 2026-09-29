# COMPUTER HARDWARE TECHNOLOGY — SUMMARISED STUDY NOTES
**University of Rwanda | College of Science and Technology**
**Course: Computer Hardware and Maintenance | Academic Year 2025-2026**
**Lecturer: Mr. NAHIMANA Godefroid**

---

## SECTION A: MICROPROCESSORS

---

### A.1 Computer Organization

A computer system is made up of five functional blocks that work together:

```
 ┌────────────┐        ┌────────────────────────┐        ┌────────────┐
 │   INPUT    │───────▶│  COMPUTER (CPU/ALU/CU) │───────▶│   OUTPUT   │
 │  DEVICES   │        │  ┌──────────────────┐  │        │  DEVICES   │
 │ • Keyboard │        │  │  Control Unit    │  │        │ • Monitor  │
 │ • Mouse    │        │  ├──────────────────┤  │        │ • Printer  │
 │ • Scanner  │        │  │  ALU             │  │        └────────────┘
 └────────────┘        │  ├──────────────────┤  │
                       │  │  Registers       │  │
                       │  └──────────────────┘  │
                       │  ┌──────────────────┐  │
                       │  │  MEMORY (RAM)    │  │
                       │  └──────────────────┘  │
                       └────────────────────────┘
                                   │
                       ┌────────────────────────┐
                       │  BACKING STORAGE (HDD) │
                       └────────────────────────┘
```

| Block | Function |
|---|---|
| **Input Unit** | Receives data from user (keyboard, mouse, scanner) |
| **Control Unit (CU)** | Decodes instructions, directs data flow, generates control signals |
| **ALU** | Performs arithmetic (+, −, ×, ÷) and logical (AND, OR, XOR) operations |
| **Registers** | Fastest temporary storage inside CPU for active data |
| **Memory (RAM)** | Volatile primary storage for current programs and data |
| **Output Unit** | Presents results (monitor = softcopy, printer = hardcopy) |
| **Backing Storage** | Non-volatile permanent storage (HDD, SSD, CD-ROM) |

---

### A.2 The Three Components of a Processor

```
┌──────────────────────────────────────────┐
│                   CPU                    │
│  ┌──────────────────┬───────────────┐   │
│  │  ALU             │  Registers    │   │
│  ├──────────────────┴───────────────┤   │
│  │         Control Unit (CU)        │   │
│  └──────────────────────────────────┘   │
└──────────────────────────────────────────┘
```

1. **Control Unit (CU):** Fetches and decodes instructions; coordinates data movement between CPU components and external devices.
2. **ALU:** Executes all arithmetic and logical operations.
3. **Registers:** Fastest memory in the system; temporarily hold variables, addresses, and instruction codes during execution.

---

### A.3 Processor Bit Width and RAM Support

| Processor Width | Max RAM Addressable |
|---|---|
| 32-bit | 2³² = ~4 GB |
| 64-bit | 2⁶⁴ = ~18.4 Exabytes (EB) |

---

### A.4 Factors Influencing Processor Performance

| Factor | Description |
|---|---|
| **Clock Speed** | Measured in GHz/MHz; higher = more instructions per second |
| **Bus Width (Data)** | More bits per cycle = faster transfer (32-bit vs 64-bit) |
| **Cache Memory** | L1 (fastest, smallest, in CPU core), L2 (on processor), L3 (shared by all cores) |
| **Number of Cores** | More cores = true parallel processing and multitasking |
| **Address Bus Size** | Determines maximum addressable RAM |
| **System RAM** | More RAM = less use of slow secondary storage |

- **Processor speed** is measured in **GHz (Gigahertz)**.
- **Data transfer rate** is measured in **MB/s or Mbps**.

---

### Section A Review Questions

**Q1.** Give a diagram of computer organization and explain the function of each block.

**Q2.** With the help of a diagram, explain the basic three components of a processor.

**Q3.** How much RAM size would a 64-bit processor support?

**Q4.** Explain the factors influencing the performance of the processor.

**Q5.** The speed of the processor is measured in _______ while the data transfer rate is measured in _______.

---

## SECTION B: MEMORIES

---

### B.1 Types of Memory

| Type | Description | Examples |
|---|---|---|
| **Primary Memory** | Directly accessed by CPU via system bus; fast, small, mostly volatile | RAM, ROM |
| **Secondary Memory** | Not directly addressed by CPU; connected via I/O channels; slower, larger, non-volatile | HDD, Floppy Disk |
| **Mass Storage** | High-capacity secondary storage for archiving large volumes of data at low cost | HDD, Tape Drives, Optical Disks |

---

### B.2 Key Memory Terminology

| Term | Definition |
|---|---|
| **Storage Capacity** | Total data a device can hold: Capacity (bits) = Number of Locations × Word Length |
| **Memory Word** | Fixed-size group of bits accessed together as one unit |
| **Storage Location** | Specific uniquely-addressed block in memory that holds one word |
| **Word Length** | Number of bits in one memory word (8-bit, 16-bit, 32-bit, 64-bit) |

---

### B.3 Memory Performance Parameters

| Term | Formula | Description |
|---|---|---|
| **Access Time (tA)** | — | Time from read/write command to data available |
| **Cycle Time (tC)** | tC = tA + tDELAY | Minimum time between two consecutive accesses |
| **Access Rate (bA)** | bA = 1 / tA | Accesses per second |
| **Bandwidth (bC)** | bC = 1 / tC | Maximum data transferred per second |

**Worked Example:** Access time = 50 ns, Precharge delay = 20 ns
- tC = 50 + 20 = **70 ns**
- bA = 1/50×10⁻⁹ = **20 Mwords/sec**
- bC = 1/70×10⁻⁹ ≈ **14.29 Mwords/sec**

---

### B.4 Magnetic Memory — Track Organization

```
       ┌─────────────────────────────────┐
       │     ┌─────────────────────┐     │   ◀── Track 3 (outermost)
       │     │   ┌─────────────┐   │     │   ◀── Track 2
       │     │   │   ┌─────┐   │   │     │   ◀── Track 1
       │     │   │   │     │   │   │     │   ◀── Track 0 (innermost)
       │     │   │   └─────┘   │   │     │
       │     │   └─────────────┘   │     │
       │     └─────────────────────┘     │
       └─────────────────────────────────┘
```

- **Tracks:** Concentric circular paths on the disk surface.
- **Sectors:** Each track is divided into sectors (smallest addressable unit = 512 bytes or 4096 bytes).
- **Seek Time:** Time for the read/write head to move to the correct track.
- **Rotational Latency:** Time waiting for the desired sector to spin under the head.
- Floppy disk (3.5-inch): 40 tracks; data search starts from Sector 1 of Track 0.

---

### B.5 How a Hard Disk Reads and Writes

**Writing:**
- Current pulses through the write head coil create a magnetic field.
- Magnetic particles on the platter align in a direction (representing flux).
- Reversing current = flux reversal = change between 0 and 1.

**Reading:**
- Spinning magnetized platter induces a tiny voltage in the read head coil.
- Polarity transitions of induced voltage decode into binary 0s and 1s.

**Advantages of HDD:**
- Very large capacity, low cost per bit, non-volatile, fast data access.

**Disadvantages of HDD:**
- Slower than RAM (mechanical parts), susceptible to shock, generates heat, serial data transfer.

---

### B.6 Optical Memory

Optical memories use **laser technology** to read/write data:

| Feature | Detail |
|---|---|
| **Pits** | Microscopically small depressions; scatter laser light → binary **0** |
| **Lands** | Flat reflective areas; reflect laser directly to sensor → binary **1** |

**Reading CD-ROM:**
1. Spindle motor spins the disc.
2. Low-power laser beam aims at the underside of the disc.
3. Reflected light from lands/pits detected by a photo detector.
4. Pattern of light converted to binary data stream.
5. Speed multiplier: 1x = 150 KB/s.

**Writing CD-R:**
- High-power writing laser burns a dye layer, creating dark areas (like pits) that scatter light → read as 0.

**Storage Capacities:**

| Format | Capacity |
|---|---|
| CD | Up to 650–700 MB |
| DVD (single-sided) | 4.7 GB |
| DVD (double-sided, double-layer) | Up to 17 GB |
| Blu-ray | 25 GB to 128 GB |

**Advantages of CD-ROM:** Low cost, portable, durable, no moving heads, immune to magnetic corruption.
**Disadvantages of CD-ROM:** Read-only (standard), slow access, fragile surface, low capacity vs HDD.

---

### B.7 Semiconductor Memory Organization

```
                    ┌─────────────────────────────────────────┐
                    │          SEMICONDUCTOR MEMORY            │
    n-bit           │  ┌──────────────┐  ┌─────────────────┐  │
  Address Bus ─────▶│  │ Memory       │  │  Storage Cell   │  │  m-bit
                    │  │ Address Reg  │──│  Array          │──│─── Data Bus
  Control    ─RD───▶│  ├──────────────┤  ├─────────────────┤  │
  Signals    ─WR───▶│  │ Address      │  │  Read/Write     │  │
             ─CS───▶│  │ Decoder      │  │  Control        │  │
                    │  └──────────────┘  ├─────────────────┤  │
                    │                    │  Memory Buffer  │  │
                    │                    │  Register (MBR) │  │
                    │                    └─────────────────┘  │
                    └─────────────────────────────────────────┘
```

| Component | Function |
|---|---|
| **Storage Cell Array** | Matrix of cells (flip-flops for SRAM, capacitors for DRAM); each cell = 1 bit |
| **MAR (Memory Address Register)** | Holds address from address bus |
| **Address Decoder** | Selects specific row/column in the cell array |
| **Read/Write Control** | Manages data direction using RD, WR, CS signals |
| **MBR (Memory Buffer Register)** | Holds data word during read/write transfers |

---

### B.8 Memory Cell Addressing

```
        C0    C1    C2    C3
   R0 ┌─────┬─────┬─────┬─────┐
      │  0  │  1  │  2  │  3  │
   R1 ├─────┼─────┼─────┼─────┤
      │  4  │  5  │  6  │  7  │
   R2 ├─────┼─────┼─────┼─────┤
      │  8  │  9  │ 10  │ 11  │
   R3 ├─────┼─────┼─────┼─────┤
      │ 12  │ 13  │ 14  │ 15  │
      └─────┴─────┴─────┴─────┘
      4×4 = 16 Cells
```

- Each cell is identified by its Row + Column address.
- To select cell 10: activate **Row R2** and **Column C2**.
- Any cell can be accessed randomly — hence the name **RAM (Random Access Memory)**.
- **Selection Steps:** CPU → Address Bus → MAR → Address Decoder activates row line + column line → cell at intersection is selected → MBR transfers data.

---

### B.9 DRAM vs SRAM

| Feature | DRAM (Dynamic RAM) | SRAM (Static RAM) |
|---|---|---|
| **Storage Element** | Capacitor + transistor (1 cell = 1T+1C) | Flip-flop circuit (1 cell ≈ 6 transistors) |
| **Refresh Needed?** | Yes — capacitors leak charge | No — data held statically while power on |
| **Speed** | Slower | Extremely fast (< 10 ns) |
| **Cost per bit** | Low (cheap) | High (expensive) |
| **Density** | High (more bits per chip) | Low (fewer bits per chip) |
| **Primary Use** | System main memory (RAM) | CPU Cache (L1, L2, L3) |

---

### Section B Review Questions

**Q1.** What is meant by primary memory, secondary memory, and mass storage devices?

**Q2.** Define the terms: storage capacity, memory word, storage location, and word length.

**Q3.** Define: (i) Access Time, (ii) Cycle Time, (iii) Bandwidth, (iv) Volatile Memories.

**Q4.** Explain the organization of tracks in magnetic memories with the help of a figure.

**Q5.** What are optical memories?

**Q6.** Explain basic semiconductor memory organization with the help of a figure.

**Q7.** With the help of a figure, explain memory cell addressing.

**Q8.** Explain the memory cell organization. How can a particular cell be selected?

**Q9.** A memory has access time of 50 ns and precharge time of 20 ns. Find the access rate and bandwidth.

**Q10.** What is Dynamic RAM? Why is it most widely used?

**Q11.** What is Static RAM? Why is it most widely used for cache?

**Q12.** Explain how a hard disk reads information it stores.

**Q13.** Provide advantages and disadvantages of a hard disk as a storage medium.

**Q14.** Explain how the CD-ROM stores data.

**Q15.** Provide advantages and disadvantages of a CD-ROM as a storage medium.

---

## SECTION C: SYSTEM BUSES AND BASIC CARDS

---

### C.1 The Computer System Bus

A **system bus** is a collection of parallel conductive traces on a motherboard serving as a shared communication pathway connecting the CPU, memory (RAM), and I/O devices. It carries address, data, and control signals.

```
┌─────────────────────────────────────────────────────────────────┐
│                         SYSTEM BUS                              │
│  ┌──────────┐    ┌──────────────┐    ┌────────────────────────┐ │
│  │   CPU    │    │   Memory     │    │  Input/Output Devices  │ │
│  └────┬─────┘    └──────┬───────┘    └───────────┬────────────┘ │
│       │  ↕              │  ↕                     │  ↕           │
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Control Bus
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Address Bus
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Data Bus
└─────────────────────────────────────────────────────────────────┘
```

---

### C.2 Types of System Buses

| Bus Type | Direction | Function | Common Signals/Sizes |
|---|---|---|---|
| **Data Bus** | Bidirectional | Carries actual data between CPU, RAM, and I/O | 8-bit, 16-bit, 32-bit, 64-bit |
| **Address Bus** | Unidirectional (CPU → devices) | Carries memory addresses to identify locations | 32-bit = 4 GB, 64-bit = 18.4 EB |
| **Control Bus** | Mixed | Carries timing and control signals | MEMR, MEMW, IOR, IOW, SYSCLK, IRQ |

**Operation sequence:**
1. CPU writes target address onto the **Address Bus**.
2. CPU sends control signal (e.g., MEMW) on the **Control Bus**.
3. Data is placed on the bidirectional **Data Bus** and transferred.

---

### C.3 Internal Bus vs External (Expansion) Bus

| Feature | Internal Bus (System Bus) | External Bus (Expansion Bus) |
|---|---|---|
| **Connects** | CPU, RAM, motherboard components | Peripherals, expansion cards, I/O ports |
| **Speed** | Faster | Slower |
| **Examples** | Front Side Bus, Memory Bus | PCI, ISA, USB, AGP |
| **Purpose** | Core system communication | Expand computer capabilities |

---

### C.4 Expansion Slots on a Motherboard

| Slot Type | Width | Speed | Key Feature |
|---|---|---|---|
| **ISA** (Industry Standard Architecture) | 16-bit | 8 MHz | Legacy AT slot; manual configuration; obsolete |
| **EISA** (Extended ISA) | 32-bit | 8 MHz | Software-configured; supports multiple bus masters; taller socket |
| **PCI** (Peripheral Component Interconnect) | 32-bit (or 64-bit) | 33 MHz | Plug-and-Play; standard in ATX motherboards |
| **AGP** (Accelerated Graphics Port) | 32-bit | Up to 1 GB/s | Dedicated video card slot; faster than PCI |
| **PCIe** (PCI Express) | Serial lanes | Very high | Modern replacement for PCI and AGP |
| **USB** (Universal Serial Bus) | External | Up to 450 Mbps | Hot-plug; up to 127 devices; Plug-and-Play |

**ISA vs EISA:**
- ISA: 16-bit, manual jumper config, limited bus mastering.
- EISA: 32-bit, software config, multiple bus masters, no IRQ/DMA required, taller slot.

**ISA vs PCI:**
- ISA: 16-bit, 8 MHz, no PnP, obsolete.
- PCI: 32-bit, 33 MHz, Plug-and-Play, standard in modern systems.

---

### C.5 IRQ Lines, DMA Channels, and I/O Addresses

**Interrupt Request Lines (IRQs):**
- Hardware pathways from devices to the CPU's interrupt controller.
- When a device needs attention, it signals its IRQ line.
- CPU suspends current task → executes **Interrupt Service Routine (ISR)** → resumes task.
- Two devices sharing the same IRQ = system conflict/crash.
- Example: Keyboard uses IRQ 1.

**DMA (Direct Memory Access) Channels:**
- Allow devices (HDD, sound card, CD-ROM) to transfer data directly to/from RAM without CPU involvement.
- Frees CPU for other tasks; each device needs a unique DMA channel.
- Conflict: Two devices on same DMA channel = system freeze.

**I/O Addresses:**
- Unique hexadecimal memory addresses assigned to each hardware device.
- CPU sends commands to a device by writing to its I/O address.
- Acts like a "reverse IRQ" — the CPU initiating communication with the device.
- Each device must have a unique I/O address.

---

### C.6 Bus Mastering

- A device containing built-in bus controller circuitry can **take control of the system bus**.
- It performs data transfers to/from memory independently, **without CPU involvement**.
- Frees the CPU to handle other tasks simultaneously.
- Supported by: PCI devices, EISA slots.
- Benefit: Significantly improves overall system performance.

---

### C.7 Selecting a Network Interface Card (NIC)

Factors to consider when purchasing a NIC:

1. **Network Type** — Match NIC to network topology (Ethernet, Token Ring, FDDI).
2. **Transmission Medium** — Match connector to cable type (RJ-45 for twisted-pair, fiber-optic, wireless).
3. **System Bus Slot** — PCI for high-speed networks; must match available motherboard slot.
4. **Data Transfer Speed** — 10 Mbps, 100 Mbps (Fast Ethernet), 1 Gbps (Gigabit).
5. **Driver Support** — Must have verified drivers for the installed operating system.
6. **IRQ/I/O Compatibility** — No resource conflicts with existing hardware.

---

### Section C Review Questions

**Q1.** Define a computer system bus.

**Q2.** Explain the types of system buses based on the type of information they carry.

**Q3.** What is the difference between internal and external buses?

**Q4.** What do you understand by expansion bus?

**Q5.** With a block diagram, explain the system bus related to computer operation.

**Q6.** Explain various expansion slots available on a computer motherboard.

**Q7.** Give the difference between ISA and EISA expansion slots.

**Q8.** Differentiate ISA from PCI expansion slots.

**Q9.** What do you understand by interrupt request lines in a computer?

**Q10.** Explain the function of DMA channels and I/O addresses.

**Q11.** Explain the term "Bus Mastering."

**Q12.** Explain the factors you would base on while selecting a network interface card (NIC) to purchase.

---

## SECTION D: POWER DEVICES

---

### D.1 The Power Supply Unit (PSU)

The PSU converts **commercial AC power** (120V or 220V) into **stable low-voltage DC** for internal computer components.

**Function of computer power supply:** Convert AC to DC.

---

### D.2 AT Power Supply — Voltage Levels and Wire Colors

| Voltage | Wire Color | Component / Use |
|---|---|---|
| **+12V** | Yellow | Disk drive motors, cooling fans, expansion slots |
| **-12V** | Blue | Serial ports, legacy programmable ROM (PROM) chips |
| **+5V** | Red | Motherboard logic circuits, CPUs, memory chips |
| **-5V** | White | ISA bus cards, older DRAM chips |
| **0V (Ground)** | Black | Completes electrical circuits |

- AT power supply uses **two 6-pin connectors (P8 and P9)**.
- When connecting P8 and P9: **black ground wires must face the center** (adjacent to each other). Reversing damages the motherboard.
- AT power supply does **NOT** produce +3.3V.

---

### D.3 AT vs ATX Power Supply

| Feature | AT Power Supply | ATX Power Supply |
|---|---|---|
| **Motherboard Connector** | Two 6-pin (P8/P9) | Single 20-pin or 24-pin (P1) keyed connector |
| **Voltage Rails** | +12V, -12V, +5V, -5V (4 levels) | +12V, -12V, +5V, -5V, **+3.3V** (5 levels) |
| **+3.3V Output** | No | Yes (for newer CPUs, AGP cards, DDR RAM) |
| **Power Switch** | Physical high-voltage toggle (hard switch) | Software-controlled (Soft-Off / Sleep state) |
| **Airflow** | Blows air onto AT motherboard | Fan exhausts air out the rear of the case |
| **Form Factor** | Older AT-compatible boards | Modern ATX motherboards |

**ATX additional wire color:** +3.3V = **Orange**.

---

### D.4 UPS — Uninterruptible Power Supply

#### Off-line UPS (Standby UPS)
- Equipment runs **directly from AC mains** during normal operation.
- Battery and inverter are on **standby**.
- When power fails: mechanical transfer switch activates — brief interruption of **2–10 milliseconds**.
- **Limitation:** No protection against power line noise, sags, or surges during normal operation.

#### On-line UPS (Double-Conversion / Continuous UPS)
- Equipment **always runs from the battery/inverter** (never directly from mains).
- AC mains continuously charges the battery.
- **Zero transfer time** when mains fails — equipment experiences no interruption.
- Protects against ALL power problems: failures, sags, surges, spikes, frequency shifts.
- Also called a **Power Line Conditioner**.

| Feature | Off-line UPS | On-line UPS |
|---|---|---|
| **Normal operation** | Runs from mains AC | Runs from battery inverter |
| **Transfer time** | 2–10 ms interruption | Zero interruption |
| **Power conditioning** | Limited | Full (conditions all power) |
| **Cost** | Lower | Higher |
| **Other name** | Standby UPS | Power Conditioner / Double-Conversion UPS |

---

### Section D Review Questions

**Q1.** Give different DC voltage levels produced by AT power supply with their use. Specify the colors of the power supply wires with their voltages.

**Q2.** What are the main differences between AT and ATX power supplies?

**Q3.** What is an off-line UPS?

**Q4.** What is an Online UPS?

**Q5.** What is the function of the computer power supply?
- a) Convert DC to AC
- b) Convert AC to DC
- c) Eliminate spikes in electricity
- d) Eliminate brownout in electricity

**Q6.** Match the power supply voltage to the standard wire color:

| Voltage | Wire Color |
|---|---|
| +12VDC | ? |
| -12VDC | ? |
| +5VDC | ? |
| -5VDC | ? |
| +3.3VDC | ? |
| Ground | ? |

**Q7.** How many volts do disk drive motors require?
- a) 3.3V  b) 5V  c) 12V  d) 120V

**Q8.** Which colored wire from a power supply is the ground?
- a) Red  b) Black  c) Yellow  d) Blue

---

## SECTION E: COMPUTER HARDWARE COMPONENTS

---

### E.1 POST — Power-On Self-Test

The **BIOS** runs the POST every time the computer is powered on. It verifies that major hardware is functioning before booting the OS.

**POST Steps:**
1. CPU checks itself and the system timer.
2. BIOS ROM checksum verified.
3. System timer and control buses checked.
4. Video card initialized — allows messages on screen.
5. RAM test: data patterns written to all addresses and read back.
6. Keyboard inspection — verifies it is connected and no keys are stuck.
7. Secondary devices checked (disk controllers, drives).
8. POST completes → **single short beep** → BIOS loads OS boot sector.

**If POST fails before video:**
- BIOS outputs **beep codes** (AMI BIOS: 5 short beeps = CPU error).

---

### E.2 ATX Motherboard Identification

How to identify an ATX motherboard:
1. **Single 20-pin or 24-pin power connector (P1)** — not the AT's P8/P9 pair.
2. **Integrated rear I/O port** — PS/2, USB, Serial, Parallel ports built into the board edge.
3. **Expansion slots parallel to the short side** of the board.
4. **CPU and RAM near power supply** to share cooling airflow.
5. **Supports 3.3V** from the ATX PSU.
6. **Soft-power features** — software shutdown and sleep state.
7. Approximately **12" × 9.6"** standard size.

---

### E.3 Heat Sink Function

- Attached directly to the CPU to **dissipate heat** generated during operation.
- Combined with a cooling fan.
- Without cooling: processor overheats, operates intermittently, or fails permanently.

---

### E.4 Hard Disk Drive Configuration and Installation

**Step-by-step HDD installation:**
1. **Set Jumpers** — Master, Slave, or Cable Select position on the drive.
2. **Choose drive bay** — Select a 3.5" bay in the computer case.
3. **Slide drive into bay** — Label side up, circuit board down, screw holes aligned.
4. **Secure with screws** — Hand-tighten then finish with screwdriver; do not overtighten.
5. **Connect ribbon data cable** — 40-pin/80-conductor IDE cable; red stripe (Pin 1) aligned with Pin 1 on drive and motherboard.
6. **Connect power cable** — 4-pin Molex connector from PSU to drive power port.
7. **Verify connections** — No bent pins, cable fully seated.
8. **BIOS detection** — Boot, enter BIOS (DEL/F2), verify drive detected; set as boot device if needed.

---

### E.5 Partitioning and Formatting

**Why partition a hard disk before installing an OS:**
1. Organize data separately (OS vs user data).
2. Support multiple operating systems (Windows + Linux).
3. Improve performance (shorter seek times per partition).
4. File system flexibility (FAT32, NTFS, ext4 on separate partitions).
5. Data protection — corruption in one partition leaves others safe.
6. Make drive bootable (set partition as **Active**).
7. Manage large disks (FAT16 had a 2 GB limit).

**Why format a drive:**
1. Creates file system structure (FAT/NTFS directory).
2. Prepares root directory for file storage.
3. Marks **bad sectors** so OS avoids them.
4. Makes disk bootable with `/S` flag (copies system boot files).
5. Erases existing data for a clean start.
6. Establishes track and sector boundaries for file storage.

---

### E.6 Standoffs

**Standoffs** are small pegs/risers between the motherboard and the case:
1. Prevent **short circuits** between motherboard traces and the metal chassis.
2. Provide **physical support** and prevent board flexing.
3. Maintain **alignment** of I/O ports, expansion slots, and connectors with case openings.
4. Create a **gap for airflow** under the motherboard.

---

### E.7 Processor Failure — Causes and Troubleshooting

**Causes of processor failure:**
1. Overheating (fan failure, dry thermal paste).
2. Incorrect installation (CPU backwards, bent pins).
3. Wrong voltage jumper settings.
4. Electrostatic Discharge (ESD) during handling.
5. Power surges from the PSU.
6. Physical damage (dropping).
7. Incompatible motherboard chipset/socket.

**Troubleshooting steps:**
1. Verify CPU fan spins and heat sink is properly seated with thermal compound.
2. Check voltage settings in BIOS or motherboard jumpers.
3. Inspect CPU socket and pins for damage; check ZIF lever is locked.
4. Use an **anti-static wrist strap** when handling the CPU.
5. Listen for **BIOS beep codes** (5 short beeps on AMI BIOS = CPU error).
6. Test with a **known-good CPU** in the same socket to isolate CPU vs. motherboard.
7. Verify PSU voltages with a multimeter.

---

### E.8 Data Bus on the Motherboard

**Functions of the data bus:**
- Bidirectional: transfers data between CPU, RAM, and I/O devices.
- Write operation: data flows from CPU → memory.
- Read operation: data flows from memory → CPU.
- Determines how much data is processed per clock cycle (computer word size).

**Common bus sizes:**

| Bus Width | Era / System |
|---|---|
| 8-bit | Very old systems (8088, 8086) |
| 16-bit | ISA bus, AT systems (80286) |
| 32-bit | PCI, 80386/486/Pentium |
| 64-bit | Modern CPUs (current standard) |

---

### E.9 Build vs Buy a PC

**7 Reasons to BUILD your own PC:**
1. **Component quality** — choose each part individually.
2. **Custom specifications** — tailored to your exact needs.
3. **Cost savings** — avoid markups and bloatware licenses.
4. **Knowledge gained** — deep understanding of hardware.
5. **Easier upgrades** — full knowledge of installed components.
6. **No bloatware** — clean OS installation.
7. **Better warranties** — individual part warranties often longer.

**3 Reasons to BUY a ready-made PC:**
1. **Convenience** — plug-and-play, no assembly.
2. **Unified support** — one manufacturer handles all repairs.
3. **Pre-bundled software** — often includes licensed software at bulk prices.

---

### Section E Review Questions

**Q1.** Which basic operating system function receives data from the keyboard?
- a) Input  b) Processing  c) Output  d) Storage

**Q2.** In MS-DOS, which action results in a warm boot?
- a) Replacing the CPU  b) Pressing CTRL+ALT+DEL  c) Powering on the system  d) Regaining power after outage

**Q3.** Which type of motherboard supports 3.3 volts?
- a) AT  b) ATX

**Q4.** Which type of RAM is used for cache memory?
- a) SRAM  b) DRAM

**Q5.** Which type of storage device uses a laser to record information?
- a) Hard disk  b) Floppy disk  c) CD-RW  d) Tape drive

**Q6.** Which computer component can contain a dangerous amount of voltage?
- a) Motherboard  b) Monitor  c) Hard drive  d) CD-ROM

**Q7.** What is the result of installing LED connectors to the motherboard incorrectly?
- a) Motherboard will short out  b) LED will still work  c) LED will not work  d) Computer beeps constantly

**Q8.** How are the hard drive and CD-ROM configured to be master and slave?
- a) CMOS setup  b) During partitioning  c) Set jumpers  d) During formatting

**Q9.** True or False: Some keys to access CMOS Setup are DEL, CTRL+ALT+DELETE, and F2.

**Q10.** Explain the steps performed during the computer system POST (Power-On Self-Test).

**Q11.** How can you identify an ATX motherboard?

**Q12.** What is the purpose of the heat sink?

**Q13.** Discuss why you would choose to build your own PC rather than buy a ready-made PC.

**Q14.** What are the reasons for partitioning a hard disk before installing an operating system?

**Q15.** Why is it necessary to format a drive before using a storage device?

**Q16.** What are the functions of the standoffs that sit on the motherboard?

**Q17.** Give the causes of processor failure and how to troubleshoot it.

**Q18.** What are the functions of the data bus? What bus sizes can be on a motherboard?

**Q19.** Give the steps of hard disk drive configuration for installing in your personal computer.

**Q20.** Discuss how the CD-ROM reads data from the CD.

**Q21.** Explain how the Hard Disk Drive writes and reads data to and from platters.

---

## SECTION F: OPERATING SYSTEMS

---

### F.1 What is an Operating System?

An **Operating System (OS)** is a system software program that:
- Manages all computer hardware and software resources.
- Provides a user interface (CLI or GUI) between user and hardware.
- Coordinates memory allocation and execution schedules for application programs.
- Acts as the manager of everything happening inside the computer.

**Examples:** Microsoft Windows, Linux/Unix, macOS.

---

### F.2 Three Components of an Operating System

| Component | Description |
|---|---|
| **Kernel** | Core of the OS; loaded into memory on boot; manages hardware, memory, and process scheduling. All software relies on it for hardware access. |
| **User Interface (UI)** | The layer the user interacts with. Translates user input for the kernel. **CLI** (e.g., DOS command prompt) or **GUI** (e.g., Windows Desktop). |
| **File System** | Determines how files are named, organized, and stored on disk. Controls access and security. Examples: FAT32, NTFS, ext4. |

---

### F.3 Functions of an Operating System

1. **File and Folder Management** — Organizes and tracks files on secondary storage; assigns names and locations.
2. **Application Management** — Locates, loads applications into RAM, and allocates CPU time and memory.
3. **Utility Program Support** — Supports diagnostic tools (Disk Defragmenter, ScanDisk, Backup utilities).
4. **Hardware and Driver Control** — Controls peripherals via BIOS calls and device drivers.
5. **I/O Device Management** — Routes keyboard/mouse input; sends output to display/printer/network.

---

### F.4 OS Capability Types

| Type | Definition | Example |
|---|---|---|
| **Multiuser** | Two or more users share system resources simultaneously | Unix/Linux network server |
| **Multitasking** | CPU rapidly switches between multiple programs, appearing simultaneous | Windows running browser + music + download |
| **Multiprocessing** | System has two or more physical CPUs for true parallel execution | High-performance servers |
| **Multithreading** | One program splits into sub-threads executing concurrently | Word processor spell-checking while typing |

---

### F.5 The Disk Operating System (DOS) — Three Sections

| Section | Function | Examples |
|---|---|---|
| **Boot Files** | Initialize hardware during startup; load the OS | IO.SYS, MSDOS.SYS |
| **File Management Files** | Manage directory trees; handle internal commands | COMMAND.COM (DIR, COPY, DEL, MD, CD) |
| **Utility Files** | External tools for troubleshooting and configuration (loaded on demand) | FDISK.EXE, FORMAT.COM, SCANDISK.EXE, DEFRAG.EXE |

---

### F.6 DOS File Attributes

DOS files carry attributes (binary flags) that control their properties. Use the `ATTRIB` command to set or clear them.

| Attribute | Flag | Description |
|---|---|---|
| **Hidden** | H | File not shown in standard `DIR` listing; use `DIR /AH` to view |
| **Read-Only** | R | File can be read but cannot be modified or deleted |
| **Archive** | A | Marks file as needing backup; set automatically on creation/modification |
| **System** | S | Identifies core OS boot file; usually combined with Hidden attribute |

**Syntax:**
```
ATTRIB [+R or -R] [+A or -A] [+S or -S] [+H or -H] [filename]
```
- `+` sets the attribute, `-` clears it.

---

### Section F Review Questions

**Q1.** Define the term "Operating System."

**Q2.** Give and explain three components of any operating system.

**Q3.** Give and explain the functions of an Operating System.

**Q4.** Explain: (i) Multiuser, (ii) Multitasking, (iii) Multiprocessing, (iv) Multithreading.

**Q5.** What are the three distinct sections that make up the Disk Operating System? Explain each.

**Q6.** Give and explain the common attributes for DOS files.

---

## QUICK REFERENCE SUMMARY TABLES

---

### Power Supply Wire Colors (Full Reference)

| Wire Color | Voltage | Use |
|---|---|---|
| Yellow | +12V | Drive motors, fans |
| Blue | -12V | Serial ports, legacy chips |
| Red | +5V | Motherboard, memory, CPUs |
| White | -5V | ISA cards, older DRAM |
| Orange | +3.3V | ATX only: newer CPUs, AGP cards, DDR RAM |
| Black | 0V (Ground) | Completes all circuits |

---

### Memory Hierarchy (Fastest to Slowest)

| Level | Type | Speed | Volatile? | Use |
|---|---|---|---|---|
| 1 | Registers | Fastest | Yes | Active computation |
| 2 | L1 Cache (SRAM) | Very fast | Yes | CPU core cache |
| 3 | L2/L3 Cache (SRAM) | Fast | Yes | Processor-level cache |
| 4 | RAM (DRAM) | Moderate | Yes | Running programs |
| 5 | SSD / HDD | Slow | No | Permanent storage |
| 6 | Optical / Tape | Slowest | No | Archive/backup |

---

### Expansion Slot Quick Comparison

| Slot | Bits | Speed | PnP | Status |
|---|---|---|---|---|
| ISA | 16 | 8 MHz | No | Obsolete |
| EISA | 32 | 8 MHz | No | Obsolete |
| PCI | 32/64 | 33 MHz | Yes | Legacy |
| AGP | 32 | ~1 GB/s | Yes | Replaced by PCIe |
| PCIe | Serial | Very high | Yes | Current standard |

---

### Boot vs Warm Boot

| Type | Description | Example |
|---|---|---|
| **Cold Boot** | Starting the computer from powered-off state | Pressing power button |
| **Warm Boot** | Restarting without cutting power | CTRL+ALT+DEL, Reset button |

---

*End of Summarised Notes*
*University of Rwanda — Computer Hardware and Maintenance — Academic Year 2025-2026*
*Compiled from: COMPUTER HARDWARE NOTES, REVIEW QUESTIONS 1, and Master Study Guide*
