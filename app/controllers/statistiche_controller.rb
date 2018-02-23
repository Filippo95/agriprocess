class StatisticheController < ApplicationController
  def costo_per_coltura
    sql = "SELECT  colturas.nome AS Coltura, ROUND(SUM((prezzos.prezzo_fattura-(prezzos.prezzo_fattura*prezzos.sconto/100))*prodotto_trattamentos.dose_ha*colturas.estensione_ha),2) AS Costo, ROUND(SUM(attrezzos.costo_carburante*attrezzos.deperimento*attrezzos.consumo*colturas.estensione_ha), 2) AS Carburante
FROM Gestione_development.colturas, Gestione_development.trattamentos,Gestione_development.prodotto_trattamentos,Gestione_development.prodottos,Gestione_development.prezzos,Gestione_development.attrezzos
WHERE Gestione_development.colturas.id=Gestione_development.trattamentos.id_coltura
AND Gestione_development.trattamentos.id=Gestione_development.prodotto_trattamentos.id_trattamento
AND Gestione_development.prodotto_trattamentos.id_prodotto=Gestione_development.prodottos.id
AND Gestione_development.prodottos.id=Gestione_development.prezzos.id_prodotto
AND Gestione_development.trattamentos.id_attrezzo=Gestione_development.attrezzos.id
GROUP BY Coltura "
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
def costo_per_operazione
    sql = "SELECT  cat_coltures.nome AS Categoria , operaziones.nome AS Operazione, ROUND(SUM(colturas.estensione_ha*prodotto_trattamentos.dose_ha*prezzos.prezzo_fattura),2)
FROM trattamentos,operazione_trattamentos,colturas,prodotto_trattamentos,prodottos,prezzos,operaziones,cat_coltures
WHERE 	colturas.id=						trattamentos.id_coltura
AND 	trattamentos.id=					operazione_trattamentos.id_trattamento
AND 	trattamentos.id=					prodotto_trattamentos.id_trattamento
AND 	prodotto_trattamentos.id_prodotto=	prodottos.id
AND 	prezzos.id_prodotto=				prodottos.id
AND 	operaziones.id=						operazione_trattamentos.id_operazione
AND 	cat_coltures.id=					colturas.id_cat
group by Categoria,operaziones.nome"
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
  
  
def giacenza_magazzino
    sql = ""
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

end
