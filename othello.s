WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
########################################################################
# DPST1092 23T2 -- Assignment 1 -- Othello!
#
#
# !!! IMPORTANT !!!
# Before starting work on the assignment, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
# Instructions to configure your text editor can be found here:
#   https://cgi.cse.unsw.edu.au/~dp1092/22T2/resources/mips-editors.html
# !!! IMPORTANT !!!
#
#
# This program was written by YOUR-NAME-HERE (z5555555)
# on INSERT-DATE-HERE
#
########################################################################

#![tabsize(8)]

# Constant definitions.
# !!! DO NOT ADD, REMOVE, OR MODIFY ANY OF THESE DEFINITIONS !!!

# Bools
TRUE  = 1
FALSE = 0

# Players
PLAYER_EMPTY = 0
PLAYER_BLACK = 1
PLAYER_WHITE = 2

# Character shown when rendering board
WHITE_CHAR         = 'W'
BLACK_CHAR         = 'B'
POSSIBLE_MOVE_CHAR = 'x'
EMPTY_CELL_CHAR    = '.'

# Smallest and largest possible board sizes (standard Othello board size is 8)
MIN_BOARD_SIZE = 4
MAX_BOARD_SIZE = 12

# There are 8 directions a capture line can have (2 vertical, 2 horizontal and 4 diagonal).
NUM_DIRECTIONS = 8

# Some constants for accessing vectors
VECTOR_ROW_OFFSET = 0
VECTOR_COL_OFFSET = 4
SIZEOF_VECTOR     = 8


########################################################################
# DATA SEGMENT
# !!! DO NOT ADD, REMOVE, MODIFY OR REORDER ANY OF THESE DEFINITIONS !!!
	.data
	.align 2

# The actual board size, selected by the player
board_size:		.space 4

# Who's turn it is - either PLAYER_BLACK or PLAYER_WHITE
current_player:		.word PLAYER_BLACK

# The contents of the board
board:			.space MAX_BOARD_SIZE * MAX_BOARD_SIZE

# The 8 directions which a line can have when capturing
directions:
	.word	-1, -1  # Up left
	.word	-1,  0  # Up
	.word	-1,  1  # Up right
	.word	 0, -1  # Left
	.word	 0,  1  # Right
	.word	 1, -1  # Down left
	.word	 1,  0  # Down
	.word	 1,  1  # Down right

welcome_to_reversi_str:		.asciiz "Welcome to Reversi!\n"
board_size_prompt_str:		.asciiz "How big do you want the board to be? "
wrong_board_size_str_1:		.asciiz "Board size must be between "
wrong_board_size_str_2:		.asciiz " and "
wrong_board_size_str_3:		.asciiz "\n"
board_size_must_be_even_str:	.asciiz "Board size must be even!\n"
board_size_ok_str:		.asciiz "OK, the board size is "
white_won_str:			.asciiz "The game is a win for WHITE!\n"
black_won_str:			.asciiz "The game is a win for BLACK!\n"
tie_str:			.asciiz "The game is a tie! Wow!\n"
final_score_str_1:		.asciiz	"Score for black: "
final_score_str_2:		.asciiz ", for white: "
final_score_str_3:		.asciiz ".\n"
whos_turn_str_1:		.asciiz "\nIt is "
whos_turn_str_2:		.asciiz "'s turn.\n"
no_valid_move_str_1:		.asciiz "There are no valid moves for "
no_valid_move_str_2:		.asciiz "!\n"
game_over_str_1:		.asciiz "There are also no valid moves for "
game_over_str_2:		.asciiz "...\nGame over!\n"
enter_move_str:			.asciiz "Enter move (e.g. A 1): "
invalid_row_str:		.asciiz "Invalid row!\n"
invalid_column_str:		.asciiz "Invalid column!\n"
invalid_move_str:		.asciiz "Invalid move!\n"
white_str:			.asciiz "white"
black_str:			.asciiz "black"
board_str:			.asciiz "Board:\n   "

############################################################
####                                                    ####
####   Your journey begins here, intrepid adventurer!   ####
####                                                    ####
############################################################

################################################################################
#
# Implement the following functions,
# and check these boxes as you finish implementing each function.
#
#  - [ ] main
#  - [ ] read_board_size
#  - [ ] initialise_board
#  - [ ] place_initial_pieces
#  - [ ] play_game
#  - [ ] announce_winner
#  - [ ] count_discs
#  - [ ] play_turn
#  - [ ] place_move
#  - [ ] player_has_a_valid_move
#  - [ ] is_valid_move
#  - [ ] capture_amount_from_direction
#  - [ ] other_player
#  - [ ] current_player_str
#  - [X] print_board			(provided for you)
################################################################################



################################################################################
# .TEXT <main>
	.text
main:
	# Args:     void
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   main
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

main__prologue:

main__body:
	# TODO: add your code for the `main` function here

main__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <read_board_size>
	.text
read_board_size:
	# Args:     void
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   read_board_size
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

read_board_size__prologue:

read_board_size__body:
	# TODO: add your code for the `read_board_size` function here

read_board_size__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <initialise_board>
	.text
initialise_board:
	# Args:     void
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   initialise_board
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

initialise_board__prologue:

initialise_board__body:
	# TODO: add your code for the `initialise_board` function here

initialise_board__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <place_initial_pieces>
	.text
place_initial_pieces:
	# Args:     void
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   place_initial_pieces
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

place_initial_pieces__prologue:

place_initial_pieces__body:
	# TODO: add your code for the `place_initial_pieces` function here

place_initial_pieces__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <play_game>
	.text
play_game:
	# Args:     void
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   play_game
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

play_game__prologue:

play_game__body:
	# TODO: add your code for the `play_game` function here

play_game__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <announce_winner>
	.text
announce_winner:
	# Args:     void
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   announce_winner
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

announce_winner__prologue:

announce_winner__body:
	# TODO: add your code for the `announce_winner` function here

announce_winner__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <count_discs>
	.text
count_discs:
	# Args:
	#    - $a0: int player
	#
	# Returns:
	#    - $v0: unsigned int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   count_discs
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

count_discs__prologue:

count_discs__body:
	# TODO: add your code for the `count_discs` function here

count_discs__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <play_turn>
	.text
play_turn:
	# Args:     void
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   play_turn
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

play_turn__prologue:

play_turn__body:
	# TODO: add your code for the `play_turn` function here

play_turn__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <place_move>
	.text
place_move:
	# Args:
	#    - $a0: int move_row
	#    - $a1: int move_col
	#
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   place_move
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

place_move__prologue:

place_move__body:
	# TODO: add your code for the `place_move` function here

place_move__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <player_has_a_valid_move>
	.text
player_has_a_valid_move:
	# Args:     void
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   player_has_a_valid_move
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

player_has_a_valid_move__prologue:

player_has_a_valid_move__body:
	# TODO: add your code for the `player_has_a_valid_move` function here

player_has_a_valid_move__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <is_valid_move>
	.text
is_valid_move:
	# Args:
	#    - $a0: int row
	#    - $a1: int col
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   is_valid_move
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

is_valid_move__prologue:

is_valid_move__body:
	# TODO: add your code for the `is_valid_move` function here

is_valid_move__epilogue:
	li	$v0, FALSE
	jr	$ra		# return FALSE;


################################################################################
# .TEXT <capture_amount_from_direction>
	.text
capture_amount_from_direction:
	# Args:
	#    - $a0: int row
	#    - $a1: int col
	#    - $a2: const vector *delta
	#
	# Returns:
	#    - $v0: unsigned int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   capture_amount_from_direction
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

capture_amount_from_direction__prologue:

capture_amount_from_direction__body:
	# TODO: add your code for the `capture_amount_from_direction` function here

capture_amount_from_direction__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <other_player>
	.text
other_player:
	# Args:     void
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   other_player
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

other_player__prologue:

other_player__body:
	# TODO: add your code for the `other_player` function here

other_player__epilogue:
	jr	$ra		# return;


################################################################################
# .TEXT <current_player_str>
	.text
current_player_str:
	# Args:     void
	#
	# Returns:
	#    - $v0: const char *
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - ...
	#
	# Structure:
	#   current_player_str
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]

current_player_str__prologue:

current_player_str__body:
	# TODO: add your code for the `current_player_str` function here

current_player_str__epilogue:
	jr	$ra		# return;


################################################################################
################################################################################
###                    PROVIDED FUNCTION — DO NOT CHANGE                     ###
################################################################################
################################################################################

################################################################################
# .TEXT <print_board>
# YOU DO NOT NEED TO CHANGE THE print_board FUNCTION
	.text
print_board:
	# Args: void
	#
	# Returns:  void
	#
	# Frame:    [$ra, $s0, $s1]
	# Uses:     [$a0, $v0, $t2, $t3, $t4, $s0, $s1]
	# Clobbers: [$a0, $v0, $t2, $t3, $t4]
	#
	# Locals:
	#   - $s0: col
	#   - $s1: row
	#   - $t2: board_size, row + 1
	#   - $t3: &board[row][col]
	#   - $t4: board[row][col]
	#
	# Structure:
	#   print_board
	#   -> [prologue]
	#   -> body
	#      -> header_loop
	#      -> header_loop__init
	#      -> header_loop__cond
	#      -> header_loop__body
	#      -> header_loop__step
	#      -> header_loop__end
	#      -> for_row
	#      -> for_row__init
	#      -> for_row__cond
	#      -> for_row__body
	#          -> print_row_num
	#          -> for_col
	#          -> for_col__init
	#          -> for_col__cond
	#          -> for_col__body
	#              -> white
	#              -> black
	#              -> possible_move
	#              -> output_cell
	#          -> for_col__step
	#          -> for_col__end
	#      -> for_row__step
	#      -> for_row__end
	#   -> [epilogue]

print_board__prologue:
	begin
	push	$ra
	push	$s0
	push	$s1

print_board__body:
	li	$v0, 4
	la	$a0, board_str
	syscall						# printf("Board:\n   ");

print_board__header_loop:
print_board__header_loop__init:
	li	$s0, 0					# int col = 0;

print_board__header_loop__cond:
	lw	$s1, board_size
	bge	$s0, $s1, print_board__header_loop__end # while (col < board_size) {

print_board__header_loop__body:
	li	$v0, 11
	addi	$a0, $s0, 'A'
	syscall						#     printf("%c", 'A' + col);

	li	$a0, ' '
	syscall						#     putchar(' ');

print_board__header_loop__step:
	addi	$s0, $s0, 1				#     col++;
	b	print_board__header_loop__cond		# }

print_board__header_loop__end:
	li	$v0, 11
	li	$a0, '\n'
	syscall						# printf("\n");

print_board__for_row:
print_board__for_row__init:
	li	$s0, 0					# int row = 0;

print_board__for_row__cond:
	lw	$t2, board_size
	bge	$s0, $t2, print_board__for_row__end	# while (row < board_size) {

print_board__for_row__body:
	addi	$t2, $s0, 1
	bge	$t2, 10, print_board__print_row_num	#     if (row + 1 < 10) {

	li	$v0, 11
	li	$a0, ' '
	syscall						#         printf("%d ", row + 1);

print_board__print_row_num:				#     }
	li	$v0, 1
	move	$a0, $t2
	syscall						#     printf("%d", row + 1);

	li	$v0, 11
	li	$a0, ' '
	syscall						#     putchar(' ');

print_board__for_col:
print_board__for_col__init:
	li	$s1, 0					#     int col = 0;

print_board__for_col__cond:
	lw	$t2, board_size
	bge	$s1, $t2, print_board__for_col__end	#     while (col < board_size) {

print_board__for_col__body:
	mul	$t3, $s0, MAX_BOARD_SIZE		#         &board[row][col] = row * MAX_BOARD_SIZE
	add	$t3, $t3, $s1				#                            + col
	addi	$t3, board				#                            + &board

	lb	$t4, ($t3)				#         char cell = board[row][col];

	beq	$t4, PLAYER_WHITE, print_board__white	#         if (cell == PLAYER_WHITE) goto print_board__white;
	beq	$t4, PLAYER_BLACK, print_board__black	#         if (cell == PLAYER_BLACK) goto print_board__black;

	move	$a0, $s0
	move	$a1, $s1
	jal	is_valid_move
	bnez	$v0, print_board__possible_move		#         if (is_valid_move(row, col)) goto print_board__possible_move;

	li	$a0, EMPTY_CELL_CHAR			#         c = EMPTY_CELL_CHAR;
	b	print_board__output_cell		#         goto print_board__output_cell;

print_board__white:
	li	$a0, WHITE_CHAR				#         c = WHITE_CHAR;
	b	print_board__output_cell		#         goto print_board__output_cell;

print_board__black:
	li	$a0, BLACK_CHAR				#         c = BLACK_CHAR;
	b	print_board__output_cell		#         goto print_board__output_cell;

print_board__possible_move:
	li	$a0, POSSIBLE_MOVE_CHAR			#         c = POSSIBLE_MOVE_CHAR;
	b	print_board__output_cell		#         goto print_board__output_cell;

print_board__output_cell:
	li	$v0, 11
	syscall						#         printf("%c", c);

	li	$a0, ' '
	syscall						#         putchar(' ');

print_board__for_col__step:
	addi	$s1, $s1, 1				#         col++;
	b	print_board__for_col__cond		#     }

print_board__for_col__end:
	li	$v0, 11
	li	$a0, '\n'
	syscall						#     putchar('\n');

print_board__for_row__step:
	addi	$s0, $s0, 1				#     row++;
	b	print_board__for_row__cond		# }

print_board__for_row__end:
print_board__epilogue:
	pop	$s1
	pop	$s0
	pop	$ra
	end

	jr	$ra					# return;
