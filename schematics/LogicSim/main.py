from pylogic import *

gate = AndGate(2)
print(gate.ttable)

gate = OrGate(3)
print(gate.ttable)

gate = XorGate(5)
print(gate.ttable)

gate = NotGate()
print(gate.ttable)

gate = Constant(1)
print(gate.ttable)