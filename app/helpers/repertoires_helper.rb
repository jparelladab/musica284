module RepertoiresHelper

  def pipeline(element)
    element.update(pipeline: true)
  end

  def favorite(element)
    element.update(favorite: true)
  end
end
