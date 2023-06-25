BUILD_DIR 	?= build
LIB_DIR		= $(BUILD_DIR)/lib
OBJ_DIR		= $(BUILD_DIR)/obj

FLEX_DIR	= flex

SRC_DIR 	= src
INC_DIR		= inc

FLEX_FILES		= $(wildcard $(FLEX_DIR)/*.lex)
FLEX_SRCS		= $(addprefix $(SRC_DIR)/$(FLEX_DIR)/, $(notdir $(FLEX_FILES:.lex=.yy.c)))

C_SRCS			= $(wildcard $(SRC_DIR)/*.c)
C_SRCS			+= $(wildcard $(SRC_DIR)/**/*.c)
C_SRCS			+= $(FLEX_SRCS)

C_OBJ			= $(C_SRCS:.c=.o)

CC_FLAGS		= -I$(INC_DIR)

.PRECIOUS: $(SRC_DIR)/$(FLEX_DIR)/%.yy.c

$(SRC_DIR)/$(FLEX_DIR)/%.yy.c: $(FLEX_DIR)/%.lex
	flex -P $* --header-file=$(INC_DIR)/flex/$*.yy.h -o $@ $<

%.o: %.c
	$(CXX) -c -o $@ $<

compile: $(C_OBJ)

clean:
	rm -rf $(FLEX_SRCS)
	rm -rf $(INC_DIR)/flex/*.yy.h
	rm -rf $(C_OBJ)