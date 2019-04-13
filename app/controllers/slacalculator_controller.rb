class SlacalculatorController < ApplicationController
    
    def calculate
        @value = Slacalculator::Sla.assign()
    end
    
    def slacalculate
        @fun = Slacalculator::Sla.calculate_sla
    end
end
