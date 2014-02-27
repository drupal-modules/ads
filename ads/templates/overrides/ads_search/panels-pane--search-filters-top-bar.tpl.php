<div class="search-filters-top-bar">

  <form id="views-exposed-form-ads-search-results-search-results-content-pane" accept-charset="UTF-8" method="get" action="/search/results">

    <div class="title">
      Search more than <b>1 724 342</b> ads.
    </div>

    <span>
      <?php print t('Find a'); ?>&nbsp;
    </span>
    <input id="edit-keywords" class="form-text" type="text" maxlength="128" size="26" value="<?php print check_plain(@$_REQUEST['keywords']) ?>" name="keywords" placeholder="<?php print t('eg. BWM, 2 bed, flat, sofa'); ?>"><select>
      <option>All categories</option>
    </select>

    <span>
      &nbsp;<?php print t('in'); ?>&nbsp;
    </span>

    <input id="edit-location" class="form-text" type="text" maxlength="128" size="20" value="<?php print check_plain(@$_REQUEST['location']) ?>" name="location" placeholder="<?php print t('Postcode or location  '); ?>"><select>
      <option>+0 miles</option>
    </select>

    &nbsp;

    <input id="edit-submit-ads-search-results" class="form-submit" type="submit" value="<?php print t('Search'); ?>" name="" />

  </form>

</div>