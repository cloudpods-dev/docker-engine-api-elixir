# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Api.Network do
  @moduledoc """
  API calls for all endpoints tagged `Network`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Connect a container to a network

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): Network ID or name
  - container (NetworkConnectRequest): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def network_connect(connection, id, container, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/networks/#{id}/connect")
    |> add_param(:body, :container, container)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a network

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - network_config (NetworkCreateRequest): Network configuration
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DockerEngineAPI.Model.NetworkCreateResponse{}} on success
  {:error, info} on failure
  """
  def network_create(connection, network_config, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/networks/create")
    |> add_param(:body, :networkConfig, network_config)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.NetworkCreateResponse{})
  end

  @doc """
  Remove a network

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): Network ID or name
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def network_delete(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/networks/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Disconnect a container from a network

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): Network ID or name
  - container (NetworkDisconnectRequest): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  def network_disconnect(connection, id, container, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/networks/#{id}/disconnect")
    |> add_param(:body, :container, container)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Inspect a network

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): Network ID or name
  - opts (KeywordList): [optional] Optional parameters
    - :verbose (boolean()): Detailed inspect output for troubleshooting
    - :scope (String.t): Filter the network by scope (swarm, global, or local)

  ## Returns

  {:ok, %DockerEngineAPI.Model.Network{}} on success
  {:error, info} on failure
  """
  def network_inspect(connection, id, opts \\ []) do
    optional_params = %{
      :verbose => :query,
      :scope => :query
    }

    %{}
    |> method(:get)
    |> url("/networks/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.Network{})
  end

  @doc """
  List networks
  Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up. 

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :filters (String.t): JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the networks list.  Available filters:  - &#x60;dangling&#x3D;&lt;boolean&gt;&#x60; When set to &#x60;true&#x60; (or &#x60;1&#x60;), returns all    networks that are not in use by a container. When set to &#x60;false&#x60;    (or &#x60;0&#x60;), only networks that are in use by one or more    containers are returned. - &#x60;driver&#x3D;&lt;driver-name&gt;&#x60; Matches a network&#39;s driver. - &#x60;id&#x3D;&lt;network-id&gt;&#x60; Matches all or part of a network ID. - &#x60;label&#x3D;&lt;key&gt;&#x60; or &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60; of a network label. - &#x60;name&#x3D;&lt;network-name&gt;&#x60; Matches all or part of a network name. - &#x60;scope&#x3D;[\&quot;swarm\&quot;|\&quot;global\&quot;|\&quot;local\&quot;]&#x60; Filters networks by scope (&#x60;swarm&#x60;, &#x60;global&#x60;, or &#x60;local&#x60;). - &#x60;type&#x3D;[\&quot;custom\&quot;|\&quot;builtin\&quot;]&#x60; Filters networks by type. The &#x60;custom&#x60; keyword returns all user-defined networks. 

  ## Returns

  {:ok, [%Network{}, ...]} on success
  {:error, info} on failure
  """
  def network_list(connection, opts \\ []) do
    optional_params = %{
      :filters => :query
    }

    %{}
    |> method(:get)
    |> url("/networks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%DockerEngineAPI.Model.Network{}])
  end

  @doc """
  Delete unused networks

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :filters (String.t): Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;until&#x3D;&lt;timestamp&gt;&#x60; Prune networks created before this timestamp. The &#x60;&lt;timestamp&gt;&#x60; can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. &#x60;10m&#x60;, &#x60;1h30m&#x60;) computed relative to the daemon machine’s time. - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune networks with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels. 

  ## Returns

  {:ok, %DockerEngineAPI.Model.NetworkPruneResponse{}} on success
  {:error, info} on failure
  """
  def network_prune(connection, opts \\ []) do
    optional_params = %{
      :filters => :query
    }

    %{}
    |> method(:post)
    |> url("/networks/prune")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.NetworkPruneResponse{})
  end
end
