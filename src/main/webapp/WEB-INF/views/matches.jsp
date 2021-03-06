<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file='includes/header.jsp' %>
	
	 <script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script>
        <div id="app">
            <div class="navigation--container">
                <div class="navigation--wrapper">
                    <div class="navigation--item">
                        <a class="selected" href="/">소셜 매치</a>
                    </div>
                </div>
            </div>

            <!-- 메인 슬라이드 배너 -->
            <div class="carousel--container">
                <ul class="carousel--wrapper">
                    <li v-for="(mainBanner, index) in mainBanners" class="carousel--hero" :key="mainBanner.id">
                        <a :href="mainBanner.link">
                            <div class="carousel--img">
                                <img :src="mainBanner.image_m" class="carousel--img_m">
                                <img :src="mainBanner.image" class="carousel--img_pc">
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- 날짜 슬라이드 -->
            <div class="main--match--container">
                <div id="dateNav" class="sub-header">
                    <div class="tabWrap">
                        <div class="swipe-tabs">
                            <ul class="swipe-tab">
                                <li v-for="(day, index) in matchDays" :key="day.id" class="dateWrap slick-slide"
                                    :class="{ isActive: day.is_current == true, 'slick-active': day.is_current == true, 'slick-slide': day.is_current == true, isSat: day.yoil == '토', isSun: day.yoil == '일' }"
                                    @click="dateMatches(day.year+day.month+day.day, index)">
                                    <p class="">[[ day.day ]]</p>
                                    <span class="">[[ day.yoil ]]</span>
                                </li>
                            </ul>
                        </div>
                    </div> 
                </div>
                <div class="main__filter">
                    <div class="main__match-filter">
                        <ul>
                            <li><a id="A" @click="fetchMatches('A',$event)" :class="{'match-filter-item--active': selectRegion == 'A'}">서울</a></li>
                            <li><a id="B" @click="fetchMatches('B',$event)" :class="{'match-filter-item--active': selectRegion == 'B'}">경기</a></li>
                            <li><a id="C" @click="fetchMatches('C',$event)" :class="{'match-filter-item--active': selectRegion == 'C'}">인천</a></li>
                            <li><a id="D" @click="fetchMatches('D',$event)" :class="{'match-filter-item--active': selectRegion == 'D'}">대전</a></li>
                            <li><a id="E" @click="fetchMatches('E',$event)" :class="{'match-filter-item--active': selectRegion == 'E'}">대구</a></li>
                            <li><a id="F" @click="fetchMatches('F',$event)" :class="{'match-filter-item--active': selectRegion == 'F'}">부산</a></li>
                            <li><a id="G" @click="fetchMatches('G',$event)" :class="{'match-filter-item--active': selectRegion == 'G'}">울산</a></li>
                            <li><a id="H" @click="fetchMatches('H',$event)" :class="{'match-filter-item--active': selectRegion == 'H'}">광주</a></li>
                            <li><a id="I" @click="fetchMatches('I',$event)" :class="{'match-filter-item--active': selectRegion == 'I'}">충북</a></li>
                            <li><a id="J" @click="fetchMatches('J',$event)" :class="{'match-filter-item--active': selectRegion == 'J'}">경북</a></li>
                            <li><a id="K" @click="fetchMatches('K',$event)" :class="{'match-filter-item--active': selectRegion == 'K'}">전북</a></li>
                            <li><a id="L" @click="fetchMatches('L',$event)" :class="{'match-filter-item--active': selectRegion == 'l'}">충남</a></li>
                            <li><a id="M" @click="fetchMatches('M',$event)" :class="{'match-filter-item--active': selectRegion == 'M'}">경남</a></li>
                        </ul>
<!--                         <ul v-if="runBounce">
                    
                    <li v-for="region in currentRegions">
                        <a @click="fetchMatches(region.id)" :class="{'match-filter-item--active': region.id == selectRegion}">[[ region.name ]]</a>
                    </li>
                </ul> -->
                    </div>
                    <div class="main--match--filter">
                        <div class="filter--results">
                            <p v-show="currentMatchesNum != 0"><strong>[[ currentMatchesNum ]]</strong>개의 매치</p>
                        </div>
                        <div class="filter--wrapper" id="modalBtn">
                            <!--<button type="button" id="modalBtn" class="btn btn-primary">매치</button>-->
                            <!-- <span @click="showFilterMatch = !showFilterMatch" v-if="noFilters"> -->
                            <span>모든 매치</span>
                            <!---->
                        </div>
                    </div>
                </div>
                <div class="list--match-schedule--container">
                    <ul>
                        <!---->
                        <li class="list--match-schedule--item" v-for="(match, index) in currentMatches" v-show="!isLoading" v-if="match.match_date < now" :class="{'hide': match.id == 53057}">
                                <a @click="goToMatch(match.id)">
                                <div class="list--match-schedule__time">
                                    <p>[[ match.match_date ]] : 00</p>
                                </div>
                                
                                <div class="list--match-schedule__info">
                                    <!---->
                                    <!---->
                                    <div class="match-list__title" onclick="location.href='http://localhost:8080/footballMaster/matches/detail'">
                                        <h3>[[ match.name ]]</h3>
                                        <!---->
                                    </div>
                                    <div class="label--match-option">
                                    	<span v-if="match.gender_rule == '남성'" class="match--option isMen">남성</span>
                                    	<span v-else-if="match.gender_rule == '혼성' " class="match--option isMix">남녀모두</span>
                                    	<span v-else-if="match.gender_rule == '여성'" class="match--option isWomen">여성</span>
                                        <span v-if="match.man_to_man_rule == '5:5'">5vs5</span>
                                    	<span v-else-if="match.man_to_man_rule == '6:6'">6vs6</span>
                                    	<span v-else-if="match.man_to_man_rule == '7:7'">7vs7</span>
                                    	<span v-else-if="match.man_to_man_rule == '4:4'">4vs4</span>
                                        <span v-if="match.level == '고급 (Lv 5)'" class="match--option is_every">고급 (Lv 5)</span>
	                                    <span v-else-if="match.level == '초급 (Lv 1~2)'" class="match--option is_beginner">초급 (Lv 1~2)</span>
	                                    <span v-else-if="match.level == '중급 (Lv 3~5)'" class="match--option is_mid">중급 (Lv 3~5)</span>
                                        <!---->
                                        <!---->
                                        <!---->
                                    </div>
                                </div>
                                <div class="list--match-schedule__status">
                                    <div class="match-status isFull" v-if="match.applicantCount == match.max_people">
		                                <p>마감</p>
		                            </div>
 		                            <div class="match-status isHurry" v-else-if="(match.applicantCount >= (match.max_people/2))">
		                                <p>마감임박!</p>
		                            </div>
		                            <div class="match-status isOpen" v-else-if="(match.applicantCount <= (match.max_people/2)) && isSelected[index] == 'false'">
		                                <p>신청가능</p>
		                            </div>
		                            <div class="match-status isOpen" v-else-if="isSelected[index] == 'true'">
		                                <p>신청완료</p>
		                            </div>
                                </div>
                            </a>
                            <!---->
                            <!---->
                            <!---->
                            <!---->
                            <!---->
                        </li>
                        <div class="list--match-schedule__noItem" v-if="currentMatchesNum == 0">
		                    <h3>등록된 매치가 없습니다</h3>
		                    <p>다른 날짜 혹은 다른 검색 조건을 적용해보세요 :)</p>
		                </div>
		                </ul>
		                </div>
		               </div>
		               
		                   <div class="list--bottom--banner--container">
						    </div>
		                
        <!-- 모달 팝업 -->
        <div class="modal" id="myModal" tabindex="-1" role="dialog" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal--wrapper isFull">
                        <div class="modal--header">
                            <p class="modal--title">카테고리</p>
                            <p class="modal--close" id="modalClose">취소</p>
                        </div>
                        <div class="modal-body">
                            <div class="filter--region">
                                <div class="filter--region--item">
                                    <ul class="filter--list">
                                        <h4>성별</h4>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="sex_m" value="M" v-model="checkedSex">
                                            <label for="sex_m" class="checkLabel">남성</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="sex_w" value="F" v-model="checkedSex">
                                            <label for="sex_w" class="checkLabel">여성</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="sex_u" value="H" v-model="checkedSex">
                                            <label for="sex_u" class="checkLabel">남녀 모두</label>
                                        </li>
                                    </ul>

                                    <ul class="filter--list">
                                        <h4>레벨</h4>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="level_beginner"
                                                value="L" v-model="checkedLevel">
                                            <label for="level_beginner" class="checkLabel">초급 (Lv 1~2)</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="level_mid" value="M" v-model="checkedLevel">
                                            <label for="level_mid" class="checkLabel">중급 (Lv 3~5)</label>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="filterCheck grey" id="level_every" value="H" v-model="checkedLevel">
                                            <label for="level_every" class="checkLabel">일반 (Lv 1~5)</label>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="modal--bottom">
                            <div class="modal--button">
                                <span class="btn full yellow lg" id="saveBtn" @click="fetchMatchesFilter('saveBtn',$event)" data-dismiss="modal">적용하기</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

        <script src="https://unpkg.com/vue/dist/vue.js"></script>
        <script src="https://unpkg.com/vue-cookies@1.7.0/vue-cookies.js"></script>

        <script type="text/javascript">
        	$.noConflict();
        	
        	var currentDate = '';
            var is_first = false;
            currentDate = moment().format('YYYYMMDD');
            if (!currentDate) {
                if (getCookie('currentDate') != null) {
                    currentDate = getCookie('currentDate')
                    delete_cookie('currentDate')
                } else {
                    currentDate = moment().format('YYYYMMDD')
                }
                is_first = true;
         //        var filters = "?schedule="+currentDate+"&sex=1,0,-1&level=0,1,2&type=match,cup"
        	// 	location.href = "/f/"+filters
            }

            // vue 시작?
            var home = new Vue({
                delimiters: ['[[', ']]'],
                el: '#app',
                data: {
                    checkedParam: [],
                	currentDate: '',  //현재 날짜
                	checkedNames: [],
               		
                	// 성별
                	checkedSex: [],
                	selectSex: [],
                	// 레벨
                	checkedLevel : [],
                	selectLevel: [],
                	
                	checkedType: [],
                    checkedRegion: [],
                    matchDays: [],
                    currentMatches: [],
                    currentMatchesNum: [],
                    
                    // 내가 신청한 매치 목록 - 신청완료 신청가능을 분별하기 위해 새로 만듦
                    selectMatchList: [],
                    isSelected: [],
                    
                    isLoading: false,
                    isFullLoading: false,
                    now: false,
                    mainBanners: [],    // 메인 슬라이드 배너
                    allRegions: [],
                    selectRegion: null,
                    noFilters: false, // 메인 슬라이드 배너 관련 필요..
                    runBounce: true,
                    allCheck: false
                    //mainListBanners: [],
                },
                created: function () {
                    this.currentDate = currentDate
                    for (var i = 0; i < 14; i++) {
                        var addDate = moment().add(i, 'days');
                        var year = addDate.format('YYYY')
                        var month = addDate.format('MM')
                        var day = addDate.format('D')
                        var weeks = ['일', '월', '화', '수', '목', '금', '토']
                        var yoil = weeks[addDate.weekday()]
                        var is_current = false
                        if (this.currentDate == addDate.format('YYYYMMDD')) { is_current = true }
                        this.matchDays.push({
                            year: year,
                            month: month,
                            day: day,
                            yoil: yoil,
                            is_current: is_current
                        })
                    }
                    
                    if(''.length != 0) {
                        this.checkedSex = ''.split(',')
                    }
                    if(''.length != 0) {
                        this.checkedLevel = ''.split(',')
                    }
                    if(''.length != 0) {
                        this.checkedType = ''.split(',')
                    }
                    if(''.length != 0) {
                        this.selectRegion = ''.split(',')
                    }

                    this.fetchMatches()
                    //this.fetchRegion() // 지역 리스트 가져오기 (지금 사용하지 않을 거임)
                    this.fetchDateSwipe()
                    this.fetchMainBanner()
                    
                    this.isFullLoading = true;
            
		            if(this.checkedSex.length == 0 && this.checkedLevel.length == 0 && this.checkedType.length == 0 ) {
		                this.noFilters = true
		            }
            
                },
                methods: {
                    // 날짜 슬라이드 초기값 설정
                    fetchDateSwipe() {
                        var currentDateSlide = this.matchDays.findIndex(i => i.is_current == true)
                        $(document).ready(function () {
                            $('.swipe-tab').slick({
                                dots: false,
                                infinite: false,
                                arrows: true,
                                speed: 300,
                                slidesToShow: 7,
                                slidesToScroll: 7,
                                swipeToSlide: true,
                                // focusOnSelect: true,
                                initialSlide: currentDateSlide,
                                responsive: [
                                    {
                                        breakpoint: 1024,
                                        settings: {
                                            arrows: false
                                        }
                                    }
                                ]
                            });
                        });
                    },
                    
                    // 메인 슬라이드 배너 가져오기
                    fetchMainBanner() {
                        var v = this
                        axios.get('http://localhost:8080/footballMaster/banner', config)
                            .then(function (res) {
                                console.log(res.data)
                                v.mainBanners = res.data
                                v.swipeMainBanner()
                                console.log(v.mainBanners.length)
                                console.log(v.mainBanners)
                            })
                            .catch(function (err) { })
                    },
                    swipeMainBanner() {
                        $(document).ready(function () {
                            $('.carousel--wrapper').slick({
                                dots: true,
                                infinite: true,
                                autoplay: true,
                                autoplaySpeed: 2000,
                                arrows: false,
                                customPaging: function (slider, i) {
                                    var thumb = $(slider.$slides[i]).data();
                                    return '<div class="dots-inner"><a onclick="showBanners()"><strong>' + (i + 1) + ' </strong> |' + slider.$slides.length + '</a></div>';
                                },
                                responsive: [
                                    {
                                        breakpoint: 768,
                                        settings: {
                                            arrows: false,
                                            centerMode: true,
                                            centerPadding: '20px',
                                            slidesToShow: 1
                                        }
                                    },
                                    {
                                        breakpoint: 480,
                                        settings: {
                                            arrows: false,
                                            centerMode: true,
                                            centerPadding: '10px',
                                            slidesToShow: 1
                                        }
                                    }
                                ]
                            });
                        });
                    },
                    
                    // 1번째로 실행됨 - 조건에 따른 매치 조회
                    fetchMatches(regionId, event) {
                    	
                    	//this.fetchMyMatches()
                    	
                    	// 첫 로드 때 지역 기본값은 서울로 지정... 그 다음부터는 클릭한 곳으로..
                    	console.log(regionId);
                    	var selectReg = "";

                    	// 1. 선택한 지역
                    	if(event == null){
                    		selectReg = "A"
                    		this.selectRegion = "A"
                    	}else{
	                    	var targetId = event.target.id;
                    		selectReg = targetId
                    		this.selectRegion = targetId
                    	}
                    	console.log("선택한 지역 ["+selectReg+"]")
						
                    	//checkedParam
                    	
                    	// 2. 카테고리 & 레벨
                    	// 값 있으면 checkedParam에 넣기.
                    	// 현재 카테고리 체크된 값이 없으면 임의의 값 지정해주기
						
                    	if(Array.isArray(this.selectSex) && this.selectSex.length === 0){
                    		console.log("성별 - 아무값도 없어요")
                    		this.selectSex = "MFH";
                    	}else{
                    		if(this.checkedSex.length !== 0){
	                    		this.selectSex = this.checkedSex;
                    		}
/*                     		for(var i = 0; i<this.checkedSex; i++){
	                    		this.selectSex += this.checkedSex(i);
                    		} */
                    	}
                    	
                    	if(Array.isArray(this.selectLevel) && this.selectLevel.length === 0){
                    		console.log("레벨 - 아무값도 없어요")
                    		this.selectLevel = "LMH";
                    	}else{
                    		if(this.checkedLevel.length !== 0){
	                    		this.selectLevel = this.checkedLevel;
                    		}
                    		/* for(var i = 0; i<this.checkedLevel; i++){
                    			this.selectLevel += this.checkedLevel(i);
                    		} */
                    	}
                    	
                    	
                    	console.log(this.selectSex)
                    	console.log(this.selectLevel)
                    	console.log(this.currentDate)
                    	console.log(this.selectRegion)
                    	
                    	var v = this;
                        v.isLoading = true
                        v.now = 25
                        
        				axios.all([
							axios.post('http://localhost:8081/footballMaster/matches',{
        						'match_date' : this.currentDate,
        						'gender_rule' : this.selectSex,
        						'level' : this.selectLevel,
        						'region' : this.selectRegion
    						}),
							axios.get('http://localhost:8081/footballMaster/my_matches')
						])
						.then(axios.spread((res1, res2) => {
							// res1
							console.log("---1---")
        					console.log(res1.data);
                            v.isLoading = false
                            v.fetchMainBanner()
                            v.currentMatches = res1.data
                            
                            console.log("---2---")
                            console.log(v.currentMatches)
                            
                            
                            var a = 0
                            for(i=0; i < v.currentMatches.length; i++){
                            	if(v.currentMatches[i].match_date < v.now){
                            		a++
                            		console.log("a++:"+a)
                            	}
                            }
                            v.currentMatchesNum = a
							
                            // res2
                            console.log("--fetchMyMatches--")
 							this.selectMatchList = res2.data;
                            console.log(v.selectMatchList)
                            
                            // 공간을 만들어서...
                            // 판별할 방법이없어서 true false로 분별하도록.
                            // 1. currentMatches를 selectMatchList와 비교해서. 맞으면 true 아니면 false
                            for(i=0; i<v.currentMatches.length; i++){
                            	this.isSelected[i] = 'false';
                            	for(j=0; j<v.selectMatchList.length; j++){
                            		if(v.currentMatches[i].id == v.selectMatchList[j].id){
                            			this.isSelected[i] = 'true';
                            			console.log(v.currentMatches[i].id + "==" + v.selectMatchList[j].id)
                            		}
                            	}
                            }
                            

                            v.runBounce = true
						
						}))
						.catch(function() {
							console.log("---유저조회 실패---")
						})

 
                    },
                    //-- 카테고리 필터 적용 이벤트.
                    fetchMatchesFilter(regionId,event){
                    	console.log("btn clicked !!!!")
                    	var target = this.selectRegion
                    	
                    	// 선택된 카테고리 정보 담아둘 배열
                    	// modal 카테고리, 체크된 정보 가져오기!
					                    	
                    	

                    	// 첫 로드 때 지역 기본값은 서울로 지정... 그 다음부터는 클릭한 곳으로..
                    	console.log("regionid 찍히는지")
                    	var selectReg = "";

                    	// 1. 선택한 지역
                    	if(target == null){
                    		selectReg = "A"
                    	}else{
	                    	//var targetId = event.target.id;
                    		selectReg = this.selectRegion
                    	}
                    	console.log("선택한 지역 ["+selectReg+"]")
						
                    	// 2. 카테고리 & 레벨
                    	// 값 있으면 checkedParam에 넣기.
                    	// 현재 카테고리 체크된 값이 없으면 임의의 값 지정해주기
						
                    	if(Array.isArray(this.selectSex) && this.selectSex.length === 0){
                    		console.log("성별 - 아무값도 없어요")
                    		this.selectSex = "MFH";
                    	}else{
                    		this.selectSex = this.checkedSex+"";
/*                     		for(var i = 0; i<this.checkedSex; i++){
	                    		this.selectSex += this.checkedSex(i);
                    		} */
                    	}
                    	
                    	if(Array.isArray(this.selectLevel) && this.selectLevel.length === 0){
                    		console.log("레벨 - 아무값도 없어요")
                    		this.selectLevel = "LMH";
                    	}else{
                    		this.selectLevel = this.checkedLevel+"";
                    		console.log("sl : " +this.selectLevel)
                    		/* for(var i = 0; i<this.checkedLevel; i++){
                    			this.selectLevel += this.checkedLevel(i);
                    		} */
                    	}
                    	
                    	
                    	console.log(this.selectSex)
                    	console.log(this.selectLevel)
                    	console.log(this.currentDate)
                    	console.log(this.selectRegion)
                    	
                    	
                    	var v = this;
                        v.isLoading = true
                        v.now = 25
                        
                        
                        // parameter 보내려면 post방식을 get방식으로 달아서 보낼 수 없음
                        // 필요한거 1.성별-레벨 /2.지역 /3.날짜
						//var paramCate = ["Male","Female","Mix","Low","Middle","High"]
                        
                        axios.post('http://localhost:8081/footballMaster/matches',{
    						'match_date' : this.currentDate,
    						'gender_rule' : this.selectSex,
    						'level' : this.selectLevel,
    						'region' : this.selectRegion
						})
						.then(function(res) {
							console.log("---1---")
							console.log(res.data);
		                    v.isLoading = false
		                    v.fetchMainBanner()
		                    v.currentMatches = res.data
		                    
		                    console.log("---2---")
		                    console.log(v.currentMatches)
		                    
		                    var a = 0
		                    for(i=0; i < v.currentMatches.length; i++){
		                    	console.log("["+i+"]");
		                    	console.log(v.currentMatches[i]);
		                    	console.log("[2 : " + v.currentMatches[i].match_date+"]");
		                    	if(v.currentMatches[i].match_date < v.now){
		                    		a++
		                    		console.log("a++:"+a)
		                    	}
		                    }
		                    v.currentMatchesNum = a
		                    v.runBounce = true
		                  	$(".modal").css("display", "none");
						})
						.catch(function() {
							
						})
                 
                    
                    },
                    
                    dateMatches: function(getDate, index) {
						this.currentDate = getDate
						this.fetchMatches()
						var beforeCurrent = this.matchDays.findIndex(i=>i.is_current == true)

		                this.matchDays[beforeCurrent].is_current = false
		                this.matchDays[index].is_current = true
					},
                    goToMatch(matchId){
                    	// goToMatch -> 매치 리스트에서  해당하는 매치의 상세페이지로 이동할 url 만들어주는 함수
                    	console.log("goToMatch Clicked!!!")
                    	console.log(matchId)
                    	document.cookie = "currentDate="+this.currentDate
                    	var url = "/footballMaster/matches/";
                    	document.location.href = url+matchId
                    },
                    fetchMyMatches: function() {
                    	 axios.get('http://localhost:8081/footballMaster/my_matches')
 						.then(function(res) {
 							console.log("--fetchMyMatches--")
 							console.log(res.data);
 							this.selectMatchList = res.data

 							console.log(this.selectMatchList)
 							console.log("match_date, id, gender_rule, level, status")
 						})
 						.catch(function() {
 							
 						})
					}

                },
                watch: {

                },
                computed: {

                }

            });

        </script>

        <script type="text/javascript">
     		$.noConflict();
             $(document).ready(function () {
				var paramArr1 = "&param=";
				var paramArea1 = "&area=";
				var paramDay1 = "&day=";
				// test - json 쿼리스트링 에러가 있는듯
				var paramArr2 = ['Male','Female','Mix','Low','Middle','High'];
				var paramArea2 = "A";
				var paramDay2 = "20210618";
				
				var queryStr = paramArr1+paramArr2+paramArea1+paramArea2+paramDay1+paramDay2;
				
				console.log(queryStr);
				
				//---test
				
                //모달창
                modal = document.getElementById("myModal");
                // 1. 모달 열기 버튼
                modalOpenBtn = document.getElementById("modalBtn");
                // 2. 모달 닫기 버튼
                modalCloseBtn = document.getElementById("modalClose");
                // 3. 모달안 적용하기 버튼
                modalSubmitBtn = document.getElementById("saveBtn");

                // 1. 모달 열기
                modalOpenBtn.onclick = () => {
                    modal.style.display = "flex";
                    $(".modal").css("max-width", "none");
                };

                // 2. 모달 닫기
                modalCloseBtn.onclick = () => {
                    modal.style.display = "none";
                    //$(".modal").css("display", "none");
                };

                // 3. 모달안 적용하기 버튼
                /*
                modalSubmitBtn.onclick = (e) => {
                    // 1.모달바디 가져오기
                    // 2.가져온 것들 중 input[checkbox] 체크된 내용 가져오기
                    // 3. 보내서 확인하기

                    var checkList = [];
                    // var modal = $(".modal-body");
                    // 1. 클래스 이름이 filterCheck grey이고, input checkbox 인 애들 찾기
                    $('input:checkbox[class="filterCheck grey"]').each(function () {
                        // 체크된 true 의 id를 가져옴
                        if (this.checked == true) {
                            //console.log(this.id);
                            //console.log(this.value);
                            checkList.push(this.id);
                        }
                    });
                    // 체크된 저장리스트 출력
                    console.log(checkList);
					
                    /*
                     $.ajax({
                        url: "http://localhost:8081/footballMaster/matches?"+queryStr,
                        type:"GET",
                  	  	dataType: "json",
                  	  	jsonp : "callback",
                        success: function(data) {
                      	// data = email에 해당하는 유저정보
                          console.log(data);
                        
                        },
                        error:function(request, status, error){ console.log("실패");console.log(request)
                        }
                      });
                     
                     //-------
                     	
                     	console.log("modalSubmitBtn clicked!!! regionid 찍히는지")
                     	console.log(v.selectReg);
                     
                     var selReg = v.selectReg;
                     
                     	if(selReg == undefined){
                     		selectReg = "A"
                     	}
                         
                     	console.log("선택한 지역 ["+selectReg+"]")
                     	var v = this;
                         v.isLoading = true
                         v.now = 25
                         
                         
                         // parameter 보내려면 post방식을 get방식으로 달아서 보낼 수 없음
                         // 필요한거 1.성별-레벨 /2.지역 /3.날짜
 						var paramCate = ["Male","Female","Mix","Low","Middle","High"]
                         var paramArea = "A"
                         
         				var paramArr1 = "&param=";
         				var paramArea1 = "&area=";
         				var paramDay1 = "&day=";
         				// test - json 쿼리스트링 에러가 있는듯
         				var paramArr2 = ['Male','Female','Mix','Low','Middle','High'];
         				var paramArea2 = selectReg
         				var paramDay2 = this.currentDate
         				
         				var queryStr = paramArr1+paramArr2+paramArea1+paramArea2+paramDay1+paramDay2;
                         
         				axios.get('http://localhost:8081/footballMaster/matches?'+queryStr)
         				.then(function(res) {
         					console.log("---1---")
         					console.log(res.data);
                             v.isLoading = false
                             v.fetchMainBanner()
                             v.currentMatches = res.data
                             
                             console.log("---2---")
                             console.log(v.currentMatches)
                             
                             var a = 0
                             for(i=0; i < v.currentMatches.length; i++){
                             	console.log("["+i+"]");
                             	console.log(v.currentMatches[i]);
                             	console.log("[2 : " + v.currentMatches[i].match_date+"]");
                             	if(v.currentMatches[i].match_date < v.now){
                             		a++
                             		console.log("a++:"+a)
                             	}
                             }
                             v.currentMatchesNum = a
                             v.runBounce = true
 						})
 						.catch(function() {
 							
 						})
  
                     };
                     
                     */
                    
                });

                // login modal 열기
                loginModalOpen = document.getElementById("modalLoginOpen");
                // 1. 모달 열기 버튼
                loginModalOpenBtn = document.getElementById("loginModalBtn");

                // 1. 모달 열기
                loginModalOpenBtn.onclick = () => {
                    console.log("loginmodal clicked");
                    //loginModalOpen.style.display = "none";
                    $("#modalLoginOpen").css("display", "flex");
                    $("#modalLoginOpen").css("max-width", "none");
                    // $(".modal").css("max-width", "none");
                };


        </script>

        <!-- footer -->
        <%@include file='includes/footer.jsp' %>