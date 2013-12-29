#!/bin/sh
cpanm -f CGI
#cpanm -f DBI
#cpanm -f DBIx::Simple
cpanm -f Test::More
cpanm -f JSON
cpanm -f Redis
#cpanm -f Encode
#cpanm -f Time::Piece
cpanm -f -n Task::Catalyst
