class StatisticheController < ApplicationController
  def costo_per_cat_coltura
    sql = "Select * from ... your sql query here"
    records_array = ActiveRecord::Base.connection.execute(sql)
  end

  def costo_per_coltura
  end

  def costo_per_operazione
  end

  def costo_carburante_per_cat_coltura
  end

  def costo_carburante_per_coltura
  end

  def costo_carburante_per_operazione
  end

  def costo_carburante_per_attrezzo
  end
end
