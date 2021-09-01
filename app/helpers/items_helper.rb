module ItemsHelper
  
  def presence_or_absence_of_allergy(allergy)
    allergy ? "あり" : "なし"
  end
  
  def allergy_color(allergy)
    if allergy
      return "have_allergy"
    end
  end
end
