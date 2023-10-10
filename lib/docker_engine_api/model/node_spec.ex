# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.NodeSpec do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Labels,
    :Role,
    :Availability
  ]

  @type t :: %__MODULE__{
          :Name => String.t(),
          :Labels => %{optional(String.t()) => String.t()},
          :Role => String.t(),
          :Availability => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.NodeSpec do
  def decode(value, _options) do
    value
  end
end
