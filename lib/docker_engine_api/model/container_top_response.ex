# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ContainerTopResponse do
  @moduledoc """
  OK response to ContainerTop operation
  """

  @derive [Poison.Encoder]
  defstruct [
    :Titles,
    :Processes
  ]

  @type t :: %__MODULE__{
          :Titles => [String.t()],
          :Processes => [[String.t()]]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ContainerTopResponse do
  def decode(value, _options) do
    value
  end
end
