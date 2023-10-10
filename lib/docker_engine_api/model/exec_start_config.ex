# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ExecStartConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Detach,
    :Tty,
    :ConsoleSize
  ]

  @type t :: %__MODULE__{
          :Detach => boolean(),
          :Tty => boolean(),
          :ConsoleSize => [integer()]
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ExecStartConfig do
  def decode(value, _options) do
    value
  end
end
