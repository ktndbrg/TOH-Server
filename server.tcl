# Server Application for the Flash IT Project, fuken kill me now
# This language is mentally retarded, and it looks like Runescript.

set server_socket [socket -server Connection_Proc 8192]

set tick 0
set foobars 0
set tick_delay 100
set game_timer 1
set game_state 1
set connections 0

set player_one_name "ghost"
set player_two_name "ghost"
set player_three_name "ghost"
set player_four_name "ghost"
set player_five_name "ghost"
set player_six_name "ghost"
set player_seven_name "ghost"
set player_eight_name "ghost"
set fd_one ""
set fd_two ""
set fd_three ""
set fd_four ""
set fd_five ""
set fd_six ""
set fd_seven ""
set fd_eight ""
set pos_one 10000
set pos_two 10000
set pos_three 10000
set pos_four 10000
set pos_five 10000
set pos_six 10000
set pos_seven 10000
set pos_eight 10000
set dir_one 1
set dir_two 1
set dir_three 1
set dir_four 1
set dir_five 1
set dir_six 1
set dir_seven 1
set dir_eight 1
set enemy_pos_one 5000
set enemy_pos_two 5000
set enemy_pos_three 5000
set enemy_pos_four -300
set enemy_pos_five -300
set enemy_pos_six -300
set enemy_pos_seven 4200
set enemy_pos_eight 4200
set enemy_pos_nine 4200
set enemy_pos_ten -100
set enemy_pos_eleven -100
set enemy_pos_twelve -100
set enemy_health_one 90
set enemy_health_two 40
set enemy_health_three 30
set enemy_health_four 90
set enemy_health_five 40
set enemy_health_six 30
set enemy_health_seven 90
set enemy_health_eight 40
set enemy_health_nine 30
set enemy_health_ten 90
set enemy_health_eleven 40
set enemy_health_twelve 30

proc Game_Tick {} {
	global player_name
	global tick
	global foobars
	global tick_delay

	global game_timer
	global game_state
	global connections

	global player_one_name
	global player_two_name
	global player_three_name
	global player_four_name
	global player_five_name
	global player_six_name
	global player_seven_name
	global player_eight_name
	global fd_one
	global fd_two
	global fd_three
	global fd_four
	global fd_five
	global fd_six
	global fd_seven
	global fd_eight
	global pos_one
	global pos_two
	global pos_three
	global pos_four
	global pos_five
	global pos_six
	global pos_seven
	global pos_eight
	global dir_one
	global dir_two
	global dir_three
	global dir_four
	global dir_five
	global dir_six
	global dir_seven
	global dir_eight
	global enemy_pos_one
	global enemy_pos_two
	global enemy_pos_three
	global enemy_pos_four
	global enemy_pos_five
	global enemy_pos_six
	global enemy_pos_seven
	global enemy_pos_eight
	global enemy_pos_nine
	global enemy_pos_ten
	global enemy_pos_eleven
	global enemy_pos_twelve
	global enemy_health_one
	global enemy_health_two
	global enemy_health_three
	global enemy_health_four
	global enemy_health_five
	global enemy_health_six
	global enemy_health_seven
	global enemy_health_eight
	global enemy_health_nine
	global enemy_health_ten
	global enemy_health_eleven
	global enemy_health_twelve

	while {1} {
		# Main Server_Game Loop
		if {$foobars == 2} {
			incr game_timer -1
			set foobars 0
		}
		if {$game_timer == 0} {
			if {$game_state == 1} {
				set game_state 2
			} elseif {$game_state == 2} {
				set game_state 3
			} elseif {$game_state == 3} {
				set game_state 4
			} elseif {$game_state == 4} {
				set game_state 1
			}
			set game_timer 1
		}


		if {$connections > 0} {
			set enemy_pos_one [expr $enemy_pos_one - 2.25]
			set enemy_pos_four [expr $enemy_pos_four + 2.25]
			set enemy_pos_seven [expr $enemy_pos_seven - 2.25]
			set enemy_pos_ten [expr $enemy_pos_ten + 2.25]

			incr enemy_pos_two -3
			incr enemy_pos_five 3
			incr enemy_pos_eight -3
			incr enemy_pos_eleven 3

			set enemy_pos_three [expr $enemy_pos_three - 3.6]
			set enemy_pos_six [expr $enemy_pos_six + 3.6]
			set enemy_pos_nine [expr $enemy_pos_nine - 3.6]
			set enemy_pos_twelve [expr $enemy_pos_twelve + 3.6]

			if {$enemy_pos_one < -100} {
				set enemy_pos_one 5000
			}
			if {$enemy_pos_two < -100} {
				set enemy_pos_two 5000
			}
			if {$enemy_pos_three < -100} {
				set enemy_pos_three 5000
			}
			if {$enemy_pos_four > 5000} {
				set enemy_pos_four -100
			}
			if {$enemy_pos_five > 5000} {
				set enemy_pos_five -100
			}
			if {$enemy_pos_six > 5000} {
				set enemy_pos_six -100
			}
			if {$enemy_pos_seven < -100} {
				set enemy_pos_seven 5000
			}
			if {$enemy_pos_eight < -100} {
				set enemy_pos_eight 5000
			}
			if {$enemy_pos_nine < -100} {
				set enemy_pos_nine 5000
			}
			if {$enemy_pos_ten > 5000} {
				set enemy_pos_ten -100
			}
			if {$enemy_pos_eleven > 5000} {
				set enemy_pos_eleven -100
			}
			if {$enemy_pos_twelve > 5000} {
				set enemy_pos_twelve -100
			}

			if {$enemy_health_one < 0} {
				set enemy_pos_one 5000
				set enemy_health_one 90
			}
			if {$enemy_health_two < 0} {
				set enemy_pos_two 5000
				set enemy_health_two 40
			}
			if {$enemy_health_three < 0} {
				set enemy_pos_three 5000
				set enemy_health_three 30
			}
			if {$enemy_health_four < 0} {
				set enemy_pos_four -100
				set enemy_health_four 90
			}
			if {$enemy_health_five < 0} {
				set enemy_pos_five -100
				set enemy_health_five 40
			}
			if {$enemy_health_six < 0} {
				set enemy_pos_six -100
				set enemy_health_six 30
			}
			if {$enemy_health_seven < 0} {
				set enemy_pos_seven 5000
				set enemy_health_seven 90
			}
			if {$enemy_health_eight < 0} {
				set enemy_pos_eight 5000
				set enemy_health_eight 40
			}
			if {$enemy_health_nine < 0} {
				set enemy_pos_nine 5000
				set enemy_health_nine 30
			}
			if {$enemy_health_ten < 0} {
				set enemy_pos_ten -100
				set enemy_health_ten 90
			}
			if {$enemy_health_eleven < 0} {
				set enemy_pos_eleven -100
				set enemy_health_eleven 40
			}
			if {$enemy_health_twelve < 0} {
				set enemy_pos_twelve -100
				set enemy_health_twelve 30
			}
		}


		# Send game updates
		if {$player_one_name != "ghost"} {
			puts $fd_one "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_two\t$pos_three\t$pos_four\t$pos_five\t$pos_six\t$pos_seven\t$pos_eight\t$dir_two\t$dir_three\t$dir_four\t$dir_five\t$dir_six\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_one
		}
		if {$player_two_name != "ghost"} {
			puts $fd_two "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_three\t$pos_four\t$pos_five\t$pos_six\t$pos_seven\t$pos_eight\t$dir_one\t$dir_three\t$dir_four\t$dir_five\t$dir_six\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_two
		}
		if {$player_three_name != "ghost"} {
			puts $fd_three "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_four\t$pos_five\t$pos_six\t$pos_seven\t$pos_eight\t$dir_one\t$dir_two\t$dir_four\t$dir_five\t$dir_six\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_three
		}
		if {$player_four_name != "ghost"} {
			puts $fd_four "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_three\t$pos_five\t$pos_six\t$pos_seven\t$pos_eight\t$dir_one\t$dir_two\t$dir_three\t$dir_five\t$dir_six\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_four
		}
		if {$player_five_name != "ghost"} {
			puts $fd_five "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_three\t$pos_four\t$pos_six\t$pos_seven\t$pos_eight\t$dir_one\t$dir_two\t$dir_three\t$dir_four\t$dir_six\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_five
		}
		if {$player_six_name != "ghost"} {
			puts $fd_six "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_three\t$pos_four\t$pos_five\t$pos_seven\t$pos_eight\t$dir_one\t$dir_two\t$dir_three\t$dir_four\t$dir_five\t$dir_seven\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_six
		}
		if {$player_seven_name != "ghost"} {
			puts $fd_seven "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_three\t$pos_four\t$pos_five\t$pos_six\t$pos_eight\t$dir_one\t$dir_two\t$dir_three\t$dir_four\t$dir_five\t$dir_six\t$dir_eight\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_seven
		}
		if {$player_eight_name != "ghost"} {
			puts $fd_eight "1001\tTick: $foobars\t4001\t$game_timer\t4002\t$game_state\t$pos_one\t$pos_two\t$pos_three\t$pos_four\t$pos_five\t$pos_six\t$pos_seven\t$dir_one\t$dir_two\t$dir_three\t$dir_four\t$dir_five\t$dir_six\t$dir_seven\t$enemy_pos_one\t$enemy_pos_two\t$enemy_pos_three\t$enemy_pos_four\t$enemy_pos_five\t$enemy_pos_six\t$enemy_pos_seven\t$enemy_pos_eight\t$enemy_pos_nine\t$enemy_pos_ten\t$enemy_pos_eleven\t$enemy_pos_twelve\t$enemy_health_one\t$enemy_health_two\t$enemy_health_three\t$enemy_health_four\t$enemy_health_five\t$enemy_health_six\t$enemy_health_seven\t$enemy_health_eight\t$enemy_health_nine\t$enemy_health_ten\t$enemy_health_eleven\t$enemy_health_twelve"
			flush $fd_eight
		}


		# End of Loop
		incr foobars 1
		set tick 0
		puts stdout "tick: $foobars\t$player_one_name $pos_one\t$player_two_name $pos_two\t$player_three_name $pos_three\t$player_four_name $pos_four\t$player_five_name $pos_five\t$player_six_name $pos_six\t$player_seven_name $pos_seven\t$player_eight_name $pos_eight\t"
		after idle {set tick "tock"}
		after $tick_delay
		vwait tick
	}
}

proc Connection_Proc {new_connection ip_addr port} {
	global connections
	global player_one_name
	global player_two_name
	global player_three_name
	global player_four_name
	global player_five_name
	global player_six_name
	global player_seven_name
	global player_eight_name
	global fd_one
	global fd_two
	global fd_three
	global fd_four
	global fd_five
	global fd_six
	global fd_seven
	global fd_eight

	fconfigure $new_connection -buffering line
	puts stdout [format "New connection: %s, from: %s, on port: %s" $new_connection $ip_addr $port]

	set buff [gets $new_connection]

	if {$player_one_name == "ghost"} {
		set fd_one $new_connection
		set player_one_name $buff
	} elseif {$player_two_name == "ghost"} {
		set fd_two $new_connection
		set player_two_name $buff
	} elseif {$player_three_name == "ghost"} {
		set fd_three $new_connection
		set player_three_name $buff
	} elseif {$player_four_name == "ghost"} {
		set fd_four $new_connection
		set player_four_name $buff
	} elseif {$player_five_name == "ghost"} {
		set fd_five $new_connection
		set player_five_name $buff
	} elseif {$player_six_name == "ghost"} {
		set fd_six $new_connection
		set player_six_name $buff
	} elseif {$player_seven_name == "ghost"} {
		set fd_seven $new_connection
		set player_seven_name $buff
	} elseif {$player_eight_name == "ghost"} {
		set fd_eight $new_connection
		set player_eight_name $buff
	} else {
		# Toomany people
		puts stdout "Too many people, $buff"
		close $new_connection
		return
	}
	incr connections 1

	puts stdout "Got $buff"

	fileevent $new_connection readable [list Read_Socket $new_connection]
}

proc Read_Socket {fd_sock} {
	global player_one_name
	global player_two_name
	global player_three_name
	global player_four_name
	global player_five_name
	global player_six_name
	global player_seven_name
	global player_eight_name
	global fd_one
	global fd_two
	global fd_three
	global fd_four
	global fd_five
	global fd_six
	global fd_seven
	global fd_eight
	global pos_one
	global pos_two
	global pos_three
	global pos_four
	global pos_five
	global pos_six
	global pos_seven
	global pos_eight
	global enemy_health_one
	global enemy_health_two
	global enemy_health_three
	global enemy_health_four
	global enemy_health_five
	global enemy_health_six
	global enemy_health_seven
	global enemy_health_eight
	global enemy_health_nine
	global enemy_health_ten
	global enemy_health_eleven
	global enemy_health_twelve
	global dir_one
	global dir_two
	global dir_three
	global dir_four
	global dir_five
	global dir_six
	global dir_seven
	global dir_eight

	set message [gets $fd_sock]

	if {$message == ""} {
		set dropped_name ""
		if {$fd_one == $fd_sock} {
			set dropped_name $player_one_name
			set player_one_name "ghost"
			set pos_one 10000
		}
		if {$fd_two == $fd_sock} {
			set dropped_name $player_two_name
			set player_two_name "ghost"
			set pos_two 10000
		}
		if {$fd_three == $fd_sock} {
			set dropped_name $player_three_name
			set player_three_name "ghost"
			set pos_three 10000
		}
		if {$fd_four == $fd_sock} {
			set dropped_name $player_four_name
			set player_four_name "ghost"
			set pos_four 10000
		}
		if {$fd_five == $fd_sock} {
			set dropped_name $player_five_name
			set player_five_name "ghost"
			set pos_five 10000
		}
		if {$fd_six == $fd_sock} {
			set dropped_name $player_six_name
			set player_six_name "ghost"
			set pos_six 10000
		}
		if {$fd_seven == $fd_sock} {
			set dropped_name $player_seven_name
			set player_seven_name "ghost"
			set pos_seven 10000
		}
		if {$fd_eight == $fd_sock} {
			set dropped_name $player_eight_name
			set player_eight_name "ghost"
			set pos_eight 10000
		}
		Send_Message "3031\tSERVER\t\[$dropped_name\] dropped out"

		incr connections -1
		fileevent $fd_sock readable {}
		close $fd_sock
		puts stdout "$dropped_name Disconnected"
		return
	}
	if {[string match 3031* $message]} {
		if {$player_one_name != "ghost"} {
			puts $fd_one $message
			flush $fd_one
		}
		if {$player_two_name != "ghost"} {
			puts $fd_two $message
			flush $fd_two
		}
		if {$player_three_name != "ghost"} {
			puts $fd_three $message
			flush $fd_three
		}
		if {$player_four_name != "ghost"} {
			puts $fd_four $message
			flush $fd_four
		}
		if {$player_five_name != "ghost"} {
			puts $fd_five $message
			flush $fd_five
		}
		if {$player_six_name != "ghost"} {
			puts $fd_six $message
			flush $fd_six
		}
		if {$player_seven_name != "ghost"} {
			puts $fd_seven $message
			flush $fd_seven
		}
		if {$player_eight_name != "ghost"} {
			puts $fd_eight $message
			flush $fd_eight
		}
	}
	if {[string match 5021* $message]} {
		set pos ""
		set dir ""
		set type ""
		set attack1 ""
		set attack2 ""
		set attack3 ""
		set attack4 ""
		set attack5 ""
		set attack6 ""
		set attack7 ""
		set attack8 ""
		set attack9 ""
		set attack10 ""
		set attack11 ""
		set attack12 ""
		scan $message {%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d} type pos dir attack1 attack2 attack3 attack4 attack5 attack6 attack7 attack8 attack9 attack10 attack11 attack12
		if {$fd_one == $fd_sock} {
			set pos_one $pos
			set dir_one $dir
		} elseif {$fd_two == $fd_sock} {
			set pos_two $pos
			set dir_two $dir
		} elseif {$fd_three == $fd_sock} {
			set pos_three $pos
			set dir_three $dir
		} elseif {$fd_four == $fd_sock} {
			set pos_four $pos
			set dir_four $dir
		} elseif {$fd_five == $fd_sock} {
			set pos_five $pos
			set dir_five $dir
		} elseif {$fd_six == $fd_sock} {
			set pos_six $pos
			set dir_six $dir
		} elseif {$fd_seven == $fd_sock} {
			set pos_seven $pos
			set dir_seven $dir
		} elseif {$fd_eight == $fd_sock} {
			set pos_eight $pos
			set dir_eight $dir
		}

		incr enemy_health_one -$attack1
		incr enemy_health_two -$attack2
		incr enemy_health_three -$attack3
		incr enemy_health_four -$attack4
		incr enemy_health_five -$attack5
		incr enemy_health_six -$attack6
		incr enemy_health_seven -$attack7
		incr enemy_health_eight -$attack8
		incr enemy_health_nine -$attack9
		incr enemy_health_ten -$attack10
		incr enemy_health_eleven -$attack11
		incr enemy_health_twelve -$attack12
	}

	if {[string match 5202* $message]} {
		set type ""
		set score ""
		scan $message {%d %d} type score
		if {$fd_one == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_one_name\] died with score: $score"
		} elseif {$fd_two == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_two_name\] died with score: $score"
		} elseif {$fd_three == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_three_name\] died with score: $score"
		} elseif {$fd_four == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_four_name\] died with score: $score"
		} elseif {$fd_five == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_five_name\] died with score: $score"
		} elseif {$fd_six == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_six_name\] died with score: $score"
		} elseif {$fd_seven == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_seven_name\] died with score: $score"
		} elseif {$fd_eight == $fd_sock} {
			Send_Message "3031\tSERVER\t\[$player_eight_name\] died with score: $score"
		}
	}
}

proc Send_Message {message} {
	global player_one_name
	global player_two_name
	global player_three_name
	global player_four_name
	global player_five_name
	global player_six_name
	global player_seven_name
	global player_eight_name
	global fd_one
	global fd_two
	global fd_three
	global fd_four
	global fd_five
	global fd_six
	global fd_seven
	global fd_eight

	if {$player_one_name != "ghost"} {
		puts $fd_one $message
		flush $fd_one
	}
	if {$player_two_name != "ghost"} {
		puts $fd_two $message
		flush $fd_two
	}
	if {$player_three_name != "ghost"} {
		puts $fd_three $message
		flush $fd_three
	}
	if {$player_four_name != "ghost"} {
		puts $fd_four $message
		flush $fd_four
	}
	if {$player_five_name != "ghost"} {
		puts $fd_five $message
		flush $fd_five
	}
	if {$player_six_name != "ghost"} {
		puts $fd_six $message
		flush $fd_six
	}
	if {$player_seven_name != "ghost"} {
		puts $fd_seven $message
		flush $fd_seven
	}
	if {$player_eight_name != "ghost"} {
		puts $fd_eight $message
		flush $fd_eight
	}
}

Game_Tick
