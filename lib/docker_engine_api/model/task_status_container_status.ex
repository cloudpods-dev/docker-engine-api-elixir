# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskStatusContainerStatus do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ContainerID,
    :PID,
    :ExitCode
  ]

  @type t :: %__MODULE__{
          :ContainerID => String.t(),
          :PID => integer(),
          :ExitCode => integer()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskStatusContainerStatus do
  def decode(value, _options) do
    value
  end
end
