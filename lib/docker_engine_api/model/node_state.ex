# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.NodeState do
  @moduledoc """
  NodeState represents the state of a node.
  """

  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.NodeState do
  def decode(value, _options) do
    value
  end
end
