# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.NodeStatus do
  @moduledoc """
  NodeStatus represents the status of a node.  It provides the current status of the node, as seen by the manager. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :State,
    :Message,
    :Addr
  ]

  @type t :: %__MODULE__{
          :State => NodeState,
          :Message => String.t(),
          :Addr => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.NodeStatus do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:State, :struct, DockerEngineAPI.Model.NodeState, options)
  end
end
