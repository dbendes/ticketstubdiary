{"filter":false,"title":"bands_controller.rb","tooltip":"/app/controllers/bands_controller.rb","undoManager":{"mark":14,"position":14,"stack":[[{"group":"doc","deltas":[{"start":{"row":6,"column":21},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":13,"column":5},"action":"insert","lines":["  def index","    @venues = Venue.all.order(:name)","    respond_to do |format|","      format.html","      format.json {render json: @venues.where(\"name like ?\", \"%#{params[:q]}%\") }","    end","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":8,"column":23},"action":"remove","lines":["  def index","    @venues = Venue.all"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":21},"end":{"row":7,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":33},"end":{"row":9,"column":39},"action":"remove","lines":["venues"]},{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"insert","lines":["b"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":0},"end":{"row":14,"column":0},"action":"remove","lines":["    respond_with(@bands)","  end",""]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":51},"end":{"row":9,"column":55},"action":"remove","lines":["like"]},{"start":{"row":9,"column":51},"end":{"row":9,"column":56},"action":"insert","lines":["ILIKE"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":56},"end":{"row":9,"column":56},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425671048255,"hash":"30410c222840b708be5f3bde176d4be6fb3319c7"}