module ItemsHelper
  
  def presence_or_absence_of_allergy(allergy)
    allergy ? "ăă" : "ăȘă"
  end
  
  def allergy_color(allergy)
    if allergy
      return "have_allergy"
    end
  end
end
