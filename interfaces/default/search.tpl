#include $webdir + "/header.tpl"#

<div class="container">
    <div class="content maincontent">
        <h1 class="page-header page-title">
            <a href="http://nzbmatrix.com" target="_blank">$getVar('nzbsearch_name', 'Search')</a>
        </h1>
        <div class="well form-inline">
            <input class="span6" id="search_query" name="search_query" type="text" value="$search" placeholder="Search term" />
            <select class="span2" name="catid" id="catid">
                <option value="">All</option>
            </select>
            <button class="btn btn-success" type="submit" id="search_nzb_button"><i class="icon-search icon-white"></i> Search</button>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>NZB</th>
                    <th>Category</th>
                    <th class="right">Hits</th>
                    <th class="right">Size</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody id="results_table_body"></tbody>
        </table>
        <div class="gif-loader" id="show-loader"><img src="/img/loader.gif" alt="loader" /></div>
    </div>
</div>

#include $webdir + "/footer.tpl"#