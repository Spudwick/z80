
# WARNING: All paths are relative to this file, and directories mustn't have trailing /.

# Add additional source files not in standard source directory using below.
#$(eval $(call DB_SOURCE,<file:.c||.s>))
#$(eval $(call DB_SOURCE,<directory>))
$(eval $(call DB_SOURCE,others/others11.c))

# Specify default segment for all files in module using the below.
#$(eval $(call DB_SEGMENT,<segment>))
$(eval $(call DB_SEGMENT,TESTSEGMENT1))

# Specify any special case segments for specific files using the below.
#$(eval $(call DB_SEGMENT,<file:.c>,<segment>))
$(eval $(call DB_SEGMENT,test12.c,TESTSEGMENT12))
$(eval $(call DB_SEGMENT,others/others11.c,OTHERSEGMENT11))

# Specify any configuration defines.
#$(eval $(call DB_DEFINE,<define>,<value>))
#$(eval $(call DB_DEFINE,<file:.c>,<define>,<value>))
