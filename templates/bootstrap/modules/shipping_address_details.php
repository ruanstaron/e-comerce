<?php
/**
 * TomatoCart Open Source Shopping Cart Solution
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License v3 (2007)
 * as published by the Free Software Foundation.
 *
 * @package      TomatoCart
 * @author       TomatoCart Dev Team
 * @copyright    Copyright (c) 2009 - 2012, TomatoCart. All rights reserved.
 * @license      http://www.gnu.org/licenses/gpl.html
 * @link         http://tomatocart.com
 * @since        Version 1.1.8
 * @filesource
*/

  $address = $osC_ShoppingCart->getShippingAddress();
  
  if(isset($address['id']) && ($address['id'] != '-1')) {
    $address = array();
  }

  $gender = isset($address['gender']) ? $address['gender'] : 'f';
  $firstname = isset($address['firstname']) ? $address['firstname'] : null;
  $lastname = isset($address['lastname']) ? $address['lastname'] : null;
  $company = isset($address['company']) ? $address['company'] : null;
  $street_address = isset($address['street_address']) ? $address['street_address'] : null;
  $suburb = isset($address['suburb']) ? $address['suburb'] : null;
  $postcode = isset($address['postcode']) ? $address['postcode'] : null;
  $city = isset($address['city']) ? $address['city'] : null;
  $state = isset($address['state']) ? $address['state'] : null;
  $country_id = isset($address['country_id']) ? $address['country_id'] : STORE_COUNTRY;
  $telephone = isset($address['telephone_number']) ? $address['telephone_number'] : null;
  $fax = isset($address['fax']) ? $address['fax'] : null;
  
  $create_shipping_address = null;
  if (isset($address['id']) && ($address['id'] == '-1')) {
    $create_shipping_address = true;  
  } else if ($osC_Customer->isLoggedOn() && (osC_AddressBook::numberOfEntries() == 0)) {
    $create_shipping_address = true;
  }
?>
<div class="moduleBox">
    <div class="content form-horizontal">
        <?php
            if ($osC_Customer->isLoggedOn() && osC_AddressBook::numberOfEntries() > 0) {
        ?>
        <div class="row-fluid">
        	<div class="span9">
            <?php
                $Qaddresses = osC_AddressBook::getListing();
                $addresses = array();
                
                while ($Qaddresses->next()) {
                $address = array('id' => $Qaddresses->valueInt('address_book_id'), 'text' => osC_Address::format($Qaddresses->toArray(), ', '));
                
                if ($Qaddresses->valueInt('address_book_id') == $Qaddresses->valueInt('default_address_id')) {
                   array_unshift($addresses, $address);
                }else {
                   array_push($addresses, $address);
                }
                }
                
                if($create_shipping_address == null) {
                $create_shipping_address = false;
                }
                
                echo osc_draw_pull_down_menu('sel_shipping_address', $addresses);
            ?>
        	</div>
            <div class="span3 center hidden-phone">
                <?php echo '<b>' . $osC_Language->get('please_select') . '</b><br />' . osc_image(DIR_WS_IMAGES . 'arrow_east_south.gif'); ?>
            </div>
        </div>
        <?php
            }
        ?>

    	<div id="shippingAddressDetails" style="display: <?php echo ($osC_Customer->isLoggedOn() & $create_shipping_address == false) ? 'none' : ''; ?>">
        <?php
            if (ACCOUNT_GENDER > -1) {
        ?>
        <div class="control-group">
            <label class="control-label"><?php echo $osC_Language->get('field_customer_gender') . ((ACCOUNT_GENDER > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            	<label class="radio inline" for="gender1"><input type="radio" value="m" id="shipping_gender1" name="shipping_gender" <?php echo (isset($gender) && $gender == 'm') ? 'checked="checked"' : ''; ?> /><?php echo $osC_Language->get('gender_male'); ?></label>
            	<label class="radio inline" for="gender2"><input type="radio" value="f" id="shipping_gender2" name="shipping_gender" <?php echo (isset($gender) && $gender == 'f') ? 'checked="checked"' : ''; ?> /><?php echo $osC_Language->get('gender_female'); ?></label>
            </div>
        </div>
        <?php
            }
        ?>
        <div class="control-group">
            <label class="control-label" for="shipping_firstname"><?php echo $osC_Language->get('field_customer_first_name'); ?><em>*</em></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_firstname', $firstname); ?>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="shipping_lastname"><?php echo $osC_Language->get('field_customer_last_name'); ?><em>*</em></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_lastname', $lastname); ?>
            </div>
        </div>

        <?php
          if (ACCOUNT_COMPANY > -1) {
        ?>
        <div class="control-group">
            <label class="control-label" for="shipping_company"><?php echo $osC_Language->get('field_customer_company') . ((ACCOUNT_COMPANY > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_company', $company); ?>
            </div>
        </div>
        <?php
            }
        ?>
    
        <div class="control-group">
            <label class="control-label" for="shipping_street_address"><?php echo $osC_Language->get('field_customer_street_address'); ?><em>*</em></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_street_address', $street_address); ?>
            </div>
        </div>
        
        <?php
            if (ACCOUNT_SUBURB > -1) {
        ?>
        <div class="control-group">
            <label class="control-label" for="shipping_suburb"><?php echo $osC_Language->get('field_customer_suburb') . ((ACCOUNT_SUBURB > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_suburb', $suburb); ?>
            </div>
        </div>
        <?php
            }
        ?>

        <?php
            if (ACCOUNT_POST_CODE > -1) {
        ?>
        <div class="control-group">
            <label class="control-label" for="shipping_postcode"><?php echo $osC_Language->get('field_customer_post_code') . ((ACCOUNT_POST_CODE > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_postcode', $postcode); ?>
            </div>
        </div>
        <?php
            }
        ?>
        
        <div class="control-group">
            <label class="control-label" for="shipping_city"><?php echo $osC_Language->get('field_customer_city'); ?><em>*</em></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_city', $city); ?>
            </div>
        </div>
        
        <div class="control-group">
            <label class="control-label" for="shipping_country"><?php echo $osC_Language->get('field_customer_country'); ?><em>*</em></label>
            <div class="controls">
            <?php
              $countries_array = array(array('id' => '',
                                             'text' => $osC_Language->get('pull_down_default')));
            
              foreach (osC_Address::getCountries() as $country) {
                $countries_array[] = array('id' => $country['id'],
                                           'text' => $country['name']);
              }
            
              echo osc_draw_pull_down_menu('shipping_country', $countries_array, $country_id, "class=country");
            ?>
            </div>
        </div>
        
        <?php
            if (ACCOUNT_STATE > -1) {
        ?>
        <div id="shipping-state" class="control-group">
            <label class="control-label" for="shipping_state"><?php echo $osC_Language->get('field_customer_state') . ((ACCOUNT_STATE > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            <?php
                $Qzones = $osC_Database->query('select zone_name from :table_zones where zone_country_id = :zone_country_id order by zone_name');
                $Qzones->bindTable(':table_zones', TABLE_ZONES);
                $Qzones->bindInt(':zone_country_id', $country_id);
                $Qzones->execute();
          
                $zones_array = array();
                while ($Qzones->next()) {
                  $zones_array[] = array('id' => $Qzones->value('zone_name'), 'text' => $Qzones->value('zone_name'));
                }
            
                if (sizeof($zones_array) > 0) {
                  echo osc_draw_pull_down_menu('shipping_state', $zones_array, $state);
                } else {
                  echo osc_draw_input_field('shipping_state', $state);
                }
            ?>    
            </div>
        </div>
        <?php
            }
        ?>

        <?php
          if (ACCOUNT_TELEPHONE > -1) {
        ?>
            <div class="control-group">
                <label class="control-label" for="shipping_telephone"><?php echo $osC_Language->get('field_customer_telephone_number') . ((ACCOUNT_TELEPHONE > 0) ? '<em>*</em>' : ''); ?></label>
                <div class="controls">
                	<?php echo osc_draw_input_field('shipping_telephone', $telephone); ?>
                </div>
            </div>
        <?php
          }
        ?>

        <?php
            if (ACCOUNT_FAX > -1) {
        ?>
        
        <div class="control-group">
            <label class="control-label" for="shipping_fax"><?php echo $osC_Language->get('field_customer_fax_number') . ((ACCOUNT_FAX > 0) ? '<em>*</em>' : ''); ?></label>
            <div class="controls">
            	<?php echo osc_draw_input_field('shipping_fax', $fax); ?>
            </div>
        </div>
        <?php
            }
        ?>
        </div>
    
        <?php          
            if ($osC_Customer->isLoggedOn()) {
        ?>
        <div class="control-group">
        	<label class="checkbox" for="create_shipping_address">
        	    <?php echo osc_draw_checkbox_field('create_shipping_address', array(array('id' => '1', 'text' => $osC_Language->get('create_new_shipping_address'))) , $create_shipping_address); ?>
        	</label>
        </div>
        <?php 
            }      
        ?>
    
        <div class="submitFormButtons right">
        	<button class="btn btn-small" id="btnSaveShippingInformation"><i class="icon-chevron-right icon-white"></i> <?php echo $osC_Language->get('button_continue'); ?></button>
        </div>
    </div>
</div>