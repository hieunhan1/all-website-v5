<div class="container">
	<div class="clear30"></div>
	<div id="left">
    	<h1 id="appsTitle">iAppsCode quản lý fanpage</h1>
        <h2 id="appsDes">Quản lý fanpage bằng ứng dụng của iAppsCode giúp bạn thông kê chi tiết lượng khách hàng tiềm năng.</h2>
        <img src="themes/apps/img/quan-ly-apps.jpg" alt="iAppsCode quản lý fanpage" id="appsImg" />
    </div>
    
    <div id="right">
    	<div id="frmLogin">
    		<div id="frmTitle">Đăng nhập</div>
            <div class="frmLR">
                <div id="appsError" class="error appsError"></div>
                <div class="row">
                    <div class="label">Email:</div>
                    <div class="txt"><input type="text" name="appsUser" id="appsUser" class="fieldLogin" /></div>
                    <p id="appsUserMessage" class="error"></p>
                </div>
                <div class="clear10"></div>
                <div class="row">
                    <div class="label">Password:</div>
                    <div class="txt"><input type="password" name="appsPass" id="appsPass" class="fieldLogin" /></div>
                    <p id="appsPassMessage" class="error"></p>
                </div>
                <div class="row">
                    <input type="button" name="btnAppsLogin" id="btnAppsLogin" value="LOGIN" class="btn fieldLogin" />
                    <p><a href="">I can't access my account</a></p>
                </div>
            </div>
        </div>
        
        <div id="registerTrial">Đăng ký dùng thử 30 ngày.</div>
        
        <div id="frmRegister" style="display:none">
            <div class="frmLR">
                <div id="appsRegisterError" class="error appsError"></div>
                <div class="row">
                    <div class="label">Họ tên:</div>
                    <div class="txt"><input type="text" name="appsName" id="appsName" class="fieldRegister" /></div>
                    <p id="appsNameMessage" class="error"></p>
                </div>
                <div class="row">
                    <div class="label">Điện thoại:</div>
                    <div class="txt"><input type="text" name="appsPhone" id="appsPhone" class="fieldRegister" /></div>
                    <p id="appsPhoneMessage" class="error"></p>
                </div>
                <div class="row">
                    <div class="label">Địa chỉ:</div>
                    <div class="txt"><input type="text" name="appsAddress" id="appsAddress" class="fieldRegister" /></div>
                    <p id="appsAddressMessage" class="error"></p>
                </div>
                <div class="row">
                    <div class="label">Email:</div>
                    <div class="txt"><input type="text" name="appsEmail" id="appsEmail" class="fieldRegister" /></div>
                    <p id="appsEmailMessage" class="error"></p>
                </div>
                <div class="row">
                    <div class="label">Mật khẩu:</div>
                    <div class="txt"><input type="password" name="appsRegisterPass" id="appsRegisterPass" class="fieldRegister" /></div>
                    <p id="appsRegisterPassMessage" class="error"></p>
                </div>
                <div class="row">
                    <div class="label">Nhắc lại:</div>
                    <div class="txt"><input type="password" name="appsRegisterPass2" id="appsRegisterPass2" class="fieldRegister" /></div>
                    <p id="appsRegisterPass2Message" class="error"></p>
                </div>
                <div class="row">
                    <input type="button" name="btnAppsRegister" id="btnAppsRegister" value="Đăng ký" class="btn fieldRegister" />
                    <p class="backLogin"><a href="javascript:;">Trở lại đăng nhập</a></p>
                </div>
            </div>
        </div>
        <div id="registerSuccess" class="frmLR" style="display:none">
        	<h3>Đăng ký thành công.</h3>
        	<p>Vui lòng kiểm tra email <b></b> để kích hoạt tài khoản.</p>
            <p class="backLogin"><a href="javascript:;">Trở lại đăng nhập</a></p>
        </div>
    </div>
</div>