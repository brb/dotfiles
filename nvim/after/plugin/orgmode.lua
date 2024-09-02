require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/index.org',
  org_capture_templates = {
	  t = {
		  description = "todo",
          template = '* %?\n  %u',
		  target = "~/org/inbox.org",
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
	  },
      p = {
		  description = "podcast",
          template = '* %?\n  %u',
		  target = "~/org/podcast.org",
	  }
  },
  org_startup_folded = 'showeverything',
  win_split_mode = 'auto',
})
