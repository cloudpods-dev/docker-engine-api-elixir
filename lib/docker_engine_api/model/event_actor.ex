# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.EventActor do
  @moduledoc """
  Actor describes something that generates events, like a container, network, or a volume. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Attributes
  ]

  @type t :: %__MODULE__{
          :ID => String.t(),
          :Attributes => %{optional(String.t()) => String.t()}
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.EventActor do
  def decode(value, _options) do
    value
  end
end
