
# WARNING: All paths are relative to this file, and directories mustn't have trailing /.

# Add additional source files not in standard source directory using below.
#$(eval $(call DB_SOURCE,<file:.c||.s>))
#$(eval $(call DB_SOURCE,<directory>))
$(eval $(call DB_SOURCE,others))

# Specify default segment for all files in module using the below.
#$(eval $(call DB_SEGMENT,<segment>))
$(eval $(call DB_SEGMENT,BOOT))

# Specify any special case segments for specific files using the below.
#$(eval $(call DB_SEGMENT,<file:.c>,<segment>))
$(eval $(call DB_SEGMENT,test32.c,TEST))
$(eval $(call DB_SEGMENT,others/others31.c,TEST))

$(eval $(call DB_REQ_SEGMENT,HELLO))

# Specify any required libraries.
#$(eval $(call DB_LIBRARY,<library>))
$(eval $(call DB_LIBRARY,test1))
$(eval $(call DB_LIBRARY,test2))

# Specify any configuration defines.
#$(eval $(call DB_DEFINE,<define>,<value>))
#$(eval $(call DB_DEFINE,<file:.c>,<define>,<value>))
$(eval $(call DB_DEFINE,TEST,5))
$(eval $(call DB_DEFINE,others/others31.c,TEST31,7))
