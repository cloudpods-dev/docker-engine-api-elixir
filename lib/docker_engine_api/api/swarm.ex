# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Api.Swarm do
  @moduledoc """
  API calls for all endpoints tagged `Swarm`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Initialize a new swarm

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - body (SwarmInitRequest): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DockerEngineAPI.Model.String.t{}} on success
  {:error, info} on failure
  """
  def swarm_init(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/swarm/init")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Inspect swarm

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DockerEngineAPI.Model.Swarm{}} on success
  {:error, info} on failure
  """
  def swarm_inspect(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/swarm")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.Swarm{})
  end

  @doc """
  Join an existing swarm

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - body (SwarmJoinRequest): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def swarm_join(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/swarm/join")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Leave a swarm

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :force (boolean()): Force leave swarm, even if this is the last manager or that it will break the cluster. 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def swarm_leave(connection, opts \\ []) do
    optional_params = %{
      :force => :query
    }

    %{}
    |> method(:post)
    |> url("/swarm/leave")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Unlock a locked manager

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - body (SwarmUnlockRequest): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def swarm_unlock(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/swarm/unlock")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get the unlock key

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DockerEngineAPI.Model.UnlockKeyResponse{}} on success
  {:error, info} on failure
  """
  def swarm_unlockkey(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/swarm/unlockkey")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.UnlockKeyResponse{})
  end

  @doc """
  Update a swarm

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - body (SwarmSpec): 
  - version (integer()): The version number of the swarm object being updated. This is required to avoid conflicting writes. 
  - opts (KeywordList): [optional] Optional parameters
    - :rotate_worker_token (boolean()): Rotate the worker join token.
    - :rotate_manager_token (boolean()): Rotate the manager join token.
    - :rotate_manager_unlock_key (boolean()): Rotate the manager unlock key.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def swarm_update(connection, body, version, opts \\ []) do
    optional_params = %{
      :rotateWorkerToken => :query,
      :rotateManagerToken => :query,
      :rotateManagerUnlockKey => :query
    }

    %{}
    |> method(:post)
    |> url("/swarm/update")
    |> add_param(:body, :body, body)
    |> add_param(:query, :version, version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
