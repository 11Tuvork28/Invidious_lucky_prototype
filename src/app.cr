require "./shards"

# Load the asset manifest in public/mix-manifest.json
Lucky::AssetHelpers.load_manifest

require "./app_database"
require "./models/base_model"
require "./models/mixins/**"
require "./models/**"
require "./queries/mixins/**"
require "./queries/**"
require "./operations/mixins/**"
require "./operations/**"
require "./serializers/base_serializer"
require "./serializers/**"
require "./actions/mixins/**"
require "./actions/**"
require "./components/base_component"
require "./components/**"
require "./pages/**"
require "../config/server"
require "../config/**"
require "../db/migrations/**"
require "./app_server"
