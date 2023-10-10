# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Model.SwarmSpec do
  @moduledoc """
  User modifiable swarm configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Labels,
    :Orchestration,
    :Raft,
    :Dispatcher,
    :CAConfig,
    :EncryptionConfig,
    :TaskDefaults
  ]

  @type t :: %__MODULE__{
          :Name => String.t(),
          :Labels => %{optional(String.t()) => String.t()},
          :Orchestration => SwarmSpecOrchestration,
          :Raft => SwarmSpecRaft,
          :Dispatcher => SwarmSpecDispatcher,
          :CAConfig => SwarmSpecCaConfig,
          :EncryptionConfig => SwarmSpecEncryptionConfig,
          :TaskDefaults => SwarmSpecTaskDefaults
        }
end

defimpl Poison.Decoder, for: DockerEngineAPI.Model.SwarmSpec do
  import DockerEngineAPI.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Orchestration, :struct, DockerEngineAPI.Model.SwarmSpecOrchestration, options)
    |> deserialize(:Raft, :struct, DockerEngineAPI.Model.SwarmSpecRaft, options)
    |> deserialize(:Dispatcher, :struct, DockerEngineAPI.Model.SwarmSpecDispatcher, options)
    |> deserialize(:CAConfig, :struct, DockerEngineAPI.Model.SwarmSpecCaConfig, options)
    |> deserialize(
      :EncryptionConfig,
      :struct,
      DockerEngineAPI.Model.SwarmSpecEncryptionConfig,
      options
    )
    |> deserialize(:TaskDefaults, :struct, DockerEngineAPI.Model.SwarmSpecTaskDefaults, options)
  end
end
