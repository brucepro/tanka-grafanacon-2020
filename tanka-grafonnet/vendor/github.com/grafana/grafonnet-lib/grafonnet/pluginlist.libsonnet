{
  /**
   * Returns a new pluginlist panel that can be added in a row.
   * It requires the pluginlist panel plugin in grafana, which is built-in.
   *
   * @param title The title of the pluginlist panel.
   * @param description Description of the panel
   * @param limit Set maximum items in a list
   * @return A json that represents a pluginlist panel
   */
  new(
    title,
    description=null,
    limit=null,
  ):: {
    type: 'pluginlist',
    title: title,
    [if limit != null then 'limit']: limit,
    [if description != null then 'description']: description,
  },
}
