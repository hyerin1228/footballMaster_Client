<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file='includes/header.jsp' %>
    
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script>
<style>
            /* 설정 */
        .content{
            margin: 0 auto;
            background: white;
        }

        .contentWapper_acc{
            padding: 0 20px;
            max-width: 1024px;
            margin: 0 auto;
            overflow: auto;
        }
        @media only screen and (min-width: 1024px){
            .inner{
                max-width: 480px;
                margin: 0 auto;
                margin: 50px;
            }
        }
        .headmMessage{
            margin-bottom: 30px;
            margin-top: 20px;
        }
        .headmMessage h2{
            font-weight: 300;
            font-size: 32px;
        }
        
        input{
            padding: 15px 10px;
            border-radius: 6px;
            border: 1px solid #ddd;
            box-shadow: none;
            outline: none;
            background-color: #fafafa;
            appearance: none;
            font-size: 16px;
            color: #333333;
            -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    text-align: start;
    -webkit-rtl-ordering: logical;
    margin: 0em;
    font: 400 13.3333px Arial;
   
        }
    .inputDWrap {
    overflow: auto;
    margin: 5px 0;
    display: inline-block;
    width: 100 }
 
    .inputWrap50:first-child {
    margin-right: 1%;
    }

    .inputWrap50 {
    width: 49%;
    float: left;
    }
    @media only screen and (min-width: 1024px){
    form label {
    display: inherit;}
    }
    form label {
    font-size: 11px;
    text-align: left;
    display: block;
    margin: 10px 0 3px 5px;
    }
    input.inputFull, select.inputFull {
    width: 100%;
    }
    input[type=text], input[type=password], textarea, select {
    -webkit-transition: all 0.30s ease-in-out; 
    outline: none;
}
select {
    margin: 0;
    padding: 15px 10px;
    border-radius: 6px;
    border: 1px solid #ddd;
    box-shadow: none;
    outline: none;
    color: #333333;
    background-color: #fafafa;
    font-size: 16px;
    appearance: none;
    box-sizing: border-box;
    }

    .option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
    }
    .inputwrap{
        margin: 5px 0;
    width: 100%;
    overflow: auto;
    }
    .btn_submit {
    background-color: #3540A5;
    width: 100%;
    font-size: 18px;
    line-height: 18px;
    margin: 20px auto;
}
.btn {
    color: white;
    border-radius: 6px;
    border: none;
    box-shadow: none;
    padding: 15px 10px;
    margin-top: 0 20px;
}
/* 설정 */

</style>
    
    <div class="content" id="content">
    <div class="contentWapper_acc">
        <div class="inner">
            <div class="headmMessage">
                <h2 name="email">[[ userData.email ]]</h2>
            </div>
            <form method="POST" action="file:///C:/mypage/change/profile" onsubmit="return checkSex()">
              <input type="hidden" name="csrfmiddlewaretoken" value="9tokaY1isfHdv">
              <fieldset>
                  <div class="inputDWrap">
<!--                   <div class="inputDWrap50"> -->
                      <label>이름</label>
                        <input type="text" name="name" v-bind:value="[[ userData.name]]" placeholder="이름" class="inputFULL" required="" id="id_name">
                  <div class="inputDWrap50">
                      <label>성별</label>
                        <select name="sex" class="inputFull" id="sex" v-model="userData.gender"> 
                            <option value="0">성별선택</option>
                            <option value="남성">남성</option>
                            <option value="여성">여성</option>
                        </select>
                  </div>      
                  <div class="inputDWrap50">
                      <label>생년월일</label>
                      <input type="text" name="year" v-bind:value="[[birthY]]">년
				      <select name="month" v-model="birthM">
				        <option value="">-- 선택 --</option>
				        <option value="1">1</option>
				        <option value="2">2</option>
				        <option value="3">3</option>
				        <option value="4">4</option>
				        <option value="5">5</option>
				        <option value="6">6</option>
				        <option value="7">7</option>
				        <option value="8">8</option>
				        <option value="9">9</option>
				        <option value="10">10</option>
				        <option value="11">11</option>
				        <option value="12">12</option>
				      </select>월
				      <select name="day" v-model="birthD">
				        <option value="">-- 선택 --</option>
				        <option value="1">1</option>
				        <option value="2">2</option>
				        <option value="3">3</option>
				        <option value="4">4</option>
				        <option value="5">5</option>
				        <option value="6">6</option>
				        <option value="7">7</option>
				        <option value="8">8</option>
				        <option value="9">9</option>
				        <option value="10">10</option>
				        <option value="11">11</option>
				        <option value="12">12</option>
				        <option value="13">13</option>
				        <option value="14">14</option>
				        <option value="15">15</option>
				        <option value="16">16</option>
				        <option value="17">17</option>
				        <option value="18">18</option>
				        <option value="19">19</option>
				        <option value="20">20</option>
				        <option value="21">21</option>
				        <option value="22">22</option>
				        <option value="23">23</option>
				        <option value="24">24</option>
				        <option value="25">25</option>
				        <option value="26">26</option>
				        <option value="27">27</option>
				        <option value="28">28</option>
				        <option value="29">29</option>
				        <option value="30">30</option>
				        <option value="31">31</option>
				      </select>일
                  </div>      
                </div>
                  <div class="inputwrap">
                    <label>휴대폰 번호</label>
                        <input type="text" name="phone" v-bind:value="[[ userData.phone_number]]" placeholder="휴대폰 번호" required="" id="id_phone">
                  
                  <p>"매치 참여시 본인 확인 및 참여 안내록을 보내드립니다."<br>
                  "이름과 휴대폰 번호를 꼭 바르게 적어주세요!"</p>
                  <div class="inputwrap">
                      <label>환불 계좌 은행</label>
                        <select name="bank_cd" id="id_bank_cd" v-model="userBank.banks_id">
                            <option value="">---------</option>
							  <option value="1">국민</option>
							  <option value="2">기업</option>
							  <option value="3">농협</option>
							  <option value="4">신한(구조흥포함)</option>
							  <option value="5">SC(스탠다드차타드)</option>
							  <option value="6">KEB하나(구외환포함)</option>
							  <option value="7">한국씨티(구 한미)</option>
							  <option value="8">우리</option>
							  <option value="9">경남</option>
							  <option value="10">광주</option>
							  <option value="11">대구</option>
							  <option value="12">도이치</option>
							  <option value="13">부산</option>
							  <option value="14">산업</option>
							  <option value="15">수협</option>
							  <option value="16">전북</option>
							  <option value="17">제주</option>
							  <option value="18">새마을금고</option>
							  <option value="19">신용협동조합</option>
							  <option value="20">홍콩샹하이(HSBC)</option>
							  <option value="21">상호저축은행중앙회</option>
							  <option value="22">BOA(Bank of America)</option>
							  <option value="23">제이피모간체이스</option>
							  <option value="24">카카오뱅크</option>
							  <option value="25">케이뱅크</option>
							  <option value="26">유안타증권</option>
                        </select>
                    </div>
                  <div class="inputwrap">
                      <label>환불 계좌 번호</label>
                      <input type="text" name="bank_no" v-bind:value="[[userBank.account_number]]" maxlength="45" id="id_bank_no" style="
    padding-right: 267px;">
                  <div class="inputwrap">
                      <label>환불 계좌 예금주</label>
                      <input type="text" name="bank_owner" maxlength="35" id="id_bank_owner" v-bind:value="[[userBank.account_holder]]">
                  </div>
              </div></div></div></fieldset>
                  <div class="btnwrap">
                      <button type="submit" id="btn_submit" class="btn_submit" style="padding-top: 8px;padding-bottom: 8px;">
                      	저장하기</button>
                  </div>
            </form>
        </div>
    </div> 
</div>


<script type="text/javascript">
var myPageApp = new Vue ({
    delimiters: ["[[", "]]"],
    el: "#content",
    data: {
        userData: [],			// 유저정보
        userBank: [],			// 유저계좌정보
        birthY: [],
        birthM: [],
        birthD: []
        
    },
    created() {
        this.fetchUser()
        this.fetchUserBank()
    },
    methods: {
        fetchUser() {
            var v = this
            var strEmail = 'asdf@naver.com'
            
            axios.get('http://localhost:8081/footballMaster/my?email='+strEmail, config)
            .then(function(res) {
                v.userData = res.data
                console.log("v.userData")
                console.log(v.userData)
                
                // 유저 생년월일 정보 잘라서 저장
                var userBirthSplit = v.userData.birthday.split('-');
                console.log("userBirthSplit = " + userBirthSplit)
                v.birthY = userBirthSplit[0];
                v.birthM = userBirthSplit[1];
                v.birthD = userBirthSplit[2];
                
                console.log("v.birthY = " + v.birthY)
                console.log("v.birthM = " + v.birthM)
                console.log("v.birthD = " + v.birthD)
                
            })
            .catch(function(err) {})
        },
        fetchUserBank() {
            var v = this
            var strEmail = 'asdf@naver.com'
            
            axios.get('http://localhost:8081/footballMaster/my_bank?email='+strEmail, config)
            .then(function(res) {
                v.userBank = res.data
                console.log("v.userBank")
                console.log(v.userBank)
            })
            .catch(function(err) {})
        },
        
    }
});    
</script>

<script>
$(document).ready(function () {
	
	// -------------------------
	// user정보 가져와서 조회?..
	
	
	// 회원정보수정 저장하기 버튼 클릭이벤트
    modalSubmitBtn = document.getElementById("btn_submit");

 	// 회원정보수정 저장하기 버튼 클릭이벤트
    modalSubmitBtn.onclick = () => {
    	
    	// 입력값없을시 예외처리
/*     	if ($("#confirmTP").is(':checked') == false) {
            alert("환불규정 및 주의사항에 동의해주세요")
            return
}
*/

    	console.log("btn_submit!!!");
    	// 신청
    	
    	var frm = new FormData();
    	
    	// 이름 / 성별 / 휴대폰번호 / 생년월일 ------------ 환불계좌은행 / 환불계좌번호 / 환불계좌예금주
    	var frmName = document.getElementsByName("name")[0].value;
		// 성별 - 1:남자 / 2:여자    	
    	var frmSex = document.getElementsByName("sex")[0].selectedIndex;
    	var frmPhone = document.getElementsByName("phone")[0].value;
		
    	// 생년월일
    	var frmYear = document.getElementsByName("year")[0].value;
    	var frmMonth = document.getElementsByName("month")[0].selectedIndex;
    	var frmDay = document.getElementsByName("day")[0].selectedIndex;
    	
    	
    	var frmBank_cd = document.getElementsByName("bank_cd")[0].selectedIndex;
    	var frmBank_no = document.getElementsByName("bank_no")[0].value;
    	var frmBank_owner = document.getElementsByName("bank_owner")[0].value;
		
		
    	
		
    	// 폼데이터에 추가
    	frm.append("name", frmName);
    	frm.append("sex", frmSex);
    	frm.append("phone", frmPhone);
    	frm.append("year", frmYear);
    	frm.append("month", frmMonth);
    	frm.append("day", frmDay);
    	frm.append("phone", frmPhone);
    	
    	/*
    	frm.append("bank_cd", frmBank_cd);
    	frm.append("bank_no", frmBank_no);
    	frm.append("bank_owner", frmBank_owner);
    	*/
    	
    	let data = {
    			"name" : frmName,
    			"gender" : frmSex,
    			"phone_number" : frmPhone,
    			"birthday" : frmYear+"-"+frmMonth+"-"+frmDay
    			/*
    			"bank_cd" : frmBank_cd,
    			"bank_no" : frmBank_no,
    			"bank_owner" : frmBank_owner
    			*/
    		};
    	
    	var email = "asdf@naver.com";
    	
    	axios.put("http://localhost:8081/footballMaster/users",{
			'name' : frmName,
			'gender' : frmSex,
			'phone_number' : frmPhone,
			'birthday' : frmYear+"-"+frmMonth+"-"+frmDay
		})
    	.then(function(res){
    		console.log(res);
    		window.location.href = 'http://localhost:8080/footballMaster/mypage';
    	});
    	
/*     	console.log(frmName)
    	console.log(frmSex)
    	console.log(frmPhone)
    	console.log(frmBank_cd)
    	console.log(frmBank_no)
    	console.log(frmBank_owner) */
    	
    	
/*     	axios.post('', frm, {
    		headers: {
    			'Content-Type': 'multipart/form-data'
    		}
    	})
    	.then((response)=>{
    		// 응답처리
    	})
    	.catch((error)=>{
    		// 예외처리
    	}) 
    	
    	이미지, 영상

=> data: 파일자체, header: Content-Type": `multipart/form-data

 

json텍스트

=> data:  JSON.stringify(data), header: Content-Type": `application/json
    	
    	*
    	/
    	
    	
    };

	
	// 신청버튼 클릭 이벤트
/* 			function pressedApplyButton() {
		console.log("pressedApplyButton!!!");
		
	}; */
	};
});

</script>  
            <!-- footer -->
            <%@include file='includes/footer.jsp' %>