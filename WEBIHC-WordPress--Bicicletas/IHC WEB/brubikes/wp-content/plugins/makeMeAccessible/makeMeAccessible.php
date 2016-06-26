<?php
/**
 * @package makeMeAccessible
 * @author Nicolas GRILLET
 * @version 1.0beta
 */
/*
Plugin Name: MakeMeAccessible
Plugin URI: http://www.erreurs404.net/blog/2009/08/plugins-wordpress-2-0-plugin-for-wcag-1-0-norm.html
Description: Make Your Wordpress Site Accessible
Version: 1.0Beta
Author: Nicolas GRILLET
Author URI: http://ww.erreurs404.net/
*/

define('MAKEMEACCESSIBLE_VERSION', '1.0');

/* add menu link */
function adminMenu()
{
    add_menu_page('MMA Config', 'MMA Config', 'administrator', 'make-me-accessible', 'makeMeAccessibleWidgetAdminOptions',get_bloginfo('url' ).'/wp-content/plugins/makeMeAccessible/assets/img/accessibility.png');
}
/* admin page */
function makeMeAccessibleWidgetAdminOptions() {
  echo '<div class="wrap">';
  echo '<div id="icon-options-general" class="icon32"><br /></div>';
  echo '<h2>Make Me Accessible Parameters</h2>';
  echo '<form method="post" action="options.php">';
  wp_nonce_field('update-options');
  echo '<table class="form-table">';
  echo '<tr valign="top">';
  echo '    <th scope="row">Display Accessibility Page ?</th>';
  echo '    <td><label>Yes <input type="radio" name="mmaAccessibility" value="yes" '.(get_option('mmaAccessibility')!="no"?'checked="checked"':'').' /></label><label>No <input type="radio" name="mmaAccessibility"  value="no" '.(get_option('mmaAccessibility')=="no"?'checked="checked"':'').' /></label></td>';
  echo '</tr>';
  echo '<tr valign="top">';
  echo '    <th scope="row">Choose Accessibility Page ?</th>';
  echo '    <td>'.wp_dropdown_pages(array('selected'=>get_option('mmaAccessibility'))).'</td>';
  echo '</tr>';
  echo '<tr valign="top">';
  echo '    <th scope="row">Display Font Resize Buttons ?</th>';
  echo '    <td><label>Yes <input type="radio" name="mmaFontResize" value="yes" '.(get_option('mmaFontResize')!="no"?'checked="checked"':'').' /></label><label>No <input type="radio" name="mmaFontResize"  value="no" '.(get_option('mmaFontResize')=="no"?'checked="checked"':'').' /></label></td>';
  echo '</tr>';
  echo '<tr valign="top">';
  echo '    <th scope="row">Display High Contrast Button ?</th>';
  echo '    <td><label>Yes <input type="radio" name="mmaConstrast" value="yes" '.(get_option('mmaConstrast')!="no"?'checked="checked"':'').' /></label><label>No <input type="radio" name="mmaConstrast"  value="no" '.(get_option('mmaConstrast')=="no"?'checked="checked"':'').' /></label></td>';
  echo '</tr>';
  echo '<tr valign="top">';
  echo '    <th scope="row">Display Text Only Button ?</th>';
  echo '    <td><label>Yes <input type="radio" name="mmaTextOnly" value="yes" '.(get_option('mmaTextOnly')!="no"?'checked="checked"':'').' /></label><label>No <input type="radio" name="mmaTextOnly"  value="no" '.(get_option('mmaTextOnly')=="no"?'checked="checked"':'').' /></label></td>';
  echo '</tr>';
  echo '<tr valign="top">';
  echo '    <th scope="row">Display "to content" Button ?</th>';
  echo '    <td><label>Yes <input type="radio" name="mmaToContent" value="yes" '.(get_option('mmaToContent')!="no"?'checked="checked"':'').' /></label><label>No <input type="radio" name="mmaToContent"  value="no" '.(get_option('mmaToContent')=="no"?'checked="checked"':'').' /></label></td>';
  echo '</tr>';
  echo '</table>';
  echo '<input type="hidden" name="action" value="update" />';
  echo '<p class="submit"><input type="submit" class="button-primary" value="';
  _e('Save Changes');
  echo '" /></p>';
  echo '<input type="hidden" name="page_options" value="mmaFontResize,mmaConstrast,mmaAccessibility,mmaTextOnly,mmaToContent,page_id" />';
  echo '</form>';
  echo '</div>';
}
/* makeMeAccessibleWidget class for Widget */
class makeMeAccessibleWidget extends WP_Widget
{
   function makeMeAccessibleWidget() 
   {
        $widget_ops = array('classname' => 'makeMeAccessibleWidget', 'description' => __( 'Make Your Wordpress Site accessible'),'title'=>_('Test') );
        //parent::WP_Widget('pages', __('Pages'), $widget_ops);
        parent::WP_Widget(false, $name = 'makeMeAccessibleWidget',$widget_ops);	

   }
    function widget($args, $instance) 
    {
        extract( $args );
        $title = apply_filters('widget_title', $instance['title']);
        add_action('wp_head', 'cssProcess');
        $siteurl = get_bloginfo('wpurl' );
        if(get_option('mmaAccessibility','yes')=="yes")
        {
            echo '<a href="'.get_page_uri(get_option('page_id',1)).'"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/accessibility.png" border="0" /></a>';
        }
        if(get_option('mmaFontResize','yes')=="yes")
        {
            echo '<script src="'.$siteurl . '/wp-content/plugins/makeMeAccessible/assets/js/fontResize.js"></script>';    
            echo '<a href="javascript:changeFontSize(-1)" title="decrease font size"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/a_minus.png" border="0" /></a>';
            echo '<a href="javascript:revertStyles()" title="normale font size"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/a_normal.png" border="0" /></a>';
            echo '<a href="javascript:changeFontSize(1)" title="increase font size"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/a_plus.png" border="0" /></a>';
        }
        if(get_option('mmaTextOnly','yes')=="yes")
        {
            echo '<a href="?mode=text-only" title="Text Only"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/textonly.png" border="0" /></a>';
        }
        if(get_option('mmaToContent','yes')=="yes")
        {
            echo '<a href="#MMAContent" title="Go to Content"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/to_content.png" border="0" /></a>';
        }
        if(get_option('mmaContrast','yes')=="yes")
        {
            echo '<a href="?mode=high-contrast"><img src="'.$siteurl.'/wp-content/plugins/makeMeAccessible/assets/img/contrast.png" border="0" /></a>';
        }
    }
    function cssCompressor()
    {
        $cssStyleSheets 		= '/<link(.*?)(type=)("|\')(text\/css)("|\')(.*?)\/>/';
        $exceptCSSStyleSheets	= '/<\!--\[if(.*?)endif\]-->/msi';
        preg_match("/<head>(.*?)<\/head>/msi", $body, $head);
        $headCssClean = preg_replace_callback($exceptCSSStyleSheets, array($this, 'cleanCSS'), $head[1]);
        $headCssClean = preg_replace_callback($cssStyleSheets, array($this, 'mergeCSS'), $headCssClean);
        $colorHex	= '/#[a-f0-9]{3,6}/msi';
    
    }
    function mergeCSS($styleSheets)
    {
		$merge = implode($styleSheets);
		if (strstr($styleSheets[0], '?')) return $styleSheets[0];
		preg_match('/(.*?)href=("|\')(.*?).css("|\')(.*?)/', $merge, $urlCSSFile);
		$urlCSSFileClean = $urlCSSFile[3].'.css';
		array_push($this->listOfCSSFiles, $urlCSSFileClean);
        $root=$_SERVER['DOCUMENT_ROOT'];
        $this->cssContent.="\n/****************************************************\n    CSS : $urlCSSFileClean                      \n****************************************************/\n";
        $strToDel="";
        if(preg_match("/\//",$urlCSSFile[3] ))
            $sep="/";
        else
            $sep="\\";
        $t=explode($sep, $urlCSSFile[3] );
        $nb=count($t);
        for($i=0;$i<($nb-2);$i++)
        {
            $strToDel.=$t[$i].$sep;
        }
        $strToDel=str_replace($strToDel,"",$urlCSSFileClean );
        $rootUrlCSSFileClean=str_replace($strToDel,"",$urlCSSFileClean );
        $localCSSContent=JFile::read($root.$urlCSSFileClean);
        $this->cssContent.=str_replace("url(../","url($rootUrlCSSFileClean",$localCSSContent);
		return '<!-- CSS COMPRESS : '.$urlCSSFileClean.' -->';
	}
    function cleanCSS($styleSheets)
    {
		$merge = implode($styleSheets);
		if (strstr($styleSheets[0], '?')) return $styleSheets[0];
		preg_match('/(.*?)href=("|\')(.*?).css("|\')(.*?)/', $merge, $urlCSSFile);
		$urlCSSFileClean = $urlCSSFile[3].'.css';
		return '<!-- CSS EXCEPT : '.$urlCSSFileClean.' -->';
	}
    function invertColor($color)
    {
		$color = str_replace("#","",implode($color));
        if(strlen($color)==3)
        {
            $ncolor="";
            for($i=0;$i<3;$i++)
            {
                $ncolor.=$color[$i].$color[$i];
            }
            //echo ">>$ncolor\n";
            $color=$ncolor;
        }
        if(hexdec($color)<=hexdec('222222'))
            $invertColor='FFFFFF';
        else
        if(hexdec($color)<=hexdec('444444'))
            $invertColor='CCCCCC';
         else
        if(hexdec($color)<=hexdec('666666'))
            $invertColor='AAAAAA';
        else
        if(hexdec($color)<=hexdec('888888'))
            $invertColor='888888';
        else
        if(hexdec($color)<=hexdec('AAAAAA'))
            $invertColor='666666';
        else
        if(hexdec($color)<=hexdec('CCCCCC'))
            $invertColor='444444';
        else
        if(hexdec($color)<=hexdec('FFFFFF'))
            $invertColor='222222';
        else
            $invertColor='000000';
		return "#".$invertColor;
	}
    function convertPxToPurcent()
    {
        $prs=array("font-size:","font:","line-height:","word-spacing:");
        $convertTable=array();
        for($px=7;$px<32;$px++)
        {
            foreach($prs as $pr)
                $convertTable[$pr.$px."px"]=$pr.(round(($px/16)*100,3))."%";
        }
        for($px=7;$px<32;$px++)
        {
            foreach($prs as $pr)
                $convertTable[$pr.(round(($px/16)*100,3))."px"]=$pr.(round(($px/16)*100,3))."%";
        }
        //print_r($convertTable);
        $this->cssContent=strtr(str_replace(array(" : "," :",": "),":",$this->cssContent),$convertTable);
    }
    function fixNoTitleImg($body)
    {
        preg_match_all('/<img[^>]+>/i',$body, $resultIMG); 
        $imgs                   =   array();
        foreach($resultIMG[0] as $img)
        {
            if(!eregi("alt=",$img))
                str_replace(array('/>','/ >','>'),' alt="no title" />',$img);
            $imgs[]=$img;
        }
        for($i=0;$i<sizeof($resultIMG[0]);$i++)
            $body=str_replace($resultIMG[0][$i],$imgs[$i],$body);
        return $body;
    }
    function form($instance) 
    {				
        $title = esc_attr($instance['title']);
        ?>
        <p><label for="<?php echo $this->get_field_id('title'); ?>">
        <?php _e('Title:'); ?> <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" /></label></p>
        <?php 
    }
	function update($new_instance, $old_instance) {
		// processes widget options to be saved
        return $new_instance;
	}
}
/* init */
add_action('widgets_init', create_function('', 'return register_widget("makeMeAccessibleWidget");'));
add_action('admin_menu', 'adminMenu');
add_filter( 'plugin_action_links_' . plugin_basename(__FILE__), 'liens_pages_extensions_icsv' );
function liens_pages_extensions_icsv( $links ) {
   $links[] = '<a href="http://www.devictio.fr target="_blank">www.devictio.fr <img src="http://apps.devictio.fr/Make_Me_Accessible.png" alt="logo" /></a>';
   return $links;
}
