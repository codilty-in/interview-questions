#! /usr/bin/env/ruby

LOCKFILE = "/tmp/global-test-lock"

def lock
  f = File.open(LOCKFILE,"w") { |f|
    f.flock(File::LOCK_EX)
    yield
  }
end

STDERR.puts "getting the lock..."
lock do
  STDERR.puts "I have the lock! I am going to sit on it for a little while."
  sleep 3
end
puts "Okay, I'm done."
