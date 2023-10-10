# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.TaskSpecResources do
  @moduledoc """
  Resource requirements which apply to each individual container created as part of the service. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Limits",
    :"Reservations"
  ]

  @type t :: %__MODULE__{
    :"Limits" => Limit,
    :"Reservations" => ResourceObject
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.TaskSpecResources do
  import DockerEngineAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Limits", :struct, DockerEngineAPI.Model.Limit, options)
    |> deserialize(:"Reservations", :struct, DockerEngineAPI.Model.ResourceObject, options)
  end
end
