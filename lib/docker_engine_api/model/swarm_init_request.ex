# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.SwarmInitRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ListenAddr",
    :"AdvertiseAddr",
    :"DataPathAddr",
    :"DataPathPort",
    :"DefaultAddrPool",
    :"ForceNewCluster",
    :"SubnetSize",
    :"Spec"
  ]

  @type t :: %__MODULE__{
    :"ListenAddr" => String.t,
    :"AdvertiseAddr" => String.t,
    :"DataPathAddr" => String.t,
    :"DataPathPort" => integer(),
    :"DefaultAddrPool" => [String.t],
    :"ForceNewCluster" => boolean(),
    :"SubnetSize" => integer(),
    :"Spec" => SwarmSpec
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.SwarmInitRequest do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Spec", :struct, DockerEngineAPI.Model.SwarmSpec, options)
  end
end
