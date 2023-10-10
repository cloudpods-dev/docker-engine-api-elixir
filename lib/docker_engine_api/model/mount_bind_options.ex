# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.MountBindOptions do
  @moduledoc """
  Optional configuration for the &#x60;bind&#x60; type.
  """

  @derive [Poison.Encoder]
  defstruct [
    :Propagation,
    :NonRecursive,
    :CreateMountpoint
  ]

  @type t :: %__MODULE__{
          :Propagation => String.t(),
          :NonRecursive => boolean(),
          :CreateMountpoint => boolean()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.MountBindOptions do
  def decode(value, _options) do
    value
  end
end
