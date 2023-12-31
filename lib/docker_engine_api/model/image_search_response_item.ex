# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.ImageSearchResponseItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :description,
    :is_official,
    :is_automated,
    :name,
    :star_count
  ]

  @type t :: %__MODULE__{
          :description => String.t(),
          :is_official => boolean(),
          :is_automated => boolean(),
          :name => String.t(),
          :star_count => integer()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.ImageSearchResponseItem do
  def decode(value, _options) do
    value
  end
end
