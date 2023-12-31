# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.GenericResourcesInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :NamedResourceSpec,
    :DiscreteResourceSpec
  ]

  @type t :: %__MODULE__{
          :NamedResourceSpec => GenericResourcesInnerNamedResourceSpec,
          :DiscreteResourceSpec => GenericResourcesInnerDiscreteResourceSpec
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.GenericResourcesInner do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :NamedResourceSpec,
      :struct,
      DockerEngineAPI.Model.GenericResourcesInnerNamedResourceSpec,
      options
    )
    |> deserialize(
      :DiscreteResourceSpec,
      :struct,
      DockerEngineAPI.Model.GenericResourcesInnerDiscreteResourceSpec,
      options
    )
  end
end
