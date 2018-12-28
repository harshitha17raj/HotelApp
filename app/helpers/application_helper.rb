module ApplicationHelper
<<<<<<< HEAD
 def full_title(page_title)
  base_title = "Hotels in your hand"
  if page_title.empty?
    base_title
  else
    "#{page_title}"
  end
 end
=======
  def full_title(page_title = '')
    base_title = "Hotel Booking!!"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
>>>>>>> d810a459bf60867128d482325070112554ad159a
end
