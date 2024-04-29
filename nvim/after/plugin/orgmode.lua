require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/index.org',
  org_capture_templates = {
	  d = {
		  description = "brain dump",
          template = '* %?\n  %u',
		  target = "~/org/dump.org",
	  },
      r = {
		  description = "read",
          template = '* %?\n  %u',
		  target = "~/org/read.org",
	  },
      m = {
		  description = "music",
          template = '* %?\n  %u',
		  target = "~/org/music.org",
	  },
      w = {
		  description = "watch",
          template = '* %?\n  %u',
		  target = "~/org/watch.org",
	  }
  },
  org_startup_folded = 'showeverything',
  win_split_mode = 'auto',
})
