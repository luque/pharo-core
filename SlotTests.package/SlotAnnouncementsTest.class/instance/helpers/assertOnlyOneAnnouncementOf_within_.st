assertOnlyOneAnnouncementOf: anAnnouncement within: aBlock
	SystemAnnouncer uniqueInstance weak on: anAnnouncement send: #countAnnouncements: to: self.
	aBlock value.
	self assert: announcementsCount <= 1