# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.NetworkCreateRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"CheckDuplicate",
    :"Driver",
    :"Internal",
    :"Attachable",
    :"Ingress",
    :"IPAM",
    :"EnableIPv6",
    :"Options",
    :"Labels"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t,
    :"CheckDuplicate" => boolean(),
    :"Driver" => String.t,
    :"Internal" => boolean(),
    :"Attachable" => boolean(),
    :"Ingress" => boolean(),
    :"IPAM" => Ipam,
    :"EnableIPv6" => boolean(),
    :"Options" => %{optional(String.t) => String.t},
    :"Labels" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.NetworkCreateRequest do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"IPAM", :struct, DockerEngineAPI.Model.Ipam, options)
  end
end

