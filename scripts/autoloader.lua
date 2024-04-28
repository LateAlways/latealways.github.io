if not syn and not queue_on_teleport then
  error("Not supported by your exploit.")
end

local queueOnTP = syn.queue_on_teleport or queue_on_teleport or error("Unsupported")

local script = ({...})[1]

loadstring(script)()
queueOnTP("local queueOnTP = syn.queue_on_teleport or queue_on_teleport or error(\"Unsupported\"); game.Loaded:Wait(); loadstring([["..script.."]])(); queueOnTP([["..script.."]]);")
