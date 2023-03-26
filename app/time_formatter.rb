# frozen_string_literal: true

TIME_FORMATS = { 'year' => '%Y',
                 'month' => '%m',
                 'day' => '%d',
                 'hour' => '%Hh',
                 'minute' => '%Mm',
                 'second' => '%Ss' }.freeze

class TimeFormatter
  def self.call(...)
    new(...).call
  end

  def initialize(params)
    @params = params
  end

  def call
    formatted_time
  end

  private

  attr_reader :params

  def formatted_time
    params['format'].split(',').map do |format|
      return "Unknown time format #{format}" unless TIME_FORMATS.key?(format)

      Time.now.strftime(TIME_FORMATS[format])
    end.join('-')
  end
end
