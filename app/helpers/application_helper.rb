module ApplicationHelper
  def full_title(title)
    final_title = "This is Ruby"
    if title.present?
      final_title += " | #{title}"
    end
    final_title
  end
end
