# # Create some example log files
# 
library(logger)
library(fs)
library(here)

log_appender(
  appender_file(file = here("data-raw/log1.json"))
)

log_appender(appender_console)
# log_layout(layout_simple)
log_layout(layout_json())
log_threshold(TRACE)
log_info('Starting the script...')
log_debug('This is the second log line')
log_trace('Note that the 2nd line is being placed right after the 1st one.')
log_success('Doing pretty well so far!')
log_warn('But beware, as some errors might come :/')
log_error('This is a problem')
log_debug('Note that getting an error is usually bad')
log_error('This is another problem')
log_fatal('The last problem')
# 
# 
