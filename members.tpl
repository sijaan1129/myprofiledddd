{include file='header.tpl'} {include file='navbar.tpl'}
<div class="container">
    <div class="row">

        {if count($WIDGETS_LEFT)}
            <div class="col-lg-3">
                {foreach from=$WIDGETS_LEFT item=widget}
                    {$widget}
                {/foreach}
            </div>
        {/if}

        <div class="{if count($WIDGETS_LEFT) && count($WIDGETS_RIGHT)}col-lg-6{elseif count($WIDGETS_LEFT) || count($WIDGETS_RIGHT)}col-lg-9{else}col-lg-12{/if}">
            <div class="card">
                <div class="card-header header-theme" style="color: white;">{$TITLE}</div>
                <div class="card-body">
                    <a href="{$ALL_LINK}" class="btn btn-theme mb-3" style="color: white;">{$DISPLAY_ALL}</a>
                    {foreach from=$GROUPS item=groups}
                        <a href="{$groups.link}" class="btn btn-theme mb-3" style="color: white;">{$groups.name}</a>
                    {/foreach}
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-users">
                        <thead>
                        <tr>
                        <th style="color: white; font-size: 16px; text-align: center;">Players</th>
                        </tr>
                    </thead>
                            <tbody>
                            {foreach from=$MEMBERS item=member}
                              <tr>
                                  <td style="text-align: center;">
                                      <div>
                                          <img src="{$member.avatar}" class="avatar-img mr-1" style="height:60px; width:60px;" alt="{$member.nickname}" />
                                      </div>
                                      <div>
                                          {foreach from=$member.groups item=group}
                                              <span class="d-inline-block mr-2" style="color: white;">{$group}</span>
                                          {/foreach}
                                          <a class="username" style="{$member.style}; color: white; font-size: 18px; line-height: 1.2;" href="{$member.profile}">{$member.nickname}</a>
                                      </div>
                                  </td>
                              </tr>
                              <tr><td colspan="3" style="height: 20px;"></td></tr> <!-- Add spacing between each player -->
                          {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        {if count($WIDGETS_RIGHT)}
            <div class="col-lg-3">
                {foreach from=$WIDGETS_RIGHT item=widget}
                    {$widget}
                {/foreach}
            </div>
        {/if}

    </div>
</div>
{include file='footer.tpl'}