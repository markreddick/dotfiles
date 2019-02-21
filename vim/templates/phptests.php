
	/**
	 * Provider of valid values
	 *
	 * @return array Valid values
	 */
	public function validProvider()
	{
		return [
			[],
			[],
			[],
		];
	}

	/**
	 * Provider of invalid values
	 *
	 * @return array Invalid values
	 */
	public function invalidProvider()
	{
		return [
			[null],
			[new \DateTime()],
		];
	}

