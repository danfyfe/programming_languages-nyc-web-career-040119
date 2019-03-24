require "pry"

def reformat_languages(languages)

  new_hash = {}
  names_array = []
  types_array = []
  styles_array = []

  languages.each do |style,values|
    values.each do |name,lang_data|
      names_array << name
      styles_array << style
      lang_data.each do |type,value|
        types_array << value
      end


    end

  end


  names_array.each do |lang_name|
    languages.each do |style, values|
      values.each do |name, lang_data|
      if name == lang_name
          lang_data.each do |type,value|
            new_hash[lang_name] = {type: value, :style=>[]}
          end
        end
      end
    end
  end

  #binding.pry


  names_array.each do |lang_name|
    languages.each do |style, values|
      if style == :oo
        values.each do |name, lang_data|
          if name == lang_name
            new_hash[lang_name][:style] << style
          end
        end
      end
      if style == :functional
        values.each do |name, lang_data|
          if name == lang_name
            new_hash[lang_name][:style] << style
          end
        end
      end


      end
    end













new_hash
end

#reformat_languages(languages)