
class TruthTable():
	@staticmethod
	def bitfield(n):
		return [ 1 if digit=='1' else 0 for digit in bin(n)[2:] ]

	def __init__(self, size, outputs):
		self.no_in = size[0]
		self.no_out = size[1]

		self.outputs = outputs
	
	def __str__(self):
		buf = ""
		for i,outputs in enumerate(self.outputs):
			inputs = self.bitfield(i)
			inputs = [ 0 for i in range(self.no_in - len(inputs)) ] + inputs

			buf = buf + f'{ inputs } | { outputs }\n'
		return buf

class BaseGate():
	def __init__(self, size, outputs):
		self.ttable = TruthTable(size, outputs)

class Constant(BaseGate):
	def __init__(self, value):
		super().__init__([0, 1], [value])

class AndGate(BaseGate):
	def __init__(self, size):
		outputs = [ [0] for i in range(2**size) ]
		outputs[-1] = [1]
		super().__init__([size, 1], outputs)

class OrGate(BaseGate):
	def __init__(self, size):
		outputs = [ [1] if 1 in TruthTable.bitfield(i) else [0] for i in range(2**size) ]
		super().__init__([size, 1], outputs)

class XorGate(BaseGate):
	def __init__(self, size):
		outputs = [ [1] if TruthTable.bitfield(i).count(1) == 1 else [0] for i in range(2**size) ]
		super().__init__([size, 1], outputs)

class NotGate(BaseGate):
	def __init__(self):
		outputs = [[1], [0]]
		super().__init__([1, 1], outputs)