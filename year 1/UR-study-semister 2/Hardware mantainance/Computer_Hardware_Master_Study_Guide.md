# COMPUTER HARDWARE TECHNOLOGY — MASTER STUDY NOTES & EXAM PREPARATION GUIDE

**University of Rwanda | College of Science and Technology**
**Course: Computer Hardware and Maintenance**
**Academic Year: 2025-2026**
**Lecturer: Mr. NAHIMANA Godefroid**

---

## SECTION A: MICROPROCESSORS

### 💡 Core Summary
Microprocessors are the central processing units (CPUs) that act as the "brain" of the computer. The CPU is responsible for executing instructions, performing calculations, and coordinating data transfer between all other hardware components. Its performance is heavily influenced by factors such as clock speed, cache size, bus width, and core architecture.

---

### ❓ Review Questions & Detailed Answers

#### Question 1
**Give a diagram of a computer organization and explain the function of each block.**

**Answer:**
```
 ┌────────────┐        ┌────────────────────────┐        ┌────────────┐
 │   INPUT    │───────▶│  COMPUTER (CPU/ALU/CU) │───────▶│   OUTPUT   │
 │  DEVICES   │        │                        │        │  DEVICES   │
 │ • Keyboard │        │  ┌──────────────────┐  │        │ • Monitor  │
 │ • Mouse    │        │  │  Control Unit    │  │        │ • Printer  │
 │ • Scanner  │        │  ├──────────────────┤  │        └────────────┘
 └────────────┘        │  │  ALU             │  │
                       │  ├──────────────────┤  │
                       │  │  Registers       │  │
                       │  └──────────────────┘  │
                       │           ▲             │
                       │           │             │
                       │  ┌──────────────────┐  │
                       │  │  MEMORY (RAM)    │  │
                       │  └──────────────────┘  │
                       └────────────────────────┘
                                   │
                       ┌────────────────────────┐
                       │  BACKING STORAGE (HDD) │
                       └────────────────────────┘
```

* **Input Unit:** Devices (e.g., keyboard, mouse, scanner) used by the user to feed data and instructions into the computer system for processing.
* **Processing Unit (CPU):** The central core of the computer. It processes raw input data into meaningful information. It is comprised of:
  * **Control Unit (CU):** Directs the operations of the processor, retrieves instructions, decodes them, and manages data flow between CPU components and external devices.
  * **Arithmetic and Logic Unit (ALU):** Performs mathematical calculations (addition, subtraction, etc.) and logical comparisons (AND, OR, XOR) to facilitate decision-making.
  * **Registers:** High-speed, temporary internal storage locations within the CPU used to hold data currently undergoing execution.
* **Memory (RAM):** The primary memory that holds the data and program instructions currently in active use. It is volatile, meaning it loses its contents when power is turned off.
* **Output Unit:** Devices (e.g., monitors, printers) that display or present the results of data processing to the user. Softcopy represents output on a display screen; hardcopy represents printed output.
* **Backing Storage (Secondary Storage):** Non-volatile storage devices (e.g., Hard Disk Drives, SSDs, CD-ROMs) used to store files, programs, and the operating system permanently for future retrieval.

---

#### Question 2
**With the help of a diagram, explain the basic three components of a processor.**

**Answer:**
```
┌──────────────────────────────────────────┐
│                   CPU                    │
│  ┌──────────────────┬───────────────┐   │
│  │  Arithmetic and  │               │   │
│  │  Logic Unit      │  Registers    │   │
│  │  (ALU)           │               │   │
│  ├──────────────────┴───────────────┤   │
│  │         Control Unit (CU)        │   │
│  └──────────────────────────────────┘   │
└──────────────────────────────────────────┘
```
1. **Control Unit (CU):**
   * Decodes program instructions and directs their execution.
   * Manages the data flow between the processor, RAM, and peripheral devices.
   * Generates control signals to coordinate system timing and execution.
2. **Arithmetic and Logic Unit (ALU):**
   * Executes arithmetic instructions (addition, subtraction, multiplication, division).
   * Executes logical comparisons (AND, OR, NOT, XOR, evaluations of equal/greater/less-than) which dictate program branching.
3. **Registers:**
   * Provide the fastest memory access in the computer system.
   * Temporarily store variables, instruction codes, and memory addresses currently active in execution.

---

#### Question 3
**How much RAM size would a 64-bit processor support?**

**Answer:**
* A 64-bit processor can address up to $2^{64}$ memory locations.
* $2^{64}\text{ bytes} = 18,446,744,073,709,551,616\text{ bytes} \approx 18.4\text{ Exabytes}$ (EB) of RAM.
* By comparison, a 32-bit processor can address only $2^{32}\text{ bytes} \approx 4\text{ Gigabytes}$ (GB) of RAM.

---

#### Question 4
**Explain the factors influencing the performance of the processor.**

**Answer:**
1. **Processor Speed (Clock Speed):** Measured in Gigahertz (GHz). It represents the number of clock cycles the CPU executes per second (e.g., $3.2\text{ GHz} = 3.2\text{ billion cycles/sec}$). Higher speeds yield faster instruction execution.
2. **Bus Width (Data Bus Size):** Determines how much data can move between the CPU and memory at one time. A 64-bit data bus can move double the amount of data per cycle compared to a 32-bit bus.
3. **Cache Memory:** Ultra-fast Static RAM (SRAM) integrated into or near the processor to store frequently accessed data.
   * **L1 Cache:** Built directly into the CPU core; smallest size but fastest access.
   * **L2 Cache:** Slightly larger than L1, situated on the processor.
   * **L3 Cache:** Largest cache level, shared across all CPU cores.
4. **Number of Cores:** Multi-core processors integrate multiple physical processing units on a single chip, allowing true parallel processing and multitasking.
5. **Address Bus Size:** Determines the maximum addressable memory. A wider address bus allows the CPU to access a larger pool of physical RAM, reducing reliance on slow virtual memory.
6. **System RAM:** More RAM enables the processor to keep more active files in high-speed system memory instead of fetching them from slower secondary storage.

---

#### Question 5
**The speed of the processor is measured in _______ while the data transfer rate is measured in _______.**

**Answer:**
* Processor Speed: **Gigahertz (GHz)** or Megahertz (MHz).
* Data Transfer Rate: **Megabytes per second (MB/s)**, Gigabytes per second (GB/s), or Megabits per second (Mbps).

---

## SECTION B: MEMORIES

### 💡 Core Summary
Memory systems form a hierarchy ranging from fast, volatile, expensive internal storage (Registers, Cache, RAM) to slower, non-volatile, cheap external storage (HDD, CD-ROM). Storage devices use semiconductor, magnetic, or optical technologies to represent and hold binary data (0s and 1s).

---

### ❓ Review Questions & Detailed Answers

#### Question 1
**What is meant by primary memory, secondary memory, and mass storage devices?**

**Answer:**
* **Primary Memory:** The main memory (RAM/ROM) directly accessible by the CPU via the system bus. It holds instructions and data active in execution. It is fast, has relatively small capacity, and is mostly volatile (except ROM).
* **Secondary Memory:** Storage media not directly addressed by the CPU (connected via I/O channels/controllers like SATA). It holds files and programs that must be loaded into RAM before execution. It is slower, cheaper, and non-volatile.
* **Mass Storage Devices:** High-capacity secondary storage systems (e.g., Hard Disk Drives, Tape Drives, Optical Storage) used for archiving large volumes of data long-term at a very low cost-per-bit.

---

#### Question 2
**Define the terms: storage capacity, memory word, storage location, and word length.**

**Answer:**
* **Storage Capacity:** The total amount of binary data a memory device can hold, calculated as:
  $$\text{Storage Capacity (bits)} = \text{Number of Storage Locations} \times \text{Word Length}$$
* **Memory Word:** The natural unit of data used by a computer design, representing a fixed-sized group of bits handled together by the system.
* **Storage Location:** A specific block of cells in memory assigned to store a single word. Each storage location is mapped to a unique binary address.
* **Word Length:** The number of bits comprising a single memory word (e.g., 8-bit, 16-bit, 32-bit, or 64-bit).

---

#### Question 3
**Define the following terms: (i) Access Time, (ii) Cycle Time, (iii) Bandwidth, (iv) Volatile Memories.**

**Answer:**
* **(i) Access Time ($t_A$):** The time interval between the moment a read/write command is issued and the moment data becomes available at the output bus.
* **(ii) Cycle Time ($t_C$):** The minimum time that must elapse between two consecutive memory accesses. It is typically longer than access time because of recovery/precharge delays ($t_{\text{DELAY}}$):
  $$t_C = t_A + t_{\text{DELAY}}$$
* **(iii) Bandwidth ($b_C$):** The data transfer rate of the memory device, representing the amount of data read or written per second:
  $$\text{Bandwidth } (b_C) = \frac{1}{t_C}$$
* **(iv) Volatile Memories:** Storage media that require continuous electric power to retain stored data (e.g., RAM). Non-volatile memories (e.g., ROM, flash) retain data when powered down.

---

#### Question 4
**Explain the organization of tracks in magnetic memories with the help of a figure.**

**Answer:**
```
       ┌─────────────────────────────────┐
       │     ┌─────────────────────┐     │
       │     │   ┌─────────────┐   │     │
       │     │   │   ┌─────┐   │   │     │   ◀── Track 0 (innermost)
       │     │   │   │     │   │   │     │   ◀── Track 1
       │     │   │   └─────┘   │   │     │   ◀── Track 2
       │     │   └─────────────┘   │     │   ◀── Track 3 (outermost)
       │     └─────────────────────┘     │
       └─────────────────────────────────┘
              Organization of Tracks
```
* **Tracks:** In magnetic media (like floppy and hard disks), the storage surface is divided into concentric circles called tracks.
* **Sectors:** Each track is physically partitioned into smaller wedges called sectors. A sector is the smallest addressable unit of physical disk storage (standard size is 512 bytes or 4096 bytes).
* **Disk Head Movement:**
  * **Seek Time:** The time it takes for the read/write head assembly to move to the target track.
  * **Rotational Latency:** The time spent waiting for the disk platter to rotate and bring the desired sector under the read/write head.

---

#### Question 5
**What are optical memories?**

**Answer:**
Optical memories are secondary storage devices that utilize **laser technology** to read and write data on circular discs. Binary digits are represented by physical micro-features on a reflective layer:
* **Pits:** Microscopically small depressions on the reflective layer that scatter laser light (interpreted as a binary **0**).
* **Lands:** Flat, reflective surface areas between pits that reflect the laser light directly back to a sensor (interpreted as a binary **1**).
* **Common Formats:**
  * **CD (Compact Disc):** Storing up to 650–700 MB.
  * **DVD (Digital Versatile Disc):** Storing from 4.7 GB up to 17 GB.
  * **Blu-ray Disc:** Storing 25 GB up to 128 GB.

---

#### Question 6
**Explain basic semiconductor memory organization with the help of a figure.**

**Answer:**
```
                    ┌─────────────────────────────────────────┐
                    │          SEMICONDUCTOR MEMORY            │
    n-bit           │  ┌──────────────┐  ┌─────────────────┐  │
  Address Bus ─────▶│  │ Memory       │  │  Storage Cell   │  │  m-bit
                    │  │ Address      │──│  Array          │──│─── Data Bus
  Control    ─RD───▶│  │ Register     │  │                 │  │
  Signals    ─WR───▶│  ├──────────────┤  ├─────────────────┤  │
             ─CS───▶│  │ Address      │  │  Read/Write     │  │
                    │  │ Decoder      │  │  Control Circuit│  │
                    │  └──────────────┘  ├─────────────────┤  │
                    │                    │  Memory Buffer  │  │
                    │                    │  Register       │  │
                    │                    └─────────────────┘  │
                    └─────────────────────────────────────────┘
```
* **Storage Cell Array:** A matrix of memory cells (flip-flops for SRAM, capacitors for DRAM) where each cell stores 1 bit.
* **Memory Address Register (MAR):** Holds the address bits provided by the address bus.
* **Address Decoder:** Interprets the $n$-bit address to select and enable a specific row and column line in the cell array.
* **Read/Write Control Circuit:** Manages bidirectional data transfer based on control signals: Read ($\text{RD}$), Write ($\text{WR}$), and Chip Select ($\text{CS}$).
* **Memory Buffer Register (MBR):** Temporarily holds the $m$-bit data word during read or write operations to/from the data bus.

---

#### Question 7
**With the help of a figure, explain the memory cell addressing.**

**Answer:**
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
      (a) An Array of 4×4 = 16 Cells
```
* Memory addressing selects one specific cell in the cell array.
* In a $4 \times 4$ array, the cells are identified by coordinate row ($R_0$ to $R_3$) and column lines ($C_0$ to $C_3$).
* To select the cell corresponding to **10**, the Address Decoder activates **Row R2** and **Column C2**. Only the cell at the intersection $(R_2, C_2)$ is powered for reading/writing.

---

#### Question 8
**Explain the memory cell organization. How can a particular cell be selected in this case?**

**Answer:**
* **Organization:** Cells are organized as a two-dimensional grid of intersecting rows (Word Lines) and columns (Bit Lines). Each intersection holds a storage element.
* **Selection Process:**
  1. The CPU places an address on the address bus.
  2. The MAR stores the address.
  3. The row decoder translates the upper bits and activates a single Word Line, enabling all cells in that row.
  4. The column decoder translates the lower bits and connects a single Bit Line to the read/write circuitry.
  5. The cell at the intersection of the active Word Line and Bit Line is selected.

---

#### Question 9
**A memory has access time of 50 ns. It has an additional delay called precharge time of 20 ns. Find out the access rate and bandwidth of this unit.**

**Answer:**
* **Given:**
  * Access Time ($t_A$) = $50\text{ ns} = 50 \times 10^{-9}\text{ s}$
  * Delay Time ($t_{\text{DELAY}}$) = $20\text{ ns} = 20 \times 10^{-9}\text{ s}$
* **1. Cycle Time ($t_C$):**
  $$t_C = t_A + t_{\text{DELAY}} = 50\text{ ns} + 20\text{ ns} = 70\text{ ns} = 70 \times 10^{-9}\text{ s}$$
* **2. Access Rate ($b_A$):**
  $$b_A = \frac{1}{t_A} = \frac{1}{50 \times 10^{-9}\text{ s}} = 20,000,000\text{ words/sec} = 20\text{ Mwords/sec}$$
* **3. Bandwidth ($b_C$):**
  $$b_C = \frac{1}{t_C} = \frac{1}{70 \times 10^{-9}\text{ s}} \approx 14,285,714\text{ words/sec} \approx 14.29\text{ Mwords/sec}$$

---

#### Question 10
**What is Dynamic RAM? Why is it most widely used?**

**Answer:**
* **Dynamic RAM (DRAM):** A semiconductor memory that stores each bit of data in a tiny cell consisting of a single **capacitor** and a **transistor**. Because capacitors slowly leak charge, DRAM requires a periodic **refresh cycle** to restore charge levels.
* **Why it is widely used:**
  * **High Density:** Only one transistor and one capacitor are needed per bit, allowing billions of bits to fit on a single chip.
  * **Low Cost:** The simple design is cheaper to manufacture than SRAM.
  * **Usage:** Ideal for computer **main memory (system RAM)**.

---

#### Question 11
**What is Static RAM? Why is it most widely used (for cache)?**

**Answer:**
* **Static RAM (SRAM):** A semiconductor memory that stores each bit of data using a **flip-flop** circuit (typically requiring 6 transistors per cell). It holds its data statically without needing a refresh cycle as long as power is active.
* **Why it is widely used for cache:**
  * **High Speed:** SRAM does not suffer from charging delays or refresh cycles, providing extremely fast access times (under $10\text{ ns}$).
  * **Usage:** Perfect for **CPU Cache (L1, L2, L3)** because it can keep pace with processor clock cycles.

---

#### Question 12
**Explain how a hard disk reads information it stores.**

**Answer:**
1. Disk platters coated with magnetic thin-film rotate rapidly on a spindle.
2. The read/write head is positioned over the target track and sector.
3. The magnetized areas on the spinning disk pass underneath the head.
4. The movement of these magnetic fields **induces a tiny electric current** in the coil of the read head.
5. The **polarity transitions** of this induced voltage (magnetic flux reversals) are detected by the drive controller and decoded into binary digits (0s and 1s).

---

#### Question 13
**Provide advantages and disadvantages of a hard disk as a storage medium.**

**Answer:**
* **Advantages:**
  * Extremely large storage capacities at a very low cost-per-gigabyte.
  * Reliable, non-volatile storage for operating systems and large files.
  * Faster data transfer rates compared to optical media.
* **Disadvantages:**
  * Slower access times compared to semiconductor memory (RAM, SSDs) due to mechanical seek times and latency.
  * Vulnerable to physical shocks and head crashes due to moving parts.
  * Generates noise and heat during operation.
  * Serial data transfer mechanism limits peak throughput.

---

#### Question 14
**Explain how the CD-ROM stores data.**

**Answer:**
1. Data is written to the spiral track of a polycarbonate plastic disc.
2. The disc has microscopic indentations called **pits** and flat spaces called **lands**.
3. Pits are molded into the plastic using a glass master during manufacturing, or created by burning a dye layer with a high-power writing laser (for recordable CD-R discs).
4. The binary pattern is represented by the transition between pits and lands.

---

#### Question 15
**Provide advantages and disadvantages of a CD-ROM as a storage medium.**

**Answer:**
* **Advantages:**
  * Inexpensive to produce in bulk.
  * Highly portable and lightweight.
  * Long shelf-life (several decades if protected from scratches and light).
  * Immune to magnetic corruption.
* **Disadvantages:**
  * Slower data access speed and transfer rate compared to hard drives.
  * Standard CD-ROM is read-only; data cannot be updated.
  * Easily scratched or cracked, which destroys data readability.
  * Low storage capacity ($650-700\text{ MB}$) compared to modern media.

---

## SECTION C: SYSTEM BUSES AND BASIC CARDS

### 💡 Core Summary
The system bus is the pathway for electrical signals connecting the CPU, memory, and peripheral components. It is divided into three functional buses (Address, Data, and Control). Motherboard expansion slots (ISA, PCI, PCIe, AGP) allow adding expansion cards to increase computer functionality.

---

### ❓ Review Questions & Detailed Answers

#### Question 1
**Define a computer system bus.**

**Answer:**
A **system bus** is a collection of parallel conductive traces on a motherboard that serves as a shared communication pathway connecting the CPU, memory (RAM), and I/O devices, allowing them to exchange address, data, and control signals.

---

#### Question 2
**Explain the types of system buses based on the type of information they carry.**

**Answer:**
1. **Data Bus:**
   * **Bidirectional:** Carries data to and from the CPU, memory, and I/O devices.
   * **Width:** Determined by the number of lines (e.g., 32-bit or 64-bit), indicating how many bits can transfer simultaneously.
2. **Address Bus:**
   * **Unidirectional:** Carries physical addresses generated by the CPU to point to a specific memory slot or I/O port.
   * **Width:** Determines the maximum memory capacity (e.g., 32-bit address bus can access $4\text{ GB}$ of RAM).
3. **Control Bus:**
   * **Mixed Directionality:** Carries control signals and timing pulses generated by the CPU and external devices to coordinate operations.
   * **Signals include:** Memory Read ($\text{MEMR}$), Memory Write ($\text{MEMW}$), I/O Read ($\text{IOR}$), System Clock ($\text{SYSCLK}$), and Interrupt Requests ($\text{IRQ}$).

---

#### Question 3
**What is the difference between internal and external buses?**

**Answer:**
* **Internal Bus (System Bus):** Connects the internal CPU components, arithmetic units, registers, and system memory. It is optimized for high-speed, low-latency motherboard communications.
* **External Bus (Expansion Bus):** Connects the CPU/motherboard to external peripherals and expansion slots (such as PCI or USB ports). It operates at lower frequencies and supports diverse device interfaces.

---

#### Question 4
**What do you understand by expansion bus?**

**Answer:**
An **expansion bus** is an extension of the computer's system bus that connects to expansion slots on the motherboard. It allows users to add expansion cards (e.g., GPU, sound card, NIC) to customize and expand system features.

---

#### Question 5
**With a block diagram, explain the system bus related to computer operation.**

**Answer:**
```
 ┌─────────────────────────────────────────────────────────────────┐
 │                         SYSTEM BUS                              │
 │                                                                 │
 │  ┌──────────┐    ┌──────────────┐    ┌────────────────────────┐ │
 │  │          │    │              │    │     Input and          │ │
 │  │   CPU    │    │   Memory     │    │     Output             │ │
 │  │          │    │   (RAM/ROM)  │    │     Devices            │ │
 │  └────┬─────┘    └──────┬───────┘    └───────────┬────────────┘ │
 │       │  ↕              │  ↕                     │  ↕           │
 │  ─────┴─────────────────┴─────────────────────────┴──────────  │  Control Bus
 │  ─────┴─────────────────┴─────────────────────────┴──────────  │  Address Bus
 │  ─────┴─────────────────┴─────────────────────────┴──────────  │  Data Bus
 └─────────────────────────────────────────────────────────────────┘
```
* **Process:**
  1. The CPU writes a target address onto the unidirectional **Address Bus**.
  2. The CPU sends a control signal (e.g., Write $\text{MEMW}$) down the **Control Bus**.
  3. Data is placed on the bidirectional **Data Bus** and written directly to the target device.

---

#### Question 6
**Explain various expansion slots available on a computer motherboard.**

**Answer:**
* **ISA (Industry Standard Architecture):** 16-bit data path operating at $8\text{ MHz}$. Obsolete slot used in older AT motherboards.
* **EISA (Extended ISA):** 32-bit data path operating at $8\text{ MHz}$. Software-configured, backward-compatible with ISA cards.
* **PCI (Peripheral Component Interconnect):** 32-bit local bus operating at $33\text{ MHz}$ (or 64-bit at $66\text{ MHz}$). Standard in ATX motherboards, supports Plug-and-Play (PnP).
* **AGP (Accelerated Graphics Port):** Dedicated high-speed port designed solely for video cards, providing direct memory access. Faster than standard PCI.
* **USB (Universal Serial Bus):** High-speed external port that allows daisy-chaining up to 127 external peripherals. It supports hot-swapping and auto-configuration.

---

#### Question 7
**Give the difference between ISA and EISA expansion slots.**

**Answer:**
| Feature | ISA | EISA |
|---|---|---|
| **Bus Width** | 16-bit | 32-bit |
| **Speed** | $8\text{ MHz}$ | $8\text{ MHz}$ |
| **Configuration** | Manual (jumpers/switches) | Software-configured |
| **Bus Mastering** | Limited support | Supports multiple bus masters |
| **Physical Slot** | Standard height | Taller, dual-level slot contact design |

---

#### Question 8
**Differentiate ISA from PCI expansion slots.**

**Answer:**
| Feature | ISA | PCI |
|---|---|---|
| **Bus Width** | 16-bit | 32-bit or 64-bit |
| **Bus Speed** | $8\text{ MHz}$ | $33\text{ MHz}$ (standard) |
| **Throughput** | Very low | High (local bus) |
| **Plug-and-Play** | No (Manual config) | Yes (Automatic setup) |
| **Status** | Obsolete | Legacy (replaced by PCIe) |

---

#### Question 9
**What do you understand by interrupt request lines in a computer?**

**Answer:**
* **Interrupt Request Lines (IRQs):** Physical hardware pathways linking external devices to the CPU's interrupt controller.
* **Function:** A device triggers an interrupt signal on its IRQ line to gain processor attention.
* **Execution:** The CPU suspends its current operations, executes an **Interrupt Service Routine (ISR)** to handle the device's request, and then resumes its previous tasks.
* **Conflicts:** Assigning the same IRQ to two active legacy devices causes system crashes or hardware failure.

---

#### Question 10
**Explain the function of DMA channels and I/O addresses.**

**Answer:**
* **DMA (Direct Memory Access) Channels:** Dedicated communication channels that allow devices (e.g., hard drives, sound cards) to transfer data directly to/from physical RAM without processing it through the CPU. This reduces processor workload.
* **I/O Addresses:** Dedicated hexagonal memory-mapped coordinates assigned to a hardware device. The CPU uses this unique memory space to read/write hardware registers and issue commands.

---

#### Question 11
**Explain the term "Bus Mastering."**

**Answer:**
* **Bus Mastering:** An architecture where a controller card (e.g., a PCI card) contains its own processor and bus interface circuitry.
* **Benefit:** It allows the expansion card to take control of the motherboard system bus and direct data transfers to memory or other devices independently of the CPU, maximizing multitasking performance.

---

#### Question 12
**Explain the factors you would base on while selecting a network interface card (NIC) to purchase.**

**Answer:**
1. **Network Topology/Type:** Choose a NIC designed for your specific network (e.g., Ethernet vs. Token Ring).
2. **Transmission Medium:** Match the NIC ports to your cabling infrastructure (e.g., RJ-45 for Twisted-Pair, Fiber-Optic, Wireless antenna).
3. **Motherboard Bus Compatibility:** Ensure you have the corresponding expansion slot (e.g., PCI or PCIe).
4. **Data Rate Speed:** Align the card capacity with the network requirements (e.g., $100\text{ Mbps}$, $1\text{ Gbps}$, or $10\text{ Gbps}$).
5. **Driver Support:** Check availability of verified software drivers for your specific operating system.

---

## SECTION D: POWER DEVICES

### 💡 Core Summary
The power supply unit (PSU) converts commercial alternating current (AC) into stabilized low-voltage direct current (DC) for internal PC components. To protect computers from power fluctuations, offline or online Uninterruptible Power Supplies (UPS) are utilized.

---

### ❓ Review Questions & Detailed Answers

#### Question 1
**Give different DC voltage levels produced by AT power supply with their use. Specify the colors of the power supply wires with their voltages.**

**Answer:**
The older legacy AT power supply outputs four DC voltage rails delivered to the motherboard via two 6-pin connectors (P8 and P9).

| Voltage | Wire Color | Component Target / Application |
|---|---|---|
| **+12V** | Yellow | Disk drive motors, cooling fans, and expansion slots |
| **-12V** | Blue | Older serial ports and legacy programmable ROM chips |
| **+5V** | Red | Motherboard, logic circuits, older CPUs, and memory chips |
| **-5V** | White | ISA bus cards and older DRAM chips |
| **0V (GND)**| Black | Ground wires (completes electrical circuits) |

> [!IMPORTANT]
> When attaching P8 and P9 connectors to an AT motherboard, the **black ground wires must face the center** next to each other. Failing to do so will damage the motherboard.

---

#### Question 2
**What are the main differences between AT and ATX power supplies?**

**Answer:**
| Feature | AT Power Supply | ATX Power Supply |
|---|---|---|
| **Power Connectors** | Two 6-pin connectors (P8/P9) | Single 20-pin or 24-pin connector (P1) |
| **Voltage Rails** | +5V, -5V, +12V, -12V (4 levels) | +5V, -5V, +12V, -12V, **+3.3V** (5 levels) |
| **Power Switch** | Physical high-voltage toggle switch | Software-controlled switch (Allows Soft-Off/Sleep) |
| **Motherboard Control**| No software feedback | Standby voltage ($+5\text{V Standby}$) allows wake-on-LAN |
| **Cooling Method** | Air blows inside case onto board | Fan exhausts air out the back of the case |

---

#### Question 3
**What is an off-line UPS?**

**Answer:**
* **Off-line UPS (Standby UPS):** A backup battery system that runs equipment directly on utility AC power during normal operations.
* **Mechanism:** When incoming power drops or surges beyond acceptable limits, a mechanical transfer switch routes power from the internal battery and inverter to the equipment.
* **Drawback:** There is a brief power interruption (typically $2-10\text{ milliseconds}$) during the switch, and it offers little filtering against power line noise.

---

#### Question 4
**What is an Online UPS?**

**Answer:**
* **On-line UPS (Double-Conversion UPS):** A power protection device that continuously feeds equipment from its battery inverter.
* **Mechanism:** AC utility power continuously charges the internal batteries while the inverter converts the battery power back into clean AC output.
* **Benefits:**
  * **Zero transfer time** during power failures.
  * Provides isolation against all power line issues (sags, surges, spikes, and frequency shifts). It is also called a **Power Line Conditioner**.

---

## SECTION E: COMPUTER HARDWARE COMPONENTS

### ❓ Review Questions & Detailed Answers

#### Question 1 (Multiple Choice)
**Which basic operating system function receives data from the keyboard?**
* a) Input
* b) Processing
* c) Output
* d) Storage

**Answer:** **a) Input**

---

#### Question 2 (Multiple Choice)
**In MS-DOS, which of the following actions will result in a warm boot?**
* a) Replacing the CPU.
* b) Pressing CTRL+ALT+DEL.
* c) Powering on the system.
* d) Regaining power after a power outage.

**Answer:** **b) Pressing CTRL+ALT+DEL**

---

#### Question 3 (Multiple Choice)
**Which type of motherboard supports 3.3 volts?**
* a) AT.
* b) ATX.

**Answer:** **b) ATX**

---

#### Question 4 (Multiple Choice)
**Which type of RAM is used for cache memory?**
* a) SRAM (Static Random Access Memory).
* b) DRAM (Dynamic Random Access Memory).

**Answer:** **a) SRAM (Static Random Access Memory)**

---

#### Question 5 (Multiple Choice)
**Which type of storage device uses a laser to record information?**
* a) Hard disk.
* b) Floppy disk.
* c) CD-RW.
* d) Tape drive.

**Answer:** **c) CD-RW**

---

#### Question 6 (Multiple Choice)
**Which computer component can contain a dangerous amount of voltage?**
* a) Motherboard.
* b) Monitor.
* c) Hard drive.
* d) CD ROM.

**Answer:** **b) Monitor**
*(Specifically CRT monitors, which can store up to $25,000\text{V}$ even when unplugged).*

---

#### Question 7 (Multiple Choice)
**What is the function of the computer power supply?**
* a) Convert DC to AC.
* b) Convert AC to DC.
* c) Eliminate spikes in the electricity.
* d) Eliminates brownout in the electricity.

**Answer:** **b) Convert AC to DC**

---

#### Question 8
**Match the power supply voltage to the standard wire color.**

**Answer Table:**
| Power Supply Voltage | Standard Wire Color |
|---|---|
| **+12VDC** | Yellow |
| **-12VDC** | Blue |
| **+5VDC** | Red |
| **-5VDC** | White |
| **+3.3VDC / +3.5VDC** | Orange |
| **Ground** | Black |

---

#### Question 9 (Multiple Choice)
**What is the result of installing the LED connectors to the motherboard incorrectly?**
* a) The motherboard will short out.
* b) LED status light will still work.
* c) LED status light will not work.
* d) The computer will beep constantly when powered on.

**Answer:** **c) LED status light will not work**

---

#### Question 10 (Multiple Choice)
**How are the hard drive and CD-ROM configured to be master and slave?**
* a) CMOS setup utility.
* b) During partitioning.
* c) Set jumpers.
* d) During formatting.

**Answer:** **c) Set jumpers**

---

#### Question 11 (Multiple Choice)
**How many volts do disk drive motors require?**
* a) 3.3 volts.
* b) 5 volts.
* c) 12 volts.
* d) 120 volts.

**Answer:** **c) 12 volts**

---

#### Question 12 (Multiple Choice)
**Which colored wire from a computer's power supply is the ground?**
* a) Red.
* b) Black.
* c) Yellow.
* d) Blue.

**Answer:** **b) Black**

---

#### Question 13 (Multiple Choice)
**What is the purpose of the heat sink?**
* a) To cool the computer processor.
* b) To set the processor voltage.
* c) To set the processor speed.
* d) To ground the processor.

**Answer:** **a) To cool the computer processor**

---

#### Question 14 (True/False)
**Some keys which allow you to access the CMOS Setup screen are DEL, CTRL+ALT+DELETE, and F2.**
* a) TRUE
* b) FALSE

**Answer:** **a) TRUE**

---

#### Question 15
**Discuss on how the CD-ROM reads data from the CD.**

**Answer:**
1. The CD-ROM drive spins the disc using a spindle motor.
2. A low-power laser diode shines a beam at the bottom reflective surface of the disc.
3. As the disc spins, the laser reflects off the pits and lands:
   * **Lands** reflect light straight back through a prism to a photo detector, reading as a **1**.
   * **Pits** scatter the light, reducing the reflection reaching the sensor, reading as a **0**.
4. The changing intensity of the reflected light is converted into an electrical bitstream, which is decoded into binary data.

---

#### Question 16
**Explain how the Hard disk drive writes and reads data to and from platters.**

**Answer:**
* **Writing:** The hard drive controller passes electrical current pulses through a coil in the write head. This generates a magnetic field at the head gap, which aligns the magnetic domains on the spinning platter surface in a specific direction. Reversing the current direction reverses the alignment (creates magnetic flux transitions) to write 0s and 1s.
* **Reading:** As the platter spins under the read head, the pre-aligned magnetic fields on the platter induce a tiny voltage in the read head coil. The polarity transitions of this induced voltage reveal the written binary sequence.

---

#### Question 17
**Explain the steps performed during the computer system power on self test (POST).**

**Answer:**
1. **CPU Diagnostic:** The CPU checks its own registers and executes basic internal instruction paths.
2. **BIOS Verification:** The ROM checksum is verified to ensure the BIOS code is uncorrupted.
3. **Timer & System Bus Check:** The system timer chip and critical control buses are checked.
4. **Video Card Initialization:** The video controller is activated, enabling system messages to display on the monitor.
5. **RAM Diagnostic:** POST writes data patterns to all memory addresses and reads them back to verify RAM integrity.
6. **Keyboard Inspection:** Verifies a keyboard is connected and that no keys are stuck.
7. **Secondary Devices Check:** Verifies disk controllers, floppy drives, hard disks, and CD-ROM drives are responsive.
8. **Boot Execution:** If POST completes without critical errors, the BIOS triggers a single short beep, identifies the designated boot device, and loads the Operating System boot sector.

---

#### Question 18
**How can you identify an ATX motherboard?**

**Answer:**
* Uses a single, keyed 20-pin or 24-pin power connector (P1) instead of AT's P8/P9 connectors.
* Features integrated, double-stacked I/O ports (PS/2, USB, Serial, Parallel) built onto the rear edge of the board.
* Expansion slots are oriented parallel to the short edge of the board.
* The CPU socket and RAM slots are situated close to the power supply to share airflow.
* Supports soft-power features (such as software shutdown and sleep state).

---

#### Question 19
**Give the different types of expansion slots available on the Computer Motherboard.**

**Answer:**
1. **ISA (Industry Standard Architecture)** — 16-bit, $8\text{ MHz}$ legacy slot.
2. **EISA (Extended ISA)** — 32-bit, $8\text{ MHz}$ software-configured slot.
3. **PCI (Peripheral Component Interconnect)** — 32-bit/64-bit local bus slot.
4. **AGP (Accelerated Graphics Port)** — Dedicated 32-bit graphics channel.
5. **PCIe (PCI Express)** — Modern, high-speed point-to-point serial expansion standard.

---

#### Question 20
**Discuss why you would choose to build your own PC rather than buy a ready-made PC.**

**Answer:**

**7 Reasons to BUILD Your Own PC:**
1. **Component Quality Selection:** You select each component brand individually, avoiding generic cheap parts inside pre-builts.
2. **Customized Specifications:** You build it tailored to your specific application requirements (e.g., heavy CPU vs. heavy GPU).
3. **Cost Savings:** Avoid paying high brand markups, licensing fees, and assembly surcharges.
4. **Knowledge Gain:** The building process teaches you computer architecture, useful for troubleshooting future failures.
5. **No Bloatware:** A fresh, clean installation of the OS without unnecessary manufacturer software.
6. **Easier Upgradability:** Standard components make swapping or upgrading parts in the future seamless.
7. **Warranty Independence:** Individual parts carry their own warranties, often longer (e.g., Lifetime RAM warranty) than a single 1-year PC manufacturer warranty.

**3 Reasons to BUY a Ready-Made PC:**
1. **Instant Convenience:** Plug-and-play setup without spendings hours researching parts or assembling components.
2. **Unified Technical Support:** One single company handles customer support and repairs for all hardware components.
3. **Pre-Bundled Software:** Often includes pre-installed software licenses (like Microsoft Office) at a bulk-discounted price.

---

#### Question 21
**What are the reasons for partitioning a hard disk before installing an operating system in the computer?**

**Answer:**
1. **Data Organization:** Isolates system files from user data files, making backups simpler.
2. **Multi-OS Support:** Enables installing different operating systems (e.g., Windows and Linux) on separate partitions.
3. **File System Flexibility:** Allows configuring partitions with different file system architectures (e.g., FAT32, NTFS, ext4).
4. **System Security:** If the OS partition gets corrupted, data stored on other partitions remains safe.
5. **Boot Configuration:** Setting a partition as **Active** is required to boot the operating system.

---

#### Question 22
**Why is it necessary to format a drive before using a storage device?**

**Answer:**
* **Creates File Allocation Structure:** Formatting maps out the sectors and writes the file system directory structure (FAT/NTFS) required to store and track file locations.
* **Checks Sector Integrity:** The formatting process writes data to sectors and flags any damaged areas as **Bad Sectors**, preventing the OS from writing data to them.
* **Erases Previous Data:** Cleans out any old files to start with a fresh filesystem layout.

---

#### Question 23
**What are the functions of the standoffs that sit on the motherboard?**

**Answer:**
* **Short-Circuit Prevention:** They separate the conductive motherboard solder points from the metal computer chassis to prevent electrical shorts.
* **Motherboard Alignment:** They align motherboard ports with the back I/O shield.
* **Structural Support:** They hold the board steady when pressure is applied during installation of expansion cards or RAM.

---

#### Question 24
**Give the causes of the processor failure and how to troubleshoot this failure.**

**Answer:**
* **Causes:**
  * **Thermal Overload (Overheating):** Fan failure or dried thermal paste.
  * **Incorrect Voltage Jumper Settings:** Overvolting the CPU on the motherboard.
  * **Physical damage:** Bent pins during socket insertion.
  * **Electrostatic Discharge (ESD):** Static shock during installation.
* **Troubleshooting Steps:**
  1. Inspect the CPU cooler to ensure the fan spins and is seated flat.
  2. Verify CPU voltage in BIOS settings or motherboard hardware jumper config.
  3. Remove CPU and inspect socket and pins for alignment errors or bent pins.
  4. Listen for BIOS beep codes (e.g., 5 short beeps indicate CPU error).
  5. Swap in a known-good CPU to isolate motherboard vs. CPU failure.

---

#### Question 25
**What are the functions of the data bus on the motherboard? What are some of the bus sizes that you can have on a motherboard?**

**Answer:**
* **Functions:**
  * Bidirectional path to transfer binary data values between the CPU, RAM, and I/O devices.
* **Common Sizes:**
  * **8-bit / 16-bit:** Found in early computing architectures.
  * **32-bit:** Common in older PCI networks and 32-bit x86 architectures.
  * **64-bit:** Modern standard for current CPUs and PCIe configurations.

---

#### Question 26
**Give the steps of Hard disk drive configuration for installing in your personal computer.**

**Answer:**
1. **Set Jumpers:** Configure the drive's jumpers (Master, Slave, or Cable Select) according to its position on the IDE channel ribbon.
2. **Physical Mount:** Slide the HDD into an empty 3.5-inch drive bay and secure it to the chassis rails using mounting screws.
3. **Connect Ribbon Cable:** Plug the 40-pin/80-conductor IDE cable into the drive and motherboard, matching the **red stripe (Pin 1)** on the cable to Pin 1 on the drive slot.
4. **Connect Power Cable:** Attach a 4-pin Molex power connector from the PSU to the drive's power port.
5. **BIOS Setup Check:** Start the computer, enter CMOS Setup, and verify the BIOS automatically detects the drive model and size.
6. **Partition Disk:** Run `FDISK` (or a modern partition manager) to create a primary partition and mark it as active.
7. **Format Disk:** Run the `FORMAT` command (e.g., `FORMAT C: /S` to copy system files) to prepare the file system directory structure.

---

## SECTION F: OPERATING SYSTEMS

### 💡 Core Summary
The Operating System (OS) is the software layer that sits between application programs and system hardware. It manages memory allocation, processes, directories, file structures, and I/O streams.

---

### ❓ Review Questions & Detailed Answers

#### Question 1
**Define the term "Operating System."**

**Answer:**
An **Operating System (OS)** is a system software program that manages all computer hardware and software resources, provides a user interface (CLI or GUI), and coordinates memory allocation and execution schedules for application software.

---

#### Question 2
**Give and explain three components of any operating system.**

**Answer:**
1. **Kernel:** The core, low-level component loaded into memory during boot. It interfaces directly with computer hardware, schedules CPU processing, and manages memory allocation.
2. **User Interface (UI):** The visual/textual environment that interprets user inputs (mouse clicks, keyboard inputs) and sends them to the kernel.
   * **CLI (Command Line Interface):** Text-only commands (e.g., MS-DOS command prompt).
   * **GUI (Graphical User Interface):** Icon and window interface (e.g., Windows Desktop).
3. **File System:** The method and directory structure used to name, save, locate, and secure files on secondary storage media (e.g., FAT32, NTFS, ext4).

---

#### Question 3
**Give and explain the Functions of an Operating System.**

**Answer:**
* **Processor and Application Management:** Schedules CPU cycles and handles memory allocation when applications are launched.
* **File and Folder Management:** Organizes and tracks file directories on secondary storage.
* **Hardware & Driver Control:** Controls peripherals (keyboards, monitors, printers) using BIOS calls and device drivers.
* **System Utilities Support:** Supports diagnostic utility software (e.g., defragmenters and scandisk tools) to optimize system health.
* **I/O Device Routing:** Directs keyboard and mouse signals into active memory, and displays processed visuals onto screens.

---

#### Question 4
**Explain the following terms as related to operating systems: (i) Multiuser, (ii) Multitasking, (iii) Multiprocessing, (iv) Multithreading.**

**Answer:**
* **(i) Multiuser:** Allows two or more users to simultaneously run programs and share resources (like network files or printers) on a single computer system.
* **(ii) Multitasking:** The capability to run multiple separate application programs concurrently. The CPU rapidly context-switches between programs to make it appear they are running at the same time.
* **(iii) Multiprocessing:** A system architecture incorporating two or more physical CPUs. Multiple operations are executed simultaneously across different processors.
* **(iv) Multithreading:** The capacity of a single application program to partition its execution paths into distinct sub-threads (e.g., a word processor executing spellchecking, auto-saving, and text entry threads simultaneously).

---

#### Question 5
**What are the three distinct sections that make up the Disk Operating System? Explain the function of each section.**

**Answer:**
1. **Boot Files:** Files located in the disk's boot sector that are read by the BIOS during startup to initialize hardware registers and boot the OS (e.g., `IO.SYS`, `MSDOS.SYS`).
2. **File Management Files:** The software layer that manages directory trees and handles basic internal commands (e.g., `COMMAND.COM` which processes commands like `DIR`, `COPY`, and `DEL`).
3. **Utility Files:** External troubleshooting and configuration software tools stored on the disk that are loaded only when requested (e.g., `FDISK.EXE`, `FORMAT.COM`, `SCANDISK.EXE`).

---

#### Question 6
**Give and explain the common attributes for DOS files.**

**Answer:**
DOS files use attributes (binary flag switches) to control their access properties. These can be adjusted using the `ATTRIB` command:
* **Hidden (H):** Hides the file from appearing in standard directory listings (`DIR`). Used to prevent users from altering critical files.
* **Read-Only (R):** Restricts the file so it can be opened and read but cannot be overwritten, modified, or deleted.
* **Archive (A):** A backup flag. It is set automatically when a file is created or changed, telling backup software that the file needs archiving.
* **System (S):** Identifies the file as a core operating system boot file. It is typically combined with the Hidden attribute.
