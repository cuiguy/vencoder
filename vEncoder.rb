#=========================================================================
#
# Ruby Source File -- vEncoder (Codename: Helix) 
#
# NAME: vencoder.rb
#
# AUTHOR: Brian Scott
# DATE  : 10/23/2008
# Platform: Win32
# COMMENT: vEndoder is a video encoding framwork designed to maintain a video streaming site or encode video media built with Ruby.
# A Video encoding system built with ruby. This application can encode different types of video formats and images galleries.
#=========================================================================

# Required Libraries
require 'yaml'
require 'getoptlong'
require 'logger'
require 'sqlite3'
require 'ruport'
require 'rubygems'

@dbpath = "./db/vencoder.db"
@logpath = "./Logs/"


def setup

end

def logger
@logger = Logger.new('./Logs/logfile.log', 10, 1024000)
@logger.sev_threshold = Logger::INFO
end

opts = GetoptLong.new(
[ '--about', '-a', GetoptLong::OPTIONAL_ARGUMENT ],
[ '--encode', '-e', GetoptLong::OPTIONAL_ARGUMENT ],
[ '--reports', '-r', GetoptLong::OPTIONAL_ARGUMENT ],
[ '--push', '-p', GetoptLong::NO_ARGUMENT ],
[ '--download', '-d', GetoptLong::NO_ARGUMENT ],
[ '--delete', '-d', GetoptLong::NO_ARGUMENT ],
[ '--jobmonitor', '-j', GetoptLong::NO_ARGUMENT ],
[ '--cleanup', '-c', GetoptLong::NO_ARGUMENT ]
)