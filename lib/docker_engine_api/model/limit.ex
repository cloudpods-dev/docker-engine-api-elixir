# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Limit do
  @moduledoc """
  An object describing a limit on resources which can be requested by a task. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :NanoCPUs,
    :MemoryBytes,
    :Pids
  ]

  @type t :: %__MODULE__{
          :NanoCPUs => integer(),
          :MemoryBytes => integer(),
          :Pids => integer()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Limit do
  def decode(value, _options) do
    value
  end
end
