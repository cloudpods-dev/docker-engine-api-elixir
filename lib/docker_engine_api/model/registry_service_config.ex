# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.RegistryServiceConfig do
  @moduledoc """
  RegistryServiceConfig stores daemon registry services configuration. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"AllowNondistributableArtifactsCIDRs",
    :"AllowNondistributableArtifactsHostnames",
    :"InsecureRegistryCIDRs",
    :"IndexConfigs",
    :"Mirrors"
  ]

  @type t :: %__MODULE__{
    :"AllowNondistributableArtifactsCIDRs" => [String.t],
    :"AllowNondistributableArtifactsHostnames" => [String.t],
    :"InsecureRegistryCIDRs" => [String.t],
    :"IndexConfigs" => %{optional(String.t) => IndexInfo},
    :"Mirrors" => [String.t]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.RegistryServiceConfig do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"IndexConfigs", :map, DockerEngineAPI.Model.IndexInfo, options)
  end
end
