# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.HostConfigLogConfig do
  @moduledoc """
  The logging configuration for this container
  """

  @derive [Poison.Encoder]
  defstruct [
    :Type,
    :Config
  ]

  @type t :: %__MODULE__{
          :Type => String.t(),
          :Config => %{optional(String.t()) => String.t()}
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.HostConfigLogConfig do
  def decode(value, _options) do
    value
  end
end
