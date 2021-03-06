class PlayListVideos < BaseModel
  table do
    column title : String
    column author : String
    column ucid : String
    column length_seconds : Int32
    column published : Time
    has_one plid : PlayLists
    column index : Int32
    column live_now : Bool
  end
end
