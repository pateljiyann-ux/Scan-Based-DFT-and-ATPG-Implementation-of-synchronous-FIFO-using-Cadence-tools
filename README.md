# Scan-Based-DFT-and-ATPG-Implementation-of-synchronous-FIFO-using-Cadence-tools
Complete Scan-Based DFT and ATPG Implementation for synchronous FIFO using Cadence Genus and Modus. This project demonstrates RTL synthesis, muxed scan insertion, scan chain verification, ATPG vector generation, and stuck-at fault coverage analysis achieving 99.98% adjusted fault coverage using industrial ASIC DFT flow.


## Overview

This project demonstrates a complete Design-for-Testability (DFT) and Automatic Test Pattern Generation (ATPG) flow using Cadence Genus and Cadence Modus for a digital RTL design.

The project includes:

- RTL synthesis
- Full scan insertion
- Scan chain verification
- ATPG pattern generation
- Fault coverage analysis
- Verilog vector generation

The objective of this project is to improve ASIC testability and achieve high stuck-at fault coverage using scan-based DFT methodology.

---

# Tools Used

| Tool | Purpose |
|------|----------|
| Cadence Genus | RTL synthesis and scan insertion |
| Cadence Modus | ATPG and fault coverage |
| Xcelium / NCsim | Simulation |
| Verilog HDL | RTL Design |

---

# DFT Methodology

The following DFT techniques were implemented:

- Full Scan DFT
- Muxed Scan Architecture
- Automatic Scan Chain Stitching
- Stuck-at Fault ATPG
- Parallel Scan Format

---

# Project Flow

```text
RTL Design
   ↓
RTL Synthesis using Genus
   ↓
Scan Insertion
   ↓
Scan Chain Verification
   ↓
DFT Netlist Generation
   ↓
ATPG using Modus
   ↓
Fault Coverage Analysis
   ↓
Verilog Test Vector Generation

---

# ATPG Results

## Fault Coverage Results

```text
Total Faults        : 6630
Detected Faults     : 6628
Redundant Faults    : 1
Untested Faults     : 1

Test Coverage       : 99.97%
Adjusted Coverage   : 99.98%
```

---
