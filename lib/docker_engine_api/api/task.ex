# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DockerEngineAPI.Api.Task do
  @moduledoc """
  API calls for all endpoints tagged `Task`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Inspect a task

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): ID of the task
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DockerEngineAPI.Model.Task{}} on success
  {:error, info} on failure
  """
  def task_inspect(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/tasks/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DockerEngineAPI.Model.Task{})
  end

  @doc """
  List tasks

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :filters (String.t): A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the tasks list.  Available filters:  - &#x60;desired-state&#x3D;(running | shutdown | accepted)&#x60; - &#x60;id&#x3D;&lt;task id&gt;&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; - &#x60;name&#x3D;&lt;task name&gt;&#x60; - &#x60;node&#x3D;&lt;node id or name&gt;&#x60; - &#x60;service&#x3D;&lt;service name&gt;&#x60; 

  ## Returns

  {:ok, [%Task{}, ...]} on success
  {:error, info} on failure
  """
  def task_list(connection, opts \\ []) do
    optional_params = %{
      :filters => :query
    }

    %{}
    |> method(:get)
    |> url("/tasks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%DockerEngineAPI.Model.Task{}])
  end

  @doc """
  Get task logs
  Get &#x60;stdout&#x60; and &#x60;stderr&#x60; logs from a task. See also [&#x60;/containers/{id}/logs&#x60;](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the &#x60;local&#x60;, &#x60;json-file&#x60; or &#x60;journald&#x60; logging drivers. 

  ## Parameters

  - connection (DockerEngineAPI.Connection): Connection to server
  - id (String.t): ID of the task
  - opts (KeywordList): [optional] Optional parameters
    - :details (boolean()): Show task context and extra details provided to logs.
    - :follow (boolean()): Keep connection after returning logs.
    - :stdout (boolean()): Return logs from &#x60;stdout&#x60;
    - :stderr (boolean()): Return logs from &#x60;stderr&#x60;
    - :since (integer()): Only return logs since this time, as a UNIX timestamp
    - :timestamps (boolean()): Add timestamps to every log line
    - :tail (String.t): Only return this number of log lines from the end of the logs. Specify as an integer or &#x60;all&#x60; to output all log lines. 

  ## Returns

  {:ok, %DockerEngineAPI.Model.binary(){}} on success
  {:error, info} on failure
  """
  def task_logs(connection, id, opts \\ []) do
    optional_params = %{
      :details => :query,
      :follow => :query,
      :stdout => :query,
      :stderr => :query,
      :since => :query,
      :timestamps => :query,
      :tail => :query
    }

    %{}
    |> method(:get)
    |> url("/tasks/#{id}/logs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
