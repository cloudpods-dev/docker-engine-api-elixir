# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.HealthcheckResult do
  @moduledoc """
  HealthcheckResult stores information about a single run of a healthcheck probe 
  """

  @derive [Poison.Encoder]
  defstruct [
    :Start,
    :End,
    :ExitCode,
    :Output
  ]

  @type t :: %__MODULE__{
          :Start => DateTime.t(),
          :End => String.t(),
          :ExitCode => integer(),
          :Output => String.t()
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.HealthcheckResult do
  def decode(value, _options) do
    value
  end
end
