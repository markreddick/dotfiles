Vim�UnDo� -$��*'w|�f�"|ZUg��O���0�U��   5   1class AdvertisedDealViewObject extends ViewObject   
   '                       Y�D    _�                       +    ����                                                                                                                                                                                                                                                                                                                                                             Y�C�     �               5   <?php   /**   G * ViewObject for Advertised Lease Offers for the Showroom (BYC) module    */       -namespace APP\Incentive\ViewObjects\Showroom;       )use APP\Incentive\ViewObjects\ViewObject;       1class AdvertisedDealViewObject extends ViewObject   {       	private $deal_index;       M	public function __construct($data_object, $view_content = null, $deal_index)   	{   "		$this->deal_index = $deal_index;   3		parent::__construct($data_object, $view_content);   	}       	/**   	 * @return void   	 *   @	 * Build string content needed for view from data object's data   	 */   "	protected function buildContent()   	{   *		$title = $this->data_object->getTitle();   @		if (!empty($this->data_object->getAdvertisedLeaseDetails())) {   D			$lease_details = $this->data_object->getAdvertisedLeaseDetails();   -			$lease_detail = array_pop($lease_details);   -			if (!empty($lease_detail->getPayment())) {   p				$title .= ' - $' . $lease_detail->getPayment() . " per month for " . $lease_detail->getLength() . " months";   			}   		}   		$expiration_string = '';   1		if ($this->data_object->getEndDate() != null) {   C			$expiration = $this->data_object->getEndDate()->format("m-d-Y");   r			$expiration_string = '<p class="incentives-disc">- ' . $this->view_content->expires_cnt . $expiration . '</p>';   		}       a		$this->content .= '<h3 class="incentives-specials-heading thm-box_gradient thm-general_border">   �			<span class="incentives-number-title thm-general_border thm-med-box_gradient">' . $this->deal_index . '</span> ' . $title . '</h3>';   		$this->content .= '   6			<div class="incentive_cash" style="padding: .75em">   ]				<p class="incentives-specials-body incentives-specials-description thm-light_text_color">   1					' . $this->data_object->getDisclaimer()  . '   				</p>   			<div class="fl_c"></div>        		' . $expiration_string . '   			</div>';   	}   }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Y�C�     �      	   5      )use APP\Incentive\ViewObjects\ViewObject;5�_�                     
   '    ����                                                                                                                                                                                                                                                                                                                                                             Y�D    �   	      5      1class AdvertisedDealViewObject extends ViewObject5�_�                    
   '    ����                                                                                                                                                                                                                                                                                                                                                             Y�?�    �   	      5      5class AdvertisedDealViewObject extends DealViewObject5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             Y�@     �   	   
   5    �   	   
   5      -use APP\Incentive\ViewObjects\DealViewObject;    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             Y�@     �      
   7       5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             Y�@     �      
   7       5�_�                     	        ����                                                                                                                                                                                                                                                                                                                                                             Y�@     �      
        5��