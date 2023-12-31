# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ResourceObject do
  @moduledoc """
  An object describing the resources which can be advertised by a node and requested by a task. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :NanoCPUs,
    :MemoryBytes,
    :GenericResources
  ]

  @type t :: %__MODULE__{
          :NanoCPUs => integer(),
          :MemoryBytes => integer(),
          :GenericResources => GenericResources
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ResourceObject do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:GenericResources, :struct, DockerEngineAPI.Model.GenericResources, options)
  end
end
