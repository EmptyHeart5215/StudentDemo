var X = {};
/**
 * domain
 */
X.D='';
/**
 * back to top
 */
X.B=function(){$("html,body").animate({scrollTop:0},200);};
/**
 * url
 */
X.U={share:'share',email:'email',submit:'submit',info:'info',url:'url',search:'search',index:'index',surfix:'.shtml',sep:'/',base:'',action:'shtml',post:'post',get:'get',json:'json',jsonp:'jsonp',r:'user/doRegister',l:'user/doLogin',prize:'prize/do',f:'freeorder/click',t:'order/timeline', ol:'order/doLogin', success:'success'};
/**
 * cookies name
 */
X.N='r_n_ip';
/**
 * redirect
 */
X.R=function(u,t){if(!t){t=1;}if(!u){u=X.U.base+X.U.index+X.U.surfix;}setTimeout(function(){location.href=u;},t);};
X.E=window.encodeURI;
/**
 * input to {}
 */
X.F=function(){
	
	var param = {};
	$('input[type=text],input[type=hidden],input[type=radio]:checked,input[type=checkbox]:checked,input[type=password]').each(function(){
        var _name = $(this).attr('name');
        var _val = $(this).val();
        if(!param[_name]){
        	param[_name]=_val;
        }
	});
	$('select').each(function(){
	    var _name = $(this).attr('name');
		var _val = $(this).find('option:selected').val();
        if(!param[_name]){
            param[_name]=_val;
        }		
	});
	$('textarea').each(function(){
	    var _name = $(this).attr('name');
		var _val = $(this).val();
        if(!param[_name]){
            param[_name]=_val;
        }		
	});	
	return param;	
	
};
/**
 * reg validate
 */
X.V={
	isEmail:function(m){
		if(!m)return false;
		return /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(m);
	},
	isPhone:function(m){
		if(!m)return false;
		return /^1[3|4|5|8][0-9]\d{8}$/.test(m);
	},
	isQ:function(m){
		if(!m)return false;
		return /^[1-9]\d{4,15}$/.test(m);
	},
	isNum:function(m){
		if(!m)return false;
		return /^[0-9]+[\.]{0,}\d?$/.test(m);
	},
	isChinese:function(m){
		if(!m)return false;
		return /^[\u4e00-\u9fa5]+$/.test(m);
	}
	
};
/**
 * has login true or false
 */
X.L=function(){return $('#GBJ_LG').length==1;};
/**
 * ajax
 */
X.M=function(u,cb,bs,m,p,e){
	if(!m){m=X.U.post;};
	var hp={};
	hp['_token_']=$('input[name=_token_]').val();
	$.ajax({
		url:u,
		method:m,
		headers:hp,
		data:p,
		dataType:X.U.json,
		beforeSend: function(a){
			if(bs){
				bs(a);
			};			
		},
		success:function(d){
			if(cb){
				cb(d);
			};
		},
		error:function(e1,e2,e3){
			if(e){e(e1,e2,e3);}
		}
	});
};
/**
 * set cookie
 */
X.S=function(n,v,ms){
	if(!ms)ms=7*24*60*60*1000;
    var e  = new Date();
    e.setTime(e.getTime() + ms);  
    document.cookie = n + "="+ escape (v) + ";expires=" + e.toGMTString();
};
/**
 * get cookie
 */
X.G=function(cn){
	var c=document.cookie;
	if (c.length>0){ 
		cs=c.indexOf(cn + "=");
	    if (cs!=-1){
	    	cs=cs + cn.length+1; 
	        ce=c.indexOf(";",cs);
	        if (ce==-1) 
	            ce=c.length;
	            return unescape(c.substring(cs,ce));
	    } 
	}
	return '';
};