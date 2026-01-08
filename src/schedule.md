# Course Schedule

## CSC 2025 - Assembly Language & Computer Architecture
15-week lesson plan using Kip Irvine textbook with Raspberry Pi + Bob Plantz's Chapter 9 integration.

| Week | Topics (Irvine Chapters & Sections) | Key Activities / Labs / Projects | Outcomes |
|------|-------------------------------------|----------------------------------|----------|
| 1 | **Ch 1: Basic Concepts (1.1-1.4)** Welcome, virtual machines, data representation, Boolean algebra | Install Visual Studio + Irvine32/64 libraries<br>First x86-64 "Hello, world"<br>Number base conversion exercises | 1, 2 |
| 2 | **Ch 2: x86 Processor Architecture (all)** | Diagram instruction execution cycle<br>Compare 32-bit vs 64-bit modes<br>Discuss real/protected/long mode | 1, 2 |
| 3 | **Ch 3.1-3.4: Basic elements, data definition, assembling/linking, AddTwo program** | Lab: Assemble-link-run cycle<br>Write & debug AddTwo + variants | 1, 6, 7 |
| 4 | **Ch 4.1-4.3: MOV, XCHG, ADD/SUB, NEG, data-related operators (OFFSET, PTR, etc.)** | Lab: Variables, arithmetic expressions, OFFSET/SIZEOF usage | 3, 6 |
| 5 | **Ch 4.4-4.6: Indirect & indexed addressing, arrays, JMP/LOOP, 64-bit programming** | Lab: Sum integer array using indexed addressing (32-bit & 64-bit) | 3, 6 |
| 6 | **Ch 5: Procedures (stack, PROC/CALL/RET, Irvine32 library, passing parameters)** | Convert array sum to procedure<br>Use WriteString, ReadInt, DumpRegs | 6 |
| 7 | **Ch 6: Conditional processing (flags, CMP, TEST, Jcc, finite-state machines)** | Lab: Signed-integer string validation (6.5.2)<br>Build if-then-else and while loops in assembly | 3, 6, 8 |
| 8 | **Midterm Exam (Chapters 1-6) + review** | Pure x86-64 exam (no Pi yet) | All so far |
| 9 | **Ch 7: Integer arithmetic (shifts, rotates, MUL/IMUL, DIV/IDIV, ADC/SBB)** | **Raspberry Pi Week 1** - Plantz Ch 9 sections 1-3 (registers, MOV, ADD, LDR/STR)<br>Lab: Set up Pi OS 64-bit + "Hello World" via UART<br>Port Ch 7 multiply/divide lab to AArch64 (compare MUL vs x86 MUL) | 2, 3, 4, 5 |
| 10 | **Ch 8: Advanced procedures (stack frames, local vars, recursion, x64 calling convention)** | **Raspberry Pi Week 2** - Plantz Ch 9 sections 4-6 (branches, procedures, stack frames)<br>Lab: Recursive factorial on Pi (Plantz example) + compare to x86 version<br>Measure recursion depth with cycle counter | 2, 6 |
| 11 | **Ch 9: Strings & arrays (MOVS/STOS/SCAS, string primitives, bubble sort, binary search)** | **Raspberry Pi Week 3** - Plantz Ch 9 sections 7-8 (arrays, loops, syscalls)<br>Lab: Port bubble sort to Pi; time with CNTVCT_EL0 vs RDTSC on PC<br>Write short report comparing cycles & code size | 4, 5, 6 |
| 12 | **Ch 12: Floating-point (IEEE 754, FPU stack, basic instructions)** | **Raspberry Pi Bonus** - Use ARM V registers (scalar FP)<br>Lab: Mixed integer/FP math on Pi vs x86 SSE<br>Optional: Simple NEON vector add | 3, 4 |
| 13 | **Ch 10: Structures, simple macros + performance review** | Lab: Define STRUCT on x86 and equivalent layout on Pi<br>Begin final project work | 6, 8 |
| 14 | **Review + project work time** | Final project choices (must pick one):<br>1. Pure x86-64 Windows program (Irvine-style)<br>2. Bare-metal Pi program using Plantz templates (e.g., LED Game of Life)<br>3. Hybrid benchmark comparing same algorithm on x86-64 vs AArch64 | 1-8 |
| 15 | **Final demos & course wrap-up** | Live demos (Pi projects on real hardware highly encouraged)<br>Submit code + short reflection on x86 vs ARM differences | All outcomes |

## Grading Breakdown (Subject to Change)

- **Weeks 1-8 labs & midterm:** 45%
- **Weeks 9-12 Pi labs:** 20%  
- **Weeks 13-15 Final project (x86 or Pi or hybrid):** 20%
- **Attendance/Participation/reflections:** 15%

## Key Highlights

- **Weeks 1-8:** Focus on x86-64 assembly fundamentals using Kip Irvine textbook
- **Weeks 9-12:** Introduction to ARM assembly on Raspberry Pi using Bob Plantz's materials
- **Weeks 13-15:** Integration and comparison projects between x86 and ARM architectures
- **Midterm:** After Week 8, covering pure x86-64 content
- **Final Project:** Choice of x86-only, Pi-only, or comparative analysis projects