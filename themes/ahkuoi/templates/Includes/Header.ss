<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <a href="$BaseHref" class="header__logo">
                    <img src="{$ThemeDir}/src/images/logo.png"/>
                    <div class="header__logo-content">
                        <h1 class="header__logo-title">$SiteConfig.Title</h1>
                        <p class="header__logo-subtitle">$SiteConfig.SubTitle</p>
                    </div>
                </a>

                <nav class="header__nav">

                </nav>
            </div>
        </div>
    </div>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <ul class="navbar-nav mr-auto">
            <% loop $Menu(1) %>
            <li class="nav-item">
                <a class="nav-link" href="$Link">$MenuTitle</a>
            </li>
            <% end_loop %>
        </ul>
    </nav>

</header>
