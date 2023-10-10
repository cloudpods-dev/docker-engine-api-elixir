# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.VolumePruneResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :VolumesDeleted,
    :SpaceReclaimed
  ]

  @type t :: %__MODULE__{
          :VolumesDeleted => [String.t()],
          :SpaceReclaimed => integer()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.VolumePruneResponse do
  def decode(value, _options) do
    value
  end
end
