# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ServiceUpdateResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Warnings
  ]

  @type t :: %__MODULE__{
          :Warnings => [String.t()]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ServiceUpdateResponse do
  def decode(value, _options) do
    value
  end
end
