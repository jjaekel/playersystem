#encoding: utf-8
module PlayersHelper
  def back_to_list
    link_to "Zurück zur Liste", players_path
  end
end
