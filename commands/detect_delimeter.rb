class DetectDelimeter < Command
  class << self

    DELIMITERS = [",", ";", "\t", "|", "#", "-"]

    def run(context)
      delimeter = detect(context)
      Storage.add({ :delimeter => delimeter })
      context
    end

    def detect(str)
      result = {}
      DELIMITERS.each do |delimeter|
        result.merge!({ delimeter => str.count(delimeter) })
      end
      result.max_by{ |k, v| v }[0]
    end

  end
end
