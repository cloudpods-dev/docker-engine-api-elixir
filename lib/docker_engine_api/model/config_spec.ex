# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ConfigSpec do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Labels,
    :Data,
    :Templating
  ]

  @type t :: %__MODULE__{
          :Name => String.t(),
          :Labels => %{optional(String.t()) => String.t()},
          :Data => String.t(),
          :Templating => Driver
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ConfigSpec do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Templating, :struct, DockerEngineAPI.Model.Driver, options)
  end
end
