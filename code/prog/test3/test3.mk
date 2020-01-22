
# WARNING: All paths are relative to this file, and directories mustn't have trailing /.

# Add additional source files not in standard source directory using below.
#$(eval $(call DB_SOURCE,<file:.c||.s>))
#$(eval $(call DB_SOURCE,<directory>))
$(eval $(call DB_SOURCE,others))

# Specify default segment for all files in module using the below.
#$(eval $(call DB_SEGMENT,<segment>))
$(eval $(call DB_SEGMENT,TESTSEGMENT3))

# Specify any special case segments for specific files using the below.
#$(eval $(call DB_SEGMENT,<file:.c>,<segment>))
$(eval $(call DB_SEGMENT,test32.c,TESTSEGMENT32))
$(eval $(call DB_SEGMENT,others/others31.c,OTHERSEGMENT31))

# Specify any required libraries.
#$(eval $(call DB_LIBRARY,<library>))
$(eval $(call DB_LIBRARY,test1))
