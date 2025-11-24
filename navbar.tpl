<div class="ui vertical inverted sidebar menu left" id="toc">
    <div class="item">
        <h3>{$SITE_NAME}</h3>
    </div>
    {foreach from=$NAV_LINKS key=name item=item}
    {if isset($item.items)}
    <div class="item">
        <div class="header">{$item.title} <span class="icon">{$item.icon}</span></div>
        <div class="menu">
            {foreach from=$item.items item=dropdown}
            <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
            {/foreach}
        </div>
    </div>
    {else}
    <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon}
        {$item.title}</a>
    {/if}
    {/foreach}
</div>

<div class="pusher">
    <div id="wrapper">
    <div class="etern-nav">
            <div class="etern-prim">
                <div class="etern-imglnk">
                    <div class="etern-img">
                        <img src="https://quak.ovh/7xCdN7F.png" />
                    </div>
                    <div class="etern-lnk">
                        <ul>
                            <li>
                            {foreach from=$NAV_LINKS key=name item=item}
                            {if isset($item.items)}
                            <div class="ui dropdown item dropdownlinkz">
                                {$item.icon} {$item.title}
                                <i class="dropdown icon"></i>
                                <div class="menu">
                                    <div class="header">{$item.title}</div>
                                    {foreach from=$item.items item=dropdown}
                                    {if isset($dropdown.separator)}
                                    <div class="divider"></div>
                                    {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                                        {$dropdown.title}</a>
                                    {/if}
                                    {/foreach}
                                </div>
                            </div>
                            {else}
                            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}"
                                target="{$item.target}">{$item.icon}
                                {$item.title}</a>
                            {/if}
                            {/foreach}
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="etern-user">
                    <div class="etern-search">
                        <form method="post" action="{$SEARCH_URL}" name="searchForm">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="text" name="forum_search" placeholder="Search...">
                    </form>
                    </div>
                    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {else}
                    <a data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                    {elseif ($name == "register")}
                    <a href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </div>
            </div>
            <div class="etern-sec">
                <div class="etern-socials">
                    <a href="" data-wenk="Discord" data-wenk-pos="bottom"><i class="fab fa-discord"></i></a>
                    <a href="" data-wenk="Twitter" data-wenk-pos="bottom"><i class="fab fa-twitter"></i></a>
                    <a href="" data-wenk="Youtube" data-wenk-pos="bottom"><i class="fab fa-youtube"></i></a>
                    <a href="" data-wenk="Twitch" data-wenk-pos="bottom"><i class="fab fa-twitch"></i></a>
                </div>
                <div class="etern-servers">
                <div discordInvite="https://discord.gg/cHqrsYTxCv" class="server-discord" data-wenk="Join us now!" data-wenk-pos="bottom" onclick="location.href=this.getAttribute('discordInvite')">
                    <div class="etern-servIcon">
                        <i class="fab fa-discord"></i>
                    </div>
                    <div class="etern-servText">
                        <a>Join our discord</a>
                        <p><span id="discord-online">0</span> members online</p>
                    </div>
                </div>
                <div serverIP="Play.RavenstonePvP.net" class="server-mc" data-wenk="Copy IP server!" data-wenk-pos="bottom" onclick="navigator.clipboard.writeText(this.getAttribute('serverIP'))">
                    <div class="etern-servIcon">
                        <i class="fas fa-tree"></i>
                    </div>
                    <div class="etern-servText">
                        <a data-clipboard-text="play.RavenstonePvP.net" class="mcIP" id="copy">play.RavenstonePvP.net</a>
                        <p><span id="mc-online">0</span> members online</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="ui container">
            <div class="ui negative icon message" id="ie-message">
                <i class="exclamation triangle icon"></i>
                <div class="content">
                    <div class="header">
                        {$INTERNET_EXPLORER_HEADER}
                    </div>
                    <p>{$INTERNET_EXPLORER_INFO}</p>
                </div>
            </div>

            {if isset($NEW_UPDATE)}
            {if $NEW_UPDATE_URGENT eq true}
            <div class="ui negative icon message" id="update-message">
                {else}
                <div class="ui info icon message" id="update-message">
                    <i class="close icon"></i>
                    {/if}
                    <a href="{$NAMELESS_UPDATE_LINK}">
                        <i class="download icon"></i>
                    </a>
                    <div class="content">
                        <div class="header">{$NEW_UPDATE}</div>
                        <ul class="list">
                            <li>{$CURRENT_VERSION}</li>
                            <li>{$NEW_VERSION}</li>
                        </ul>
                    </div>
                </div>
                {/if}

                {if !empty($ANNOUNCEMENTS)}
                {foreach from=$ANNOUNCEMENTS item=$ANNOUNCEMENT}
                <div class="ui {if $ANNOUNCEMENT->icon} icon {/if} message announcement"
                    id="announcement-{$ANNOUNCEMENT->id}"
                    style="background-color:{$ANNOUNCEMENT->background_colour}; color:{$ANNOUNCEMENT->text_colour}">
                    {if $ANNOUNCEMENT->closable}
                    <i class="close icon"></i>
                    {/if}
                    {if $ANNOUNCEMENT->icon}
                    <i class="{$ANNOUNCEMENT->icon} icon"></i>
                    {/if}
                    <div class="content">
                        <div class="header">{$ANNOUNCEMENT->header}</div>
                        <p>{$ANNOUNCEMENT->message|escape}</p>
                    </div>
                </div>
                {/foreach}
                {/if}

                {if isset($MUST_VALIDATE_ACCOUNT)}
                <div class="ui message">
                    {$MUST_VALIDATE_ACCOUNT}
                </div>
                {/if}

                {if isset($MAINTENANCE_ENABLED)}
                <div class="ui warning message">
                    <i class="close icon"></i>
                    {$MAINTENANCE_ENABLED}
                </div>
                {/if}
