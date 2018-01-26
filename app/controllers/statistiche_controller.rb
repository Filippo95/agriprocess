class StatisticheController < ApplicationController
  def costo_per_cat_coltura
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_per_coltura
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_per_operazione
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_carburante_per_cat_coltura
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_carburante_per_coltura
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_carburante_per_operazione
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def costo_carburante_per_attrezzo
    sql = "SELECT id, nome from cat_coltures "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
end
