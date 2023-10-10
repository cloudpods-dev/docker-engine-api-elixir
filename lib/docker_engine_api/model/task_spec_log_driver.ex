# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecLogDriver do
  @moduledoc """
  Specifies the log driver to use for tasks created from this spec. If not present, the default one for the swarm will be used, finally falling back to the engine default if not specified. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Options
  ]

  @type t :: %__MODULE__{
          :Name => String.t(),
          :Options => %{optional(String.t()) => String.t()}
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecLogDriver do
  def decode(value, _options) do
    value
  end
end
