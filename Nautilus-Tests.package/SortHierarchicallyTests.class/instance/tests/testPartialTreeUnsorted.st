testPartialTreeUnsorted

	self
		nodes: (self sortByNameSize: partialTree)
		shouldBe: partialTree