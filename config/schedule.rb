# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
every :day, :at => "22:07" do
  runner "Notificacao.vacinas_pendentes_do_dia", :output => "/home/anderson/cron.log"
  runner "Notificacao.vacinas_vencidas", :output => "/home/anderson/cron.log"
  runner "Notificacao.exames_pendentes_do_dia", :output => "/home/anderson/cron.log"
  runner "Notificacao.exames_vencidos", :output => "/home/anderson/cron.log"
  runner "Notificacao.cios_do_dia", :output => "/home/anderson/cron.log"
end
