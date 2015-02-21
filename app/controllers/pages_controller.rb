class PagesController < ApplicationController
  def home
  end

  def car
  end

  def semitrailer
  end

  def semitruck
  end

  def semitruckservices
  end

  def semitrailerservices
  end

  def semitrailerdealer
  end

  def usedsemitrailerdealer
  end

  def membership
  end
  def dealer
  end

  def useddealer
  end

  def truckdealer
  end

  def usedsemitruckdealer
  end

  def contactus
  end
  def heavyequipment
    
  end
  def heavyequipmentservices
    
  end
  def heavydealer
  end

  def usedheavydealer
  end

  def carservices
  	
  end

  def farm
  end

  def farmdealer
  end
  def farmequipmentservices
  end

  def usedfarmdealer
  end

  def search
  	if params[:search].present?
      @pages = Page.search(params[:search])
    else
      @pages = Page.all
    end
  end
end
