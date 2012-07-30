require 'tailor/formatter'
require 'pathname'

class Tailor
    module Formatters
        class Vim < Tailor::Formatter
            def file_report(problems, level)
                file_problems = problems.first
                problems.each do |file,issues|
                    issues.each do |issue|
                        puts "#{file}:#{issue[:line]}:#{issue[:column]}:#{issue[:message]}"
                    end
                end
            end
        end
    end
end
