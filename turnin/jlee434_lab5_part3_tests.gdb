# Test file for "cs120b_lab_05_ATMega1284"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

test "initial - PINA: 0x00 => PORTB: 0x00"
set state = start
setPINA 0x00
continue 5
expectPORTB 0x00 
checkResult

test "initial - PINA: (0x00, 0x01)*1 => PORTB: 0x01"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x01 
checkResult

test "initial - PINA: (0x00, 0x01)*2 => PORTB: 0x03"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x03 
checkResult

test "initial - PINA: (0x00, 0x01)*3 => PORTB: 0x07"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x07 
checkResult

test "initial - PINA: (0x00, 0x01)*4 => PORTB: 0x0F"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x0f 
checkResult

test "initial - PINA: (0x00, 0x01)*5 => PORTB: 0x1F"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x1f 
checkResult

test "initial - PINA: (0x00, 0x01)*7 => PORTB: 0x00"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x00 
checkResult

test "initial - PINA: (0x00, 0x01)*8 => PORTB: 0x20"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x20 
checkResult

test "initial - PINA: (0x00, 0x01)*9 => PORTB: 0x30"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x30 
checkResult

test "initial - PINA: (0x00, 0x01)*10 => PORTB: 0x38"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x38 
checkResult

test "initial - PINA: (0x00, 0x01)*11 => PORTB: 0x3C"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x3C 
checkResult

test "initial - PINA: (0x00, 0x01)*12 => PORTB: 0x3E"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x3E 
checkResult

test "initial - PINA: (0x00, 0x01)*13 => PORTB: 0x3F"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x3F 
checkResult

test "initial - PINA: (0x00, 0x01)*14 => PORTB: 0x00"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x00 
checkResult

test "initial - PINA: (0x00, 0x01)*15 => PORTB: 0x01"
set state = start
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
setPINA 0x00
continue 5
setPINA 0x01
continue 5
expectPORTB 0x01 
checkResult

# Add tests below

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
