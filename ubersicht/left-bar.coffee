commands =
  active : "/opt/homebrew/bin/yabai -m query --spaces --space | /opt/homebrew/bin/jq '.index'"
  list   : "/opt/homebrew/bin/yabai -m query --spaces | /opt/homebrew/bin/jq -r '.[].label'"
  monitor: ""

command: "echo " +
          "$(#{commands.active}):::" +
          "$(#{commands.list}):::"

render: () ->
  """
  <div class="spaces">
    <div>1</div>
  </div>
  """

update: (output) ->
  output = output.split( /:::/g )

  active = output[0]
  list   = output[1]

  @handleSpaces(list)
  @handleActiveSpace(Number (active))

handleSpaces: (list) ->
  $(".spaces").empty()
  list = " " + list
  list = list.split(" ")

  $.each(list, (index, value) ->
    if (index > 0)
      $(".spaces").append(
         """<div class="workspace" id="#{index}">#{index}</div>"""
      )
  )

handleActiveSpace: (id) ->
  $("##{id}").addClass("active")

style: """
  .spaces
    display: flex
    align-items: stretch
    height: 20px

  .workspace
    display: flex
    color: #515151
    align-items: center
    justify-content: center
    width: 10px
    padding: 2px 4px 0 4px
    margin-right: 3px
    border: 1px solid #3f6b8d
    background-color: #222222

  .active
    color: white
    background: #285577
    border: 1px solid #3f6b8d

  top: 10px
  left: 10px
  font-family: 'Monaco'
  font-size: 14px
  font-smoothing: antialiasing
  z-index: 0
"""

