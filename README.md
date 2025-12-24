# 🥤 Vending Machine Controller – Verilog (FSM Based)

## 📌 Project Overview
This project implements a **Vending Machine Controller** using **Verilog HDL** based on a **Finite State Machine (FSM)** approach.  
The machine dispenses a product when the inserted amount reaches the required price.

---

## ⚙️ Features
- FSM-based sequential design
- Accepts ₹5 and ₹10 coins
- Product price: ₹10
- Automatic reset after dispensing
- Clean and synthesizable Verilog code
- Verified using testbench and waveform simulation

---

## 🔁 FSM Description
The design consists of three states:
- **S0** – Idle state (₹0 inserted)
- **S5** – ₹5 inserted
- **S10** – ₹10 reached → Product dispensed

This is a **Moore FSM**, where output depends only on the current state.

---

## 🔌 Inputs & Outputs

### Inputs
- `clk`   – System clock  
- `reset` – Asynchronous reset  
- `coin5` – ₹5 coin input  
- `coin10`– ₹10 coin input  

### Output
- `dispense` – Goes HIGH when product is dispensed

---

## 🧪 Verification
A Verilog testbench is used to:
- Apply reset
- Insert different coin sequences
- Verify correct state transitions
- Observe output using waveform (`.vcd`) analysis

---

## 🛠 Tools Used
- **Icarus Verilog**
- **GTKWave**
- **VS Code**

