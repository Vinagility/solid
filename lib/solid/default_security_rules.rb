Solid::MethodWhitelist
	.allow(
		BasicObject => [:!, :!=, :==],
		Object => [:present?, :blank?, :in?, :to_json],
		Kernel => [:nil?, :!~],
		Module => [:==],
		Enumerable => [:sort],
		Comparable => [:<, :<=, :==, :>, :>=, :between?],
    Numeric => [:blank?,
      :second, :seconds, :minute, :minutes, :hour, :hours, :day, :days, :week, :weeks,
      :bytes, :kilobytes, :megabytes, :gigabytes, :terabytes, :petabytes, :exabytes],
    Integer => [:multiple_of?, :month, :months, :year, :years, :to_json],
	).deny(
		Module => [:const_get, :const_set, :const_defined?, :freeze, :ancestors],
		Class => [:new, :allocate, :superclass],
	)
