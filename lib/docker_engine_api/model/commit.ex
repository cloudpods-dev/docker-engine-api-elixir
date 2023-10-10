# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.Commit do
  @moduledoc """
  Commit holds the Git-commit (SHA1) that a binary was built from, as reported in the version-string of external tools, such as &#x60;containerd&#x60;, or &#x60;runC&#x60;. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ID",
    :"Expected"
  ]

  @type t :: %__MODULE__{
    :"ID" => String.t,
    :"Expected" => String.t
  }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.Commit do
  def decode(value, _options) do
    value
  end
end
