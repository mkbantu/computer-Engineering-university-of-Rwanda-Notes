# COMPUTER HARDWARE TECHNOLOGY — REVIEW QUESTIONS AND ANSWERS
**University of Rwanda | College of Science and Technology**
**Course: Computer Hardware and Maintenance | Academic Year 2025-2026**
**Lecturer: Mr. NAHIMANA Godefroid**

---

## SECTION A: MICROPROCESSORS

---

### Question 1
**Give a diagram of a computer organization and explain the function of each block.**

**Answer:**

```
 ┌────────────┐        ┌────────────────────────┐        ┌────────────┐
 │   INPUT    │───────▶│  COMPUTER (CPU/ALU/CU) │───────▶│   OUTPUT   │
 │  DEVICES   │        │                        │        │  DEVICES   │
 │ • Keyboard │        │  ┌──────────────────┐  │        │ • Monitor  │
 │ • Mouse    │        │  │  Control Unit    │  │        │ • Printer  │
 └────────────┘        │  ├──────────────────┤  │        └────────────┘
                       │  │  ALU             │  │
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

**Explanation of each block:**

- **Input Unit:** Includes devices such as the keyboard and mouse. These are used by the user to enter data into the computer for processing.

- **Processing Unit (CPU):** This is the brain of the computer. It processes data received from input devices and turns it into meaningful information. It contains three sub-components:
  - **Control Unit (CU):** Instructs the rest of the computer system on how to follow program instructions. It directs the movement of data to and from the processor/memory and temporarily holds data and instructions in its arithmetic/logic unit.
  - **Arithmetic and Logic Unit (ALU):** Performs both arithmetic operations (addition, subtraction, multiplication, division) and logical operations (AND, OR, XOR) used to make comparisons and decisions.
  - **Registers:** Used by the processor to temporarily store data currently being processed.

- **Memory (RAM):** Temporary storage area where data currently being processed is held. RAM is volatile — its contents are lost when the power is turned off.

- **Output Unit:** Devices such as monitors and printers that display or present the results of processing to the user. Output on a monitor is called softcopy; output on a printer is called hardcopy.

- **Backing Storage (Secondary Storage):** Devices such as hard disks, floppy disks, and CD-ROMs used for permanent storage of data and programs so they can be retrieved later.

---

### Question 2
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

The CPU contains three basic components:

1. **Control Unit (CU):**
   - Instructs the rest of the computer system on how to follow program instructions.
   - Directs the movement of data to and from the processor and memory.
   - Temporarily holds data, instructions, and processed information in its ALU.
   - Directs control signals between the CPU and external devices such as hard disks, main memory, I/O ports.

2. **Arithmetic and Logic Unit (ALU):**
   - Performs arithmetic operations: addition, subtraction, multiplication, and division.
   - Performs logical operations such as AND, OR, and XOR used to make comparisons and decisions.
   - These logical operations determine how a program is executed.

3. **Registers:**
   - Small, fast storage areas inside the CPU.
   - Used by the processor to temporarily store data currently being processed.
   - They are the fastest form of memory in the computer.

---

### Question 3
**How much RAM size would a 64-bit processor support?**

**Answer:**

A 64-bit processor can support 2^64 memory addresses. This means it can theoretically support up to **18,446,744,073,709,551,616 bytes** (approximately **18.4 Exabytes**) of RAM.

In contrast, a 32-bit processor supports only 2^32 = approximately **4 GB** of memory.

The number of bits in a processor determines how much data can be processed per cycle and also determines the maximum amount of addressable memory. Since a 64-bit processor can handle far more data per cycle, it also supports significantly more RAM than a 32-bit processor.

---

### Question 4
**Explain the factors influencing the performance of the processor.**

**Answer:**

The following factors influence the performance of a processor:

1. **Processor Speed (Clock Speed):**
   - Measured in GHz (gigahertz) or MHz (megahertz).
   - The higher the clock speed, the faster the CPU can execute instructions.
   - Common speeds are 2.0 GHz, 2.40 GHz, 3.20 GHz, and higher.
   - The CPU speed is controlled by an external clock on the motherboard.

2. **Bus Width (Data Bus Size):**
   - Determines how much data can travel between the CPU and other components at once.
   - A 64-bit data bus can transfer more data per cycle than a 32-bit bus.
   - Larger bus size generally means faster performance.

3. **Cache Memory:**
   - Cache is memory set aside for the most frequently used data.
   - There are three levels: L1, L2, and L3.
   - **L1 cache** is located on the CPU, uses fast and expensive SRAM — smallest in size.
   - **L2 cache** is slightly larger and also located on the processor.
   - **L3 cache** is the largest, located outside the CPU, shared by all cores.
   - Data in cache is accessed faster than fetching it from RAM, improving overall performance.

4. **Number of Cores:**
   - Modern processors may have multiple cores, each capable of processing instructions independently.
   - Multiple cores allow for true multitasking and parallel processing.

5. **Address Bus Size:**
   - Determines the amount of memory the processor can address.
   - A larger address bus allows the CPU to access more memory.

6. **Amount of RAM:**
   - More RAM means the processor can store and access more data quickly without having to read from slower storage.

---

### Question 5
**The speed of the processor is measured in _______ while the data transfer rate is measured in _______.**

**Answer:**

- The speed of the processor is measured in **GHz (Gigahertz)** or MHz (Megahertz) — representing billions/millions of clock cycles per second.
- The data transfer rate is measured in **Mbps (Megabits per second)** or **MB/s (Megabytes per second)**.

---

## SECTION B: MEMORIES

---

### Question 1
**What is meant by primary memory, secondary memory, and mass storage devices?**

**Answer:**

- **Primary Memory:** This is the main memory directly accessible by the CPU. It includes RAM (Random Access Memory) and ROM (Read Only Memory). RAM is volatile (loses data when power is off), while ROM is non-volatile. Primary memory is fast but limited in size and expensive.

- **Secondary Memory:** These are storage devices not directly accessible by the CPU — they are connected via I/O channels. Examples include hard disks and floppy disks. They are slower than primary memory but provide much larger storage capacity at a lower cost per bit. Data must be transferred to primary memory before the CPU can process it.

- **Mass Storage Devices:** These are devices used to store high volumes of data. Examples include magnetic memories (hard disks, floppy disks) and optical memories (CD-ROMs, DVDs). They are also called secondary memories or backup storage devices. They are popular for their very large data storage capacity at very low cost per bit and for long-term data retention.

---

### Question 2
**Define the terms: storage capacity, memory word, storage location, and word length.**

**Answer:**

- **Storage Capacity:** The total number of bits (or words/bytes) that a memory device can store. It is generally specified in Kilobytes (KB), Megabytes (MB), or Gigabytes (GB). Formula: `Storage Capacity (bits) = Number of Words × Word Length`. For example, a 1 KB device has 1024 storage locations, each holding 8 bits, giving 8192 bits total.

- **Memory Word:** A group of bits accessed together from memory as a single unit. Memory data is always stored and accessed in groups of fixed size called words.

- **Storage Location:** A specific address in memory where a word of data is stored. Each location has a unique binary address that allows the CPU to find and access it.

- **Word Length:** The number of bits in each group of data (i.e., the number of bits per word). For example, if each memory location holds 8 bits, the word length is 8 bits (1 byte). The word length determines how much data the CPU can process at once.

---

### Question 3
**Define the following terms: (i) Access Time, (ii) Cycle Time, (iii) Bandwidth, (iv) Volatile Memories.**

**Answer:**

**(i) Access Time (tA):**
The average time delay after a memory address is issued until the data appears at the output. It is the average time required to read a fixed amount of information from a selected memory location. Access time should be kept as low as possible for faster performance.
- Formula: `Access Rate (bA) = 1 / tA`

**(ii) Cycle Time (tC):**
The minimum time that must elapse between the initiation of two consecutive memory accesses. Cycle time can be greater than access time because some memory devices need extra time (delay time, tDELAY) to prepare for the next access after completing one.
- Formula: `tC = tA + tDELAY`

**(iii) Bandwidth (bC):**
The maximum amount of information that can be transferred to or from memory every second. It is also called the maximum Data Transfer Rate.
- Formula: `Bandwidth (bC) = 1 / tC`
- Measured in words per second or bits per second.

**(iv) Volatile Memories:**
Memories that lose their stored information when the power is switched off. RAM (Random Access Memory) is a typical volatile memory. In contrast, non-volatile memories (like ROM) retain their data even when power is removed. Within volatile memories, if data can be retained indefinitely as long as power is on, the memory is called **Static** (SRAM); if data must be periodically refreshed, it is called **Dynamic** (DRAM).

---

### Question 4
**Explain the organization of tracks in magnetic memories with the help of a figure.**

**Answer:**

In magnetic memory devices, the storage medium is divided into concentric circular paths called **tracks**.

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

**Key points about track organization:**
- The storage media is divided into concentric circles called **tracks**.
- Each track is further divided into a number of **sectors**, where bytes of data are stored.
- To access stored data, a specific track is first selected, then the specific sector on that track is reached.
- The time to move the read/write head to the correct track is called **Seek Time**.
- The time to wait for the disk to rotate to the correct sector is called **Rotational Delay (Latency Time)**.
- For a floppy disk, the 3.5-inch standard has 40 tracks, with Track '0' at the innermost position and Track '39' at the outermost. Data search always starts from the 1st sector of Track '0'.
- For a hard disk, there are several hundreds of tracks on each disk surface, each divided into sectors.

---

### Question 5
**What are optical memories?**

**Answer:**

Optical memories are storage devices that use **laser technology** to read and write binary data. They take the form of optical disks that store binary information in concentric tracks on mechanically rotated disks, similar to magnetic disks, but read/write operations are done using lasers capable of producing a light spot of about 1 micron.

**How they work:** Data is stored as small **pits** (indentations) and **lands** (flat areas with no pits) on the reflective surface of the disk. A laser beam is aimed at the disk; pits reflect less light and are read as 0, while lands reflect more light and are read as 1.

**Types of optical disks:**
- **CD-ROM** (Compact Disk-Read Only Memory) — read only, manufactured using a glass master.
- **CD-R** (Compact Disk-Recordable) — also called WORM (Write Once Read Many); can be written once.
- **CD-RW** (Compact Disk-Rewritable) — can be written and erased multiple times.
- **DVD-ROM, DVD-R, DVD-RW** — Digital Versatile Disk formats with higher storage capacity.

**Storage capacities:**
- CDs store up to **650 MB**.
- DVDs store 4.7 GB (single sided), 9.4 GB (double sided), or 17 GB (double sided, double layered).

**Advantages:** Large storage capacity, low cost, portability, reliability (few mechanical parts), long lifespan (tens of years).
**Disadvantage:** Complexity of the Read/Write head.

---

### Question 6
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
                         Basic Memory Organization
```

**Components of semiconductor memory:**

1. **Storage Cell Array:** A rectangular array of m-rows and n-columns of memory cells. Each cell stores 1 bit of data.

2. **Memory Address Register (MAR):** Receives the address from the address bus and holds it during memory access.

3. **Address Decoder:** Decodes the address from MAR and selects the specific row and column in the cell array.

4. **Read/Write Control Circuit:** Controls the direction of data flow based on RD (Read) and WR (Write) signals:
   - If RD=0 and WR=1 → Read operation
   - If RD=1 and WR=0 → Write operation

5. **Memory Buffer Register (MBR):** A buffer through which data transfer is carried out between the cell array and the data bus.

6. **Control Signals:** RD (Read), WR (Write), CS (Chip Select/Enable) — active low signals.

7. **Data Bus:** m-bit wide, carries data to and from the memory.

8. **Address Bus:** n-bit wide, carries the memory address — can access up to 2^n cells.

---

### Question 7
**With the help of a figure, explain the memory cell addressing.**

**Answer:**

Memory addressing is concerned with the selection of one particular memory cell from the storage cell array. To facilitate selection, memory cells are organized as a rectangular array of m-rows and n-columns.

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

**How addressing works:**

- The control circuitry allows only **one row** and **one column** to be activated at a time.
- To select a particular cell, you specify its **row number** and **column number**.
- For example, to access the **10th cell** (value 10 in the diagram), column C2 and row R2 must be activated. The cell at the intersection of C2 and R2 is selected.
- This designation (C2, R2) is the **address** of that cell.
- Collectively, the row and column lines are called **address lines**.
- Every cell has a unique address, and any cell can be accessed randomly — hence the name **Random Access Memory (RAM)**.

---

### Question 8
**Explain the memory cell organization. How can a particular cell be selected in this case?**

**Answer:**

Memory cells are organized in a rectangular array of m-rows and n-columns. Each row-column intersection represents one memory cell.

**Selection of a particular cell:**

1. The CPU sends the memory address via the **address bus** to the **Memory Address Register (MAR)**.
2. The **Address Decoder** decodes the address and activates the corresponding **row line** and **column line**.
3. Only the cell at the intersection of the activated row and column is selected.
4. If a **read** operation is requested, the content of the selected cell is copied to the **Memory Buffer Register (MBR)**, then transferred to the data bus.
5. If a **write** operation is requested, data from the data bus is brought to the MBR, then written to the selected cell.

Since any cell can be accessed directly by specifying its address (row + column), without having to go through other cells, the memory is called **Random Access Memory**. Each access takes the same fixed time regardless of the cell's position.

---

### Question 9
**A memory has access time of 50 ns. It has an additional delay called precharge time of 20 ns. Find out the access rate and bandwidth of this unit.**

**Answer:**

**Given:**
- Access Time: tA = 50 ns
- Additional Delay (precharge time): tDELAY = 20 ns

**Step 1: Calculate Cycle Time (tC)**

```
tC = tA + tDELAY
tC = 50 ns + 20 ns
tC = 70 ns = 70 × 10⁻⁹ seconds
```

**Step 2: Calculate Access Rate (bA)**

```
bA = 1 / tA
bA = 1 / (50 × 10⁻⁹)
bA = 20,000,000 words/second
bA = 20 × 10⁶ words/sec = 20 Mwords/sec
```

**Step 3: Calculate Bandwidth (bC)**

```
bC = 1 / tC
bC = 1 / (70 × 10⁻⁹)
bC = 14,285,714 words/second
bC ≈ 14.29 × 10⁶ words/sec ≈ 14.29 Mwords/sec
```

**Results:**
- Access Rate = **20 Mwords/sec**
- Bandwidth = **≈ 14.29 Mwords/sec**

---

### Question 10
**What is Dynamic RAM? Why is it most widely used?**

**Answer:**

**Dynamic RAM (DRAM)** is a read/write memory that uses a **capacitor** in conjunction with a MOS transistor to store 1 bit of data. Because capacitors are "leaky" (they gradually lose their charge), the stored data must be periodically rewritten — a process called **refreshing** — to maintain the data. This is why it is called "dynamic."

**Characteristics of DRAM:**
- Stores data using capacitors (1 = charged, 0 = discharged).
- Requires periodic refresh cycles.
- Slower than SRAM.
- Lower cost per bit.
- Greater storage capacity per chip compared to SRAM.

**Why DRAM is most widely used:**
- It is **inexpensive** — lower manufacturing cost than SRAM.
- It provides **high storage density** — more bits can be packed into a smaller chip area.
- It is suitable for **main memory (RAM)** in computers where large amounts of cheap memory are needed.
- Despite being slower than SRAM, its cost-per-bit advantage makes it the practical choice for system RAM.

---

### Question 11
**What is Static RAM? Why is it most widely used (for cache)?**

**Answer:**

**Static RAM (SRAM)** is a type of RAM that uses **flip-flop** circuits to store each bit of data. It holds the stored data indefinitely as long as power is supplied — it does not need periodic refreshing like DRAM. This is why it is called "static."

**Characteristics of SRAM:**
- Stores data using flip-flop circuits.
- Retains data without refreshing as long as power is on.
- Very high speed.
- More expensive per bit than DRAM.
- Lower storage density (fewer bits per chip area).
- Can form **Non-Volatile RAM (NVRAM)** when combined with battery backup.

**Why SRAM is most widely used for cache:**
- It is **extremely fast** — because it does not need refresh cycles, data access is nearly instantaneous.
- Cache memory requires very fast access times to keep up with the CPU speed — SRAM meets this requirement.
- L1 and L2 cache on modern CPUs are made of SRAM chips.
- Although expensive, the small size of cache (KB to a few MB) means the cost is manageable.

---

### Question 12
**Explain how a hard disk reads information it stores.**

**Answer:**

The hard disk stores data magnetically on disk platters coated with a magnetically sensitive thin-film material.

**Reading process:**
1. The disk platters spin continuously at high speed on a spindle.
2. Each disk surface has a **Read/Write head** mounted on a Read/Write arm.
3. To read data, the arm moves to the correct **track** (seek time), and the disk rotates until the desired **sector** is under the head (rotational/latency time).
4. The Read/Write head **senses the state of magnetization** of the magnetic particles on the disk surface.
5. The movement of the magnetized disk causes a change in the magnetic field near the head, which **induces a voltage** in the coil of the head.
6. The **polarity of the induced voltage** is monitored to determine the magnetization state (flux direction), which in turn gives the stored binary bit (0 or 1).
7. The data is then transferred via the controller to the CPU.

---

### Question 13
**Provide advantages and disadvantages of a hard disk as a storage medium.**

**Answer:**

**Advantages:**
- Very large storage capacity for long-term data storage.
- Very low cost per bit compared to other storage media.
- Fast data access compared to optical media (high rotational speed).
- Data can be read from and written to the disk (read-write capability).
- Used for permanent storage of the operating system, programs, and user files.

**Disadvantages:**
- Relatively slower than semiconductor memory (RAM) due to mechanical parts.
- Mechanically moving parts (spindle, read/write arm) make it less reliable and susceptible to physical damage.
- Seek time and rotational latency delay data access.
- Data transfer is serial in nature.
- Sensitive to physical shocks while operating.
- Generates heat during operation.
- Should never be opened to the atmosphere (requires ultra-clean rooms for repairs).

---

### Question 14
**Explain how the CD-ROM stores data.**

**Answer:**

The CD-ROM stores data using a physical method involving **pits** and **lands** on a reflective surface:

1. **Manufacturing:** The CD-ROM is manufactured using a carefully prepared glass master. The master is pressed into injection-molded polycarbonate plastic, creating small **pits** (indentations) and **lands** (flat areas with no pits) on the reflective surface along spiral tracks.

2. **Encoding:** Data is represented in binary:
   - **Pits** reflect less laser light → interpreted as binary **0**.
   - **Lands** reflect more laser light → interpreted as binary **1**.

3. **Reading:** When a computer reads the disk:
   - A **laser beam** is aimed at the disk from the bottom.
   - The reflected light from pits and lands is detected by a **photo detector**.
   - The pattern of reflected light is interpreted as 0s and 1s, forming the binary data.

4. **For CD-R (recordable):** Data is recorded by a laser that heats a **dye layer** in the CD-R, causing burnt areas that have a dull appearance — these dark burnt areas (like pits) reflect less light and are interpreted as 0.

5. The data is organized on spiral tracks, and the CD spins at varying speeds to maintain a constant linear velocity (CLV) as data is read.

---

### Question 15
**Provide advantages and disadvantages of a CD-ROM as a storage medium.**

**Answer:**

**Advantages:**
- **Large storage capacity** — up to 650 MB per disc.
- **Low cost** per disc.
- **Portability** — easily transported and distributed.
- **Durability** — long lifespan (tens of years) compared to magnetic media.
- **Reliability** — few mechanical parts reduce the chance of failure.
- **High speed** (relative to floppy disks) — data transfer rates from 1x (150 KB/s) up to 52x and higher.
- Optical media is not affected by magnetic fields.

**Disadvantages:**
- **Read-only** (for standard CD-ROMs) — data cannot be modified after manufacturing.
- Slower data access compared to hard disks.
- **Fragile surface** — scratches can cause data read errors.
- **Complexity** of the Read/Write head in CD writers.
- Lower storage capacity compared to DVDs and hard drives.
- DVD has largely replaced CD-ROM for data distribution.

---

## SECTION C: SYSTEM BUSES AND BASIC CARDS

---

### Question 1
**Define a computer system bus.**

**Answer:**

A computer **system bus** is a parallel collection of electrical conductors (metallic traces on the circuit board) that carry data, address information, and control signals from one component to another within the computer system. The system bus connects the CPU, memory (RAM), and Input/Output (I/O) elements together and is the primary communication pathway for the entire computer. It combines three functions:
- A **data bus** to carry information.
- An **address bus** to determine where the information should be sent.
- A **control bus** to determine the nature of the operation to be performed.

---

### Question 2
**Explain the types of system buses based on the type of information they carry.**

**Answer:**

There are three types of system buses based on the information they carry:

**1. Data Bus:**
- A **bi-directional** pathway — data can flow in both directions (to and from the CPU).
- Carries actual data between the CPU, memory, and I/O devices.
- Data flows from CPU to memory during a write operation, and from memory to CPU during a read operation.
- Bus size (measured in bits) represents the computer word size. Common sizes: 8-bit, 16-bit, 32-bit, and 64-bit.
- Larger bus size → faster data transfer → better performance.

**2. Address Bus:**
- A **uni-directional** pathway — information flows only one way (from CPU to memory/I/O).
- Carries addresses generated by the CPU to identify memory locations or I/O devices.
- The number of address lines determines how many memory locations the CPU can address (2^n locations for n address lines).

**3. Control Bus:**
- Carries **control and timing signals** needed to coordinate the activities of the entire computer.
- Some signals are outputs from the CPU; others are inputs to the CPU from I/O elements.
- Common control signals include:
  - System Clock (SYSCLK)
  - Memory Read (MEMR)
  - Memory Write (MEMW)
  - Read/Write Line (R/W)
  - I/O Read (IOR)
  - I/O Write (IOW)

---

### Question 3
**What is the difference between internal and external buses?**

**Answer:**

| Feature | Internal Bus (System Bus) | External Bus (Expansion Bus) |
|---|---|---|
| **Purpose** | Connects components inside the computer (CPU, RAM, motherboard components) | Connects external devices, peripherals, expansion slots, I/O ports, and drive connections |
| **Speed** | Generally faster | Generally slower than the system bus |
| **Location** | On the motherboard | Connects external/peripheral devices to the motherboard |
| **Examples** | Front Side Bus, Memory Bus | PCI, ISA, USB, AGP slots |
| **Other Names** | System Bus | Expansion Bus |

- The **Internal Bus** connects the CPU, system memory, and all components on the motherboard.
- The **External Bus** allows various devices to be added to the computer, expanding its capabilities.

---

### Question 4
**What do you understand by expansion bus?**

**Answer:**

An **expansion bus** (also called external bus) is made up of electronic pathways that connect different external devices, peripherals, and expansion cards to the rest of the computer. It allows the computer's capabilities to be expanded by adding new hardware components such as video cards, sound cards, network interface cards (NICs), and modems.

Key points:
- It is generally **slower** than the system bus.
- Expansion cards plug into **expansion slots** on the motherboard that are connected to the expansion bus.
- Examples of expansion bus standards include ISA, EISA, PCI, and AGP.
- The expansion bus provides a standardized interface so that different types of cards can be installed in the same computer.

---

### Question 5
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
│  ─────┴─────────────────┴─────────────────────────┴──────────  │
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Control Bus
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Address Bus
│  ─────┴─────────────────┴─────────────────────────┴──────────  │  Data Bus
└─────────────────────────────────────────────────────────────────┘
```

**Operation:**
- The **CPU** generates addresses and sends them via the **address bus** to identify which memory location or I/O device to communicate with.
- The **data bus** carries actual data between the CPU, memory, and I/O devices in both directions.
- The **control bus** sends timing and control signals (read, write, clock) to coordinate all operations.
- All components are connected to this common bus structure, allowing the CPU to communicate with any component by placing the correct address on the address bus and then reading or writing data via the data bus.

---

### Question 6
**Explain various expansion slots available on a computer motherboard.**

**Answer:**

**1. ISA (Industry Standard Architecture) Slot:**
- A 16-bit expansion slot developed by IBM.
- Transfers data at 8 MHz.
- Found on old AT motherboards.
- Becoming obsolete, being replaced by PCI.
- Some boards still include one or two for backward compatibility.

**2. EISA (Extended ISA) Slot:**
- A 32-bit expansion slot introduced to accommodate Pentium chips.
- Still operates at 8 MHz bus speed.
- Has 32-bit data path; capable of using multiple bus mastering devices.
- Configured with software (no need for IRQs or DMA channels).
- Taller socket than ISA — ISA cards do not fit in EISA sockets.

**3. PCI (Peripheral Component Interconnect) Slot:**
- A 32-bit local bus slot developed by Intel.
- Operates at 33 MHz — significant improvement over ISA/EISA.
- Supports Plug-and-Play (PnP).
- Most commonly used type in ATX motherboards.
- Main purpose: allow direct CPU access for devices such as memory and video.

**4. AGP (Accelerated Graphics Port) Slot:**
- Developed by Intel for high-demand graphical software.
- A dedicated high-speed bus reserved exclusively for video adapters.
- Slightly shorter than PCI slot, usually a different color.
- Latest version AGP-4 offers 1 GB/s transfer rate.
- Standard graphics port in new systems; the PCI slot then handles other cards.

**5. USB (Universal Serial Bus):**
- External port allowing connection of up to 127 external peripherals.
- Data transfer rate up to 12 Mbps (USB 1.x) or 450 Mbps (USB 2.0).
- Supports hot-plugging (devices can be connected/disconnected while PC is running).
- Plug-and-Play compatible.

---

### Question 7
**Give the difference between ISA and EISA expansion slots.**

**Answer:**

| Feature | ISA (Industry Standard Architecture) | EISA (Extended ISA) |
|---|---|---|
| **Data Path Width** | 16-bit | 32-bit |
| **Bus Speed** | 8 MHz | 8 MHz |
| **Configuration** | Manual (jumpers/switches) | Software-configured |
| **Bus Mastering** | Limited | Supports multiple bus mastering devices |
| **IRQ/DMA** | Requires IRQs and DMA channels | No need for IRQs or DMA channels |
| **Socket Height** | Standard | Taller than ISA |
| **Compatibility** | ISA cards fit in ISA slots | ISA cards do NOT fit in EISA sockets |
| **Purpose** | General expansion | Designed for Pentium-class machines |

---

### Question 8
**Differentiate ISA from PCI expansion slots.**

**Answer:**

| Feature | ISA | PCI |
|---|---|---|
| **Bus Width** | 16-bit | 32-bit |
| **Bus Speed** | 8 MHz | 33 MHz |
| **Performance** | Slow | Significantly faster |
| **Plug-and-Play** | No | Yes |
| **Auto-configuration** | Manual | Each card contains self-configuration info |
| **Common Use** | Old AT systems | Current ATX motherboards |
| **Purpose** | General use | Direct CPU access for memory and video |
| **Status** | Obsolete | Standard in modern systems |

PCI slots offer a **significant improvement** over ISA because they operate at 33 MHz (vs. 8 MHz for ISA) and support Plug-and-Play, making them the standard in modern motherboards.

---

### Question 9
**What do you understand by interrupt request lines in a computer?**

**Answer:**

**Interrupt Request Lines (IRQs)** are special hardware pathways that lead directly to the CPU's interrupt controller, allowing a device to get the processor's attention when it needs to communicate with it.

**How IRQs work:**
- Each IRQ line has a specific number, and the CPU associates that number with a certain device.
- When a device needs processing (e.g., a keystroke), it sends a signal via its IRQ line to the interrupt controller.
- The interrupt controller checks the information and passes it to the CPU.
- The CPU temporarily **pauses** what it is doing, handles the interrupt request, and then **returns** to the task it was performing.
- Each device is assigned a priority level; if a higher-priority task is running, the CPU finishes it before handling the interrupt.

**Example:** Pressing a key on the keyboard sends a signal via IRQ 1 to the CPU.

**IRQ conflicts** occur when two devices share the same IRQ channel — this can cause system instability and must be resolved by reassigning IRQ numbers.

---

### Question 10
**Explain the function of DMA channels and I/O addresses.**

**Answer:**

**DMA (Direct Memory Access) Channels:**
- DMA channels allow specific devices (hard drives, CD-ROMs, tape drives, sound cards) to access memory **directly**, without passing data through the CPU.
- This frees the CPU for other tasks and allows faster data transfers.
- Each device requires its own unique DMA channel.
- If two devices share the same DMA channel, neither will write to memory properly, and a resource conflict could freeze the system.

**I/O Addresses:**
- Each device on a computer is assigned a specific area in memory to exchange data with the rest of the computer. The **I/O address** is the starting address of that memory area, given in hexadecimal notation.
- If the CPU wants a device to perform an action, it sends a signal to the device's I/O address.
- The device then carries out the instructions and responds via the data bus or DMA channels.
- I/O addresses act like a "reverse IRQ" — they allow the CPU to access back to a specific device.
- Each device must have a unique I/O address to avoid conflicts.

---

### Question 11
**Explain the term "Bus Mastering."**

**Answer:**

**Bus Mastering** is a technology where a device (rather than the CPU) takes control of the system bus to transfer data directly between itself and another device, without the CPU acting as an intermediary.

**Traditional operation:** The CPU had to acknowledge an interrupt, receive data from one device, then access another device via its I/O address to transmit the data. This kept the CPU involved in every data transfer.

**Bus Mastering operation:** A Bus Mastering device contains built-in bus controller circuitry that allows it to:
- Initiate and control its own data transfers to another device.
- Perform the transfer independently.
- Free the CPU to handle other tasks simultaneously.

**Benefit:** Significantly improves system performance by offloading data transfer management from the CPU. PCI devices are common bus mastering devices. EISA also supports multiple bus mastering devices.

---

### Question 12
**Explain the factors you would base on while selecting a network interface card (NIC) to purchase.**

**Answer:**

The following factors are important when selecting a NIC:

**1. Type of Network:**
- NICs are designed for specific network types: Ethernet LAN, Token Ring, FDDI (Fiber Distributed Data Interface), etc.
- A NIC designed for Ethernet will NOT work on a Token Ring network and vice versa.
- Choose the NIC that matches the network infrastructure.

**2. Type of Media:**
- The NIC must match the physical medium used in the network.
- Media types include: **twisted-pair** (RJ-45 connector), **coaxial** cable, **fiber-optic**, and **wireless**.
- The port/connector type on the NIC must match the cabling used.

**3. Type of System Bus:**
- PCI slots are faster than ISA slots.
- For high-speed networks (e.g., FDDI), a **PCI NIC** is recommended because an ISA bus will not handle the required speed.
- Match the NIC to the available slots on the motherboard.

**4. Data Transfer Speed:**
- Consider the required network speed: 10 Mbps, 100 Mbps (Fast Ethernet), 1 Gbps (Gigabit Ethernet).
- Select a NIC that meets or exceeds the network speed requirement.

**5. IRQ, I/O Address, and Driver Support:**
- The NIC must be compatible with the operating system and have available drivers.
- Verify there are no resource conflicts (IRQ, I/O address, memory space) with existing hardware.

---

## SECTION D: POWER DEVICES

---

### Question 1
**Give different DC voltage levels produced by AT power supply with their use. Specify the colors of the power supply wires with their voltages.**

**Answer:**

The AT power supply produces **four DC voltage levels**. These are delivered via two 6-pin connectors (P8 and P9) to the motherboard.

| Voltage | Wire Color | Use |
|---|---|---|
| **+12V** | Yellow | Disk drive motors, cooling fans, and system slots |
| **-12V** | Blue | Some serial port circuits and earlier programmable ROM |
| **+5V** | Red | Motherboard, Baby AT CPUs, and many motherboard components |
| **-5V** | White | ISA bus cards and early PROM (Programmable ROM) |
| **0V (Ground)** | Black | Ground — used to complete circuits with the other voltages |

**Note:** The AT power supply does **NOT** produce +3.3V (that is exclusive to ATX power supplies).

The AT connector is a two 6-pin (P8/P9) connector that must be connected with the **black wires in the middle** (adjacent to each other); reversing this can damage the motherboard.

---

### Question 2
**What are the main differences between AT and ATX power supplies?**

**Answer:**

| Feature | AT Power Supply | ATX Power Supply |
|---|---|---|
| **Motherboard Connector** | Two 6-pin connectors (P8 and P9) | Single 20-pin (P1) keyed connector |
| **Voltage Levels** | +12V, -12V, +5V, -5V, Ground (4 levels) | +12V, -12V, +5V, -5V, +3.3V, Ground (5 levels) |
| **+3.3V Output** | No | Yes — for newer CPUs and AGP video cards |
| **Airflow Direction** | Pulls air in through rear, blows directly onto AT motherboard | Pulls air through case from front, exhausts out the rear of the PSU |
| **Power Switch** | Hard power switch (directly cuts power) | Soft power switch (controlled by the OS — allows software shutdown) |
| **Form Factor** | Older, for AT-compatible motherboards | Newer, for ATX motherboards |
| **Compatibility** | Works with AT motherboards | Works with ATX motherboards |

---

### Question 3
**What is an off-line UPS?**

**Answer:**

An **off-line UPS** (also called standby UPS) is a type of Uninterruptible Power Supply that **remains idle** (on standby) during normal power conditions. It only activates when a power failure occurs.

**How it works:**
- Under normal conditions, the connected equipment runs directly from the utility (mains) power.
- When a power failure is detected, the off-line UPS **switches almost instantaneously** to its own power source (battery).
- The switchover time is very short but not zero — there is a brief interruption during the switch.

**Limitation:** It does not provide protection against power quality issues (sags, surges, noise) during normal operation since the equipment runs directly from mains power.

---

### Question 4
**What is an Online UPS?**

**Answer:**

An **on-line UPS** (also called line-interactive UPS or continuous UPS) is a type of Uninterruptible Power Supply that **continuously powers** the connected load from its battery reserves (usually lead-acid batteries), while simultaneously recharging those batteries from the AC mains power.

**How it works:**
- The connected equipment **always** runs from the UPS battery/inverter, never directly from mains.
- The mains power is continuously charging the battery.
- If mains power fails, there is **zero switchover time** — the equipment experiences no interruption whatsoever.

**Advantages over off-line UPS:**
- Provides protection against ALL common power problems: failures, sags, surges, spikes, noise, and frequency variations.
- For this reason, it is also called a **power conditioner** or **line conditioner**.
- Zero interruption during switchover.

**Difference from a standby generator:** A UPS provides instantaneous protection, while a generator requires time to start and may result in a brief interruption.

---

## SECTION E: COMPUTER HARDWARE COMPONENTS

---

### Question 1 (Multiple Choice)
**Which basic operating system function receives data from the keyboard?**

**Answer: a) Input**

The input operation recognizes input from the keyboard or mouse and receives it into the computer for processing.

---

### Question 2 (Multiple Choice)
**In MS-DOS, which of the following actions will result in a warm boot?**

**Answer: b) Pressing CTRL+ALT+DEL**

A **warm boot** is performed whenever the PC is restarted or reset with the power still on. It can be accomplished by pressing Ctrl+Alt+Del, pressing the Reset button, or choosing Start > Shutdown > Restart. Powering on the system is a **cold boot**, not a warm boot.

---

### Question 3 (Multiple Choice)
**Which type of motherboard supports 3.3 volts?**

**Answer: b) ATX**

ATX power supplies produce +3.3V, which is used by most newer CPUs, some types of memory, and AGP video cards. The AT power supply does not produce +3.3V.

---

### Question 4 (Multiple Choice)
**Which type of RAM is used for cache memory?**

**Answer: a) SRAM (Static Random Access Memory)**

SRAM is used for cache memory (L1 and L2 cache on the CPU) because it is very fast, does not need refreshing, and can keep up with CPU speeds. DRAM is used for main system RAM because it is cheaper and denser.

---

### Question 5 (Multiple Choice)
**Which type of storage device uses a laser to record information?**

**Answer: c) CD-RW**

Optical storage devices (CD-ROM, CD-R, CD-RW, DVD) use lasers to read and write data. Hard disks and floppy disks use magnetic recording. Tape drives also use magnetic recording.

---

### Question 6 (Multiple Choice)
**Which computer component can contain a dangerous amount of voltage?**

**Answer: b) Monitor**

A computer monitor (CRT type) can store up to **25,000 volts** and should never be opened unless you are trained to do so. This is why it is identified as a significant safety hazard when working on computer hardware.

---

### Question 7 (Multiple Choice)
**What is the function of the computer power supply?**

**Answer: b) Convert AC to DC**

The computer power supply converts the commercial AC power received from a 120V (or 220V) outlet into the DC voltages (+12V, -12V, +5V, -5V, +3.3V) required by the computer's internal components.

---

### Question 8
**Match the power supply voltage to the standard wire color.**

**Answer:**

| Wire Color | Power Supply Voltage |
|---|---|
| **Yellow** | +12V |
| **Blue** | -12V |
| **Red** | +5V |
| **White** | -5V |
| **Orange** | +3.3V |
| **Black** | Ground (0V) |

---

### Question 9 (Multiple Choice)
**What is the result of installing the LED connectors to the motherboard incorrectly?**

**Answer: c) LED status light will not work**

If LED connectors are installed backwards (wrong polarity), the LED status lights on the front panel (power LED, hard drive LED, etc.) will simply not light up. The motherboard will not be damaged by an incorrectly connected LED.

---

### Question 10 (Multiple Choice)
**How are the hard drive and CD-ROM configured to be master and slave?**

**Answer: c) Set jumpers**

The designation of a hard drive or CD-ROM as master or slave is determined by the **jumper configuration** on the drive itself (not by CMOS, partitioning, or formatting). Jumper settings are usually printed on top of the drive and are set using needle-nosed pliers or tweezers.

---

### Question 11 (Multiple Choice)
**How many volts do disk drive motors require?**

**Answer: c) 12 volts**

Disk drive **motors** use **+12V** power (yellow wire) from the power supply. The circuit boards and logic chips on the drives use +5V power (red wire).

---

### Question 12 (Multiple Choice)
**Which colored wire from a computer's power supply is the ground?**

**Answer: b) Black**

The **black** wires from the power supply represent the **ground (0V)** and are used to complete circuits with the other voltage lines. This is why on AT connectors, the black wires must be placed in the middle when connecting P8 and P9 to the motherboard.

---

### Question 13 (Multiple Choice)
**What is the purpose of the heat sink?**

**Answer: a) To cool the computer processor**

Most microprocessors generate a lot of heat during operation. The heat sink (combined with a cooling fan) is attached directly to the CPU to dissipate this heat efficiently. Without proper cooling, the processor can operate intermittently or fail completely.

---

### Question 14 (True/False)
**Some keys which allow you to access the CMOS Setup screen are DEL, CTRL+ALT+DELETE, and F2.**

**Answer: a) TRUE**

To enter BIOS/CMOS setup during the boot-up process, various keys can be used depending on the motherboard/BIOS manufacturer. Common keys include DEL, F2, and F10. Different BIOS manufacturers (AMI, Phoenix, Award) may use different key combinations.

---

### Question 15
**Discuss how the CD-ROM reads data from the CD.**

**Answer:**

1. The CD-ROM drive contains a **spindle** that rotates the disc at varying speeds.
2. A **laser beam** is generated and aimed at the underside of the spinning disc through a prism/lens.
3. The laser reflects off the **pits** and **lands** on the reflective surface:
   - **Lands** (flat areas) reflect more light → detected as binary **1**.
   - **Pits** (indentations) reflect less light → detected as binary **0**.
4. A **light-sensitive diode (photo detector)** reads the intensity of the reflected laser light.
5. The changing pattern of reflected light (as the disc spins) is converted into a stream of electrical signals representing 0s and 1s.
6. These binary signals are decoded by the CD-ROM drive's controller into usable data and transferred to the computer via the IDE/ATAPI interface.
7. **Speed** is indicated by a multiplier (1x, 2x, 4x, etc.), where 1x = 150 KB/sec. Faster drives spin the disc faster, allowing more data to be read per unit time.

---

### Question 16
**Explain how the Hard Disk Drive writes and reads data to and from platters.**

**Answer:**

**Structure:** A hard disk has multiple aluminum/glass platters coated with a magnetically sensitive thin-film (cobalt alloy), stacked on a common spindle with a Read/Write head for each surface.

**Writing data:**
1. The platters spin at high speed (7200 RPM and higher).
2. The Read/Write arm moves to the correct **track** (seek time).
3. A current pulse is applied to the **magnetization coil** in the Read/Write head.
4. This causes the magnetic particles on the platter surface to **align** in a specific direction, parallel to the applied field — this direction represents a flux.
5. Reversing the current reverses the direction of magnetization (**flux reversal**) — representing a change from 0 to 1 or vice versa.
6. As the platter spins, the head lays down a pattern of flux transitions along the track, representing binary data.

**Reading data:**
1. The platter spins and the Read/Write head is positioned over the correct track and sector.
2. The movement of the magnetized disk past the head **induces a voltage** in the coil of the head.
3. The **polarity of the induced voltage** is monitored — it reveals the direction of magnetization (flux state) of each bit.
4. This flux pattern is decoded into binary data (0s and 1s) and transferred to the CPU via the disk controller.

---

### Question 17
**Explain the steps performed during the computer system Power-On Self-Test (POST).**

**Answer:**

Every time the computer is turned on, the BIOS runs the **Power-On Self-Test (POST)** — a series of self-diagnostic tests to verify the major hardware is functioning correctly. The POST is stored in the ROM BIOS.

**Steps during POST:**

1. **CPU Self-Check:** The CPU checks itself first, then checks the system timer.

2. **RAM Test:** The POST writes data to each RAM chip and then reads it back. Any difference indicates faulty RAM.

3. **BIOS Integrity Check:** The BIOS ROM checksum is verified.

4. **System Hardware Check:** The POST checks for properly functioning components including the video card, keyboard, and other hardware.

5. **Error Reporting:**
   - If errors are found that can be displayed visually, an error message appears on the monitor.
   - If errors occur before the video card is initialized (cannot display), the BIOS sends **beep codes** — combinations of short and long beeps specific to the BIOS manufacturer (AMI, Award, Phoenix).
   - A **single short beep** means POST passed — computer starts normally.

6. **Initialization:** Devices are initialized (video card, memory, storage controllers).

7. **Boot Sequence:** After POST passes, the BIOS looks for the OS boot record — first checking the floppy drive, then the hard drive, then the CD-ROM (order configurable in BIOS setup).

---

### Question 18
**How can you identify an ATX motherboard?**

**Answer:**

An ATX motherboard can be identified by the following distinguishing features:

1. **Single 20-pin Power Connector (P1):** ATX uses one keyed 20-pin motherboard power connector, unlike AT which uses two 6-pin connectors (P8/P9).

2. **Integrated I/O Port:** ATX motherboards have an integrated I/O port area (PS/2 mouse and keyboard connectors, USB ports, serial and parallel ports) built directly onto the motherboard edge.

3. **Expansion Slot Orientation:** Expansion slots run **parallel to the short side** of the board, allowing more space for other components.

4. **CPU and RAM Location:** The CPU and RAM are located next to the power supply, so the power supply fan can cool them effectively.

5. **Supports 3.3V Operation:** ATX motherboards support 3.3V from the ATX power supply for newer processors.

6. **PS/2 Mouse Connector:** Built-in PS/2 mouse and keyboard connectors integrated into the board.

7. **Airflow Design:** The cooling fan pulls air through the case from the front and exhausts out the rear of the power supply.

8. **Form Factor Size:** Standard ATX board is approximately 12" × 9.6". Smaller variants (MicroATX, Mini-ITX) are also based on the ATX standard.

---

### Question 19
**Give the different types of expansion slots available on the Computer Motherboard.**

**Answer:**

The common expansion slots on a computer motherboard are:

1. **ISA (Industry Standard Architecture)** — 16-bit, 8 MHz, obsolete, found on old AT boards.
2. **EISA (Extended ISA)** — 32-bit, 8 MHz, software-configured, backward compatible with ISA cards.
3. **PCI (Peripheral Component Interconnect)** — 32-bit, 33 MHz, Plug-and-Play, most common in ATX boards.
4. **AGP (Accelerated Graphics Port)** — dedicated high-speed slot for video adapters only, faster than PCI.
5. **PCIe (PCI Express)** — modern replacement for PCI and AGP, serial interface, very high bandwidth.
6. **USB (Universal Serial Bus)** — external port, up to 127 devices, hot-pluggable, Plug-and-Play.

*(Note: PCIe is the current modern standard not extensively detailed in the notes but worth mentioning as the current evolution.)*

---

### Question 20
**Discuss why you would choose to build your own PC rather than buy a ready-made PC.**

**Answer:**

**Seven reasons to BUILD your own PC:**

1. **Cost savings** — You can choose components that offer better value for money and avoid paying for bundled software or features you don't need.
2. **Custom specifications** — You can select exactly the components that meet your specific needs (faster CPU, more RAM, specific GPU, etc.).
3. **Better quality components** — You choose each part individually, selecting higher-quality components instead of budget parts used by manufacturers to cut costs.
4. **Educational experience** — Building a PC gives you deep understanding of how hardware works, valuable for IT professionals.
5. **Upgradability** — You know exactly what is inside, making future upgrades easier (compatible motherboard, right form factor).
6. **No bloatware** — Pre-built PCs often come loaded with unwanted software; building your own means a clean OS installation.
7. **Personal satisfaction and documentation** — You have complete inventory knowledge and can keep detailed warranty and component records.

**Three reasons to BUY a ready-made PC:**

1. **Convenience** — Ready to use immediately after purchase with all components tested and working together.
2. **Warranty and support** — Manufacturer provides full system warranty and technical support for the entire unit.
3. **Time savings** — No research, component selection, assembly, or troubleshooting required — suitable for non-technical users.

---

### Question 21
**What are the reasons for partitioning a hard disk before installing an operating system?**

**Answer:**

1. **Organize data efficiently** — Different partitions can hold the OS, programs, and user data separately, making management easier.
2. **Support multiple operating systems** — Multiple partitions allow different OSes (Windows and Linux) to be installed on the same physical disk.
3. **Improve performance** — Smaller partitions have shorter seek times and can be defragmented more efficiently.
4. **File system flexibility** — Different partitions can use different file systems (FAT32, NTFS) as required.
5. **Data protection** — If one partition is corrupted, other partitions may remain intact and unaffected.
6. **Enable the OS to recognize the drive** — The FDISK partition must be created and set as active before the drive can be formatted and made bootable.
7. **Large disk management** — FAT16 had a 2GB limit; partitioning allowed large disks to be split into manageable segments before FAT32 and NTFS resolved this.

---

### Question 22
**Why is it necessary to format a drive before using a storage device?**

**Answer:**

Formatting is necessary for the following reasons:

1. **Creates the file system structure** — Formatting establishes the FAT (File Allocation Table) or NTFS structure that the OS needs to organize, name, and locate files on the drive.
2. **Prepares the directory** — It creates the root directory where file information will be stored.
3. **Marks bad sectors** — The formatting process identifies and marks any damaged sectors so the OS will not attempt to store data there.
4. **Makes the disk bootable (with /S flag)** — High-level formatting with the /S switch copies the system boot files, making the drive bootable.
5. **Erases existing data** — Formatting removes all previous data and prepares a clean environment for the OS installation.
6. **Establishes track and sector boundaries** — Low-level formatting physically divides the disk into tracks and sectors that high-level formatting then uses for file storage.

---

### Question 23
**What are the functions of the standoffs that sit on the motherboard?**

**Answer:**

**Standoffs** are small pegs or risers made of non-conductive (plastic) or conductive (metallic) material that are inserted between the motherboard and the computer case.

**Functions:**
1. **Prevent short circuits** — Standoffs create a physical gap between the motherboard's circuits and the metal computer case, preventing the metallic case from making unwanted electrical contact with the motherboard's copper traces.
2. **Provide physical support** — They hold the motherboard securely in place, preventing it from bending or flexing during use.
3. **Maintain alignment** — They ensure the motherboard sits correctly so that expansion slots, I/O ports, and power connectors align with the openings in the case.
4. **Allow airflow** — The gap created allows air to circulate under the motherboard, aiding in cooling.

---

### Question 24
**Give the causes of processor failure and how to troubleshoot this failure.**

**Answer:**

**Causes of processor failure:**

1. **Overheating** — Most common cause. If the heat sink/fan fails or is improperly installed, the CPU overtemperature can cause permanent damage.
2. **Incorrect installation** — Installing the CPU backwards or bending pins during insertion causes failure.
3. **Wrong voltage setting** — Operating the processor at incorrect voltage (jumper settings) causes unreliable performance or damage.
4. **Electrostatic discharge (ESD)** — Static electricity can permanently damage CPU circuitry if proper anti-static precautions are not followed.
5. **Power surges** — Voltage spikes from the power supply can damage the CPU.
6. **Physical damage** — Dropping the CPU or applying excessive force.
7. **Incompatible motherboard** — Installing a CPU not supported by the motherboard's chipset/socket.

**Troubleshooting:**

1. Check that the **CPU fan is working** and the heat sink is properly seated with thermal compound applied.
2. Verify **jumper/BIOS settings** for correct CPU voltage and speed.
3. Ensure the CPU is **correctly seated** in the socket with no bent or missing pins; check the ZIF lever is locked.
4. Use an **antistatic wrist strap** when handling the CPU to prevent ESD damage.
5. Check the **POST beep codes** — a specific beep pattern (e.g., 5 short beeps for AMI BIOS) indicates CPU failure.
6. **Test with a known-good CPU** in the same socket to determine if the motherboard or CPU is at fault.
7. Verify the **power supply** is delivering correct voltages using a multimeter.

---

### Question 25
**What are the functions of the data bus on the motherboard? What are some of the bus sizes that can be on a motherboard?**

**Answer:**

**Functions of the data bus:**

1. **Transfers data** between the CPU, memory (RAM), and I/O devices.
2. **Bi-directional pathway** — allows data to flow in both directions:
   - From CPU to memory during a **write** operation.
   - From memory to CPU during a **read** operation.
3. **Determines processing capacity** — the width of the data bus (in bits) represents the computer word size — how much data the CPU can process per clock cycle.
4. **Connects system components** — serves as the primary data highway on the motherboard connecting all major components.

**Common bus sizes:**

| Bus Width | Era/Notes |
|---|---|
| **8-bit** | Very old systems (8088, 8086) |
| **16-bit** | ISA bus, older AT systems (80286) |
| **32-bit** | Modern ISA/PCI systems (80386, 80486, Pentium) |
| **64-bit** | Current CPUs (Pentium 4, modern processors) |

The larger the bus size, the more data that can be transferred simultaneously, resulting in better system performance.

---

### Question 26
**Give the steps of Hard Disk Drive configuration for installing in your personal computer.**

**Answer:**

**Step 1: Set the Jumpers**
- Determine whether this is the only drive, master, or slave drive on the IDE channel.
- Use needle-nosed pliers or tweezers to set the jumper to the correct position:
  - **Master** — for a single drive or primary drive on an IDE channel.
  - **Single** — if the drive provides this option and it is the only drive on that channel.
  - **Slave** — if another drive is the master on the same cable.
  - **Cable Select** — if supported by both system and cable.

**Step 2: Choose the Drive Bay**
- Select an appropriate 3.5" drive bay in the computer case (one without a front faceplate to remove).

**Step 3: Slide the Drive into the Bay**
- Insert the hard drive into the bay with the label side up and circuit board facing down.
- Do not mount it upside down.
- Slide it in until the screw holes align with the case rails.

**Step 4: Secure with Screws**
- Use the correct size screws (preferably those packaged with the drive).
- Hand-tighten first, then finish with a screwdriver. Do not overtighten.

**Step 5: Connect the Ribbon (Data) Cable**
- Use the 40-pin, 80-conductor IDE ribbon cable for hard drives.
- Align **Pin 1** on the cable (red stripe) with Pin 1 on the drive connector (usually closest to the power connector).
- Connect the other end to the **primary IDE controller** (IDE1) on the motherboard, again aligning Pin 1.

**Step 6: Connect the Power Cable**
- Connect the larger 4-pin Molex power connector from the power supply to the drive's power port.
- The connector is keyed and fits only one way.
- If needed, rock gently back and forth until it snaps into place.

**Step 7: Verify**
- Check that ribbon cable is fully seated with no bent pins and Pin 1 is aligned.
- Check that the power connector is secure.
- Check that all screws are tightened.

**Step 8: BIOS Detection**
- Boot the system and enter BIOS Setup (F2, DEL, or F10).
- Verify the BIOS detects the hard drive with correct capacity information.
- Set it as the primary boot device if installing an OS.

---

## SECTION F: OPERATING SYSTEMS

---

### Question 1
**Define the term "Operating System."**

**Answer:**

An **Operating System (OS)** is a software program that controls the thousands of operations a computer performs, provides an interface between the user and the computer hardware, and runs application programs. Basically, the operating system is in charge of running the computer.

It acts as the manager of all hardware and software resources in the computer system, translating requests for operations on files and hardware into operations that the actual hardware controllers can carry out.

Today, most computer systems are sold with an operating system already installed. Examples include Microsoft Windows, Linux/Unix, and macOS.

---

### Question 2
**Give and explain three components of any operating system.**

**Answer:**

An operating system has three major design components:

**1. Kernel:**
- The **core** of the operating system — a small piece of code loaded into memory when the computer boots.
- Contains instructions to manage hardware devices.
- Manages and controls memory allocation, system processes, and other programs.
- Application software and other parts of the OS rely on the kernel for basic scheduling services and access to hardware and peripherals.

**2. User Interface (UI):**
- The **most visible part** of the operating system — the component the user directly interacts with.
- Acts as a bridge between the user and the kernel.
- Works like an interpreter — translating user keystrokes, mouse clicks, or other inputs for the appropriate programs.
- Program output is organized and displayed through the UI.
- Can be a **Command Line Interface (CLI)** like DOS, or a **Graphical User Interface (GUI)** like Windows.

**3. File System:**
- Determines the way files are **named**, and how and where they are placed on storage devices (hard disks, etc.).
- The type of file system determines whether files can be secured from other users or programs.
- Also defines how data is physically arranged on the storage media.
- Examples: FAT16, FAT32, NTFS (Windows); ext4 (Linux).
- Some file systems use disk space more efficiently than others.

---

### Question 3
**Give and explain the Functions of an Operating System.**

**Answer:**

All operating systems perform the same basic functions regardless of size or complexity:

**1. File and Folder Management:**
- Creates a file structure on the hard drive for storing and retrieving user data.
- When a file is saved, the OS saves it, assigns a name, and remembers its location for future use.

**2. Management of Applications:**
- When a user requests a program, the OS locates the application and loads it into RAM.
- As more programs are loaded, the OS allocates computer resources (CPU time, memory) appropriately.

**3. Support for Built-in Utility Programs:**
- Utility programs help maintain and repair the OS — identifying problems, locating lost files, repairing damaged files, and backing up data.
- Examples: Disk Defragmenter, ScanDisk, Backup utilities.

**4. Control of Computer Hardware:**
- The OS sits between programs and the BIOS.
- All programs that need hardware resources must go through the OS.
- The OS accesses hardware through the BIOS or directly through device drivers.
- Manages devices like printers, scanners, keyboards, and displays.

**5. Input/Output Management:**
- Recognizes input from the keyboard, mouse, or other devices.
- Sends output to the video screen, printer, or network.
- Tracks files and manages storage operations.

---

### Question 4
**Explain the following terms as related to operating systems: (i) Multiuser, (ii) Multitasking, (iii) Multiprocessing, (iv) Multithreading.**

**Answer:**

**(i) Multiuser Operating System:**
A system where **two or more users** can run programs and share peripheral devices (such as a printer) at the same time. Each user has their own workspace, and the OS manages access and security between users. Example: Unix/Linux in a network environment.

**(ii) Multitasking Operating System:**
A capability of a computer to **run multiple applications at the same time**. The CPU switches between tasks so rapidly that it appears all programs are running simultaneously. Modern Windows, Linux, and macOS are multitasking. Example: Writing a document while music plays and a file downloads simultaneously.

**(iii) Multiprocessing Operating System:**
Allows a computer to have **two or more CPUs** that programs share. True parallel processing occurs — multiple processors simultaneously execute different instructions. Improves performance for computation-intensive tasks. The OS must manage scheduling across multiple physical processors.

**(iv) Multithreading Operating System:**
The capability of a program to be **broken into smaller parts (threads)** that can be loaded and executed as needed by the operating system. Multithreading allows individual programs to be multitasked internally — for example, a word processor can simultaneously spell-check, auto-save, and accept input using different threads. Improves the performance of individual programs.

*Note: Today, almost all operating systems are multiuser, multitasking, and support multithreading.*

---

### Question 5
**What are the three distinct sections that make up the Disk Operating System? Explain the function of each section.**

**Answer:**

The Disk Operating System (DOS) is made up of three distinct sections:

**1. Boot Files:**
- Used during the **boot process** (startup) of the computer.
- These files are responsible for initializing the system and loading the rest of the OS into memory.
- They are located in the first sectors of the disk so the BIOS can find and load them.
- Example: IO.SYS, MSDOS.SYS in MS-DOS.

**2. File Management Files:**
- Enable the system to **manage data** held in a system of files and folders.
- Provides the file naming convention, directory structure, and the ability to create, read, update, and delete files.
- The COMMAND.COM file contains built-in (internal) commands like DIR, COPY, and DEL.
- Example of file management: organizing files into directories using `MD`, `CD`, `RD` commands.

**3. Utility Files:**
- Enable the user to **manage system resources, troubleshoot the system, and configure settings**.
- These are external commands stored on disk for use when needed.
- Examples include: FORMAT, FDISK, SCANDISK, DEFRAG, EDIT.
- FDISK is used for partitioning, FORMAT for preparing drives, SCANDISK for error checking.

---

### Question 6
**Give and explain the common attributes for DOS files.**

**Answer:**

In DOS, all files have **attributes** — a set of parameters that describe the nature and properties of a file. The common attributes are:

**1. Hidden File (H):**
- The file will **not appear** in a normal DOS directory listing (`DIR` command).
- Protects important system files from being accidentally deleted by users.
- Note: Hiding a file does not prevent access — it just makes it invisible in standard listings.
- To see hidden files, use: `DIR /AH`

**2. Read-Only (R):**
- The user can **open and read** this file but **cannot modify or delete** it.
- Protects important files from accidental changes.
- Used for system configuration files and critical program files.

**3. Archive (A):**
- Marks a file as needing to be **backed up** (archived).
- The archive bit is set when a file is created or modified.
- Backup programs use this attribute to identify which files have changed since the last backup.

**4. System File (S):**
- Identifies a file as part of the **DOS operating system** required for a successful boot.
- Combined with the Hidden attribute for core OS files.
- These files should not be moved, renamed, or deleted.
- Example: IO.SYS, MSDOS.SYS are system files.

**Setting/Removing attributes:**
The `ATTRIB` command is used to display, set, or remove file attributes:
```
ATTRIB [+R or -R] [+A or -A] [+S or -S] [+H or -H] [filename]
```
- `+` sets the attribute, `-` clears it.

---

*End of Computer Hardware Technology Review Questions and Answers*
*Compiled from: Computer Hardware and Maintenance Laboratory Notes — University of Rwanda, Academic Year 2025-2026*
