# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.NetworkAttachmentConfig do
  @moduledoc """
  Specifies how a service should be attached to a particular network. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Target",
    :"Aliases",
    :"DriverOpts"
  ]

  @type t :: %__MODULE__{
    :"Target" => String.t,
    :"Aliases" => [String.t],
    :"DriverOpts" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.NetworkAttachmentConfig do
  def decode(value, _options) do
    value
  end
end
