<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <a href="$BaseHref" class="header__logo">
                    <img src="{$ThemeDir}/dist/images/logo.png" class="header__logo-img"/>
                    <div class="header__logo-content">
                        <h1 class="header__logo-title">$SiteConfig.Title</h1>
                        <p class="header__logo-subtitle">$SiteConfig.Tagline</p>
                    </div>
                </a>

                <nav class="header__nav">
                    <a href="tel:{$SiteConfig.PhoneNumber}" class="header__nav-contact">CALL NOW {$SiteConfig.PhoneNumber}
                    </a>

                    <ul class="header__nav-list">
                        <% loop $MenuSet('Header').MenuItems %>
                        <li class="header__nav-item">
                            <a class="header__nav-link header__nav-link--{$LinkingMode}" href="$LinkURL">$MenuTitle</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
