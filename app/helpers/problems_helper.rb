module ProblemsHelper
  def status_color(status)
    case status
    when "completed"
      "green"
    when "ongoing"
      "blue"
    when "postponed"
      "yellow"
    else
      "gray"
    end
  end
end
