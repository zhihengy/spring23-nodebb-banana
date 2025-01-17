<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
    {{{each widgets.header}}}
    {{widgets.header.html}}
    {{{end}}}
</div>
<div class="recent">
    <div class="topic-list-header btn-toolbar">
        <div class="pull-left">
            <!-- IF canPost -->
            <!-- IMPORT partials/buttons/newTopic.tpl -->
            <!-- ELSE -->
            <a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
            <!-- ENDIF canPost -->
            <a href="{config.relative_path}/{selectedFilter.url}" class="inline-block">
                <div class="alert alert-warning hide" id="new-topics-alert"></div>
            </a>
        </div>
        
    <div class="btn-group pull-right bottom-sheet">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <span class="visible-sm-inline visible-md-inline visible-lg-inline">All Tags</span><span class="visible-xs-inline"><i class="fa fa-fw {selectedFilter.icon}"></i></span> <span class="caret"></span>
            </button>

               <ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
                        <div class="tags">
                            <!-- IF displayTagSearch -->
                            <!-- IF tags.length -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="[[global:search]]" id="tag-search">
                                        <span class="input-group-addon search-button"><i class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                            <!-- ENDIF tags.length -->
                            <!-- ENDIF displayTagSearch -->
                        
                            <!-- IF !tags.length -->
                            <div class="alert alert-warning">[[tags:no_tags]]</div>
                            <!-- ENDIF !tags.length -->
                        
                            <div class="category row">
                                <div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
                                    {{{each tags}}}
                                    <h3 class="pull-left tag-container">
                                        <a href="{config.relative_path}/tags/{tags.valueEncoded}" data-value="{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
                                    </h3>
                                    {{{end}}}
                                </div>
                            </div>
                        </div>

    <li role="presentation" class="category" data-all="all">
         <a role="menu-item" href="{config.relative_path}/tags/{tags.valueEncoded}" data-value="{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
         </li>
</ul> 
</div>

    <div class="btn-group pull-right bottom-sheet">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">



    <span class="visible-sm-inline visible-md-inline visible-lg-inline">All Tags</span><span class="visible-xs-inline"><i class="fa fa-fw {selectedFilter.icon}"></i></span> <span class="caret"></span>


        </button>
        <ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
        <div class="tags">
            <!-- IF displayTagSearch -->
            <!-- IF tags.length -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="[[global:search]]" id="tag-search">
                        <span class="input-group-addon search-button"><i class="fa fa-search"></i></span>
                    </div>
                </div>
            </div>
            <!-- ENDIF tags.length -->
            <!-- ENDIF displayTagSearch -->

            <!-- IF !tags.length -->
            <div class="alert alert-warning">[[tags:no_tags]]</div>
            <!-- ENDIF !tags.length -->

            <div class="category row">
                <div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
                    {{{each tags}}}
                    <h3 class="pull-left tag-container">
                        <a href="{config.relative_path}/tags/{tags.valueEncoded}" data-value="{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
                    </h3>
                    {{{end}}}
                </div>
            </div>
        </div>



    <li role="presentation" class="category" data-all="all">
         <a role="menu-item" href="{config.relative_path}/tags/{tags.valueEncoded}" data-value="{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
    </li>
    </ul> 



    </div>

        <div class="btn-group pull-right">
        <!-- IMPORT partials/category/tools.tpl -->
        </div>

        <!-- IMPORT partials/tags-filter-right.tpl -->
        <!-- IMPORT partials/category-filter-right.tpl -->

        <div class="btn-group pull-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <span class="visible-sm-inline visible-md-inline visible-lg-inline">{selectedFilter.name}</span><span class="visible-xs-inline"><i class="fa fa-fw {selectedFilter.icon}"></i></span> <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                {{{each filters}}}
                <li role="presentation" class="category {{{if filters.selected}}}selected{{{end}}}">
                    <a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
                </li>
                {{{end}}}
            </ul>
        </div>
    </div>

    <div class="category">
        <!-- IF !topics.length -->
        <div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
        <!-- ENDIF !topics.length -->

        <!-- IMPORT partials/topics_list.tpl -->

        <!-- IF config.usePagination -->
            <!-- IMPORT partials/paginator.tpl -->
        <!-- ENDIF config.usePagination -->
    </div>
</div>
