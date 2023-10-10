# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ImageInspectRootFs do
  @moduledoc """
  Information about the image&#39;s RootFS, including the layer IDs. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Type",
    :"Layers"
  ]

  @type t :: %__MODULE__{
    :"Type" => String.t,
    :"Layers" => [String.t]
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ImageInspectRootFs do
  def decode(value, _options) do
    value
  end
end
