class Corrector

    def correct_name(name)
        corrected_name = name.capitalize()
        if name.lentgh > 10
            corrected_name = corrected_name.slice(0..10)
        end
         correct_name
    end
    
end