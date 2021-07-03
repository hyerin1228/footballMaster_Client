<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file='includes/header.jsp' %>
    
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script>
    <style>
            /* 설정 */
/* my page start*/

        /* body hero */
/*MY-PAGE*/
#myPage {
	background-color: #fafafa;;
}
.my--hero {
	padding: 35px 20px;
	background-color: #fff;
	margin-bottom: 20px;
}
.my--hero--hi {
	margin-bottom: 30px;
}
.my--hero--hi h2 {
	font-weight: 300;
}
.my--hero--hi h2 strong {
	font-weight: 700;
}
.my-profile__level span {
	color: white;
	background-color: #FF5D5D;
	border-radius: 20px;
	font-size: 12px;
	padding: 2px 5px;
}
.my--hero--cash {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid #ddd;
	padding-bottom: 20px;
	margin-bottom: 20px;
}
.my--hero--cash p {
	font-size: 10px;
	color: #999;
	margin-bottom: 5px;
}
.my--hero--cash h3 {
	font-size: 27px;
	font-weight: 400;
}
.my--hero--status {
	display: flex;
	justify-content: space-between;
}
.my--hero--status .my--fair-point > div {
	display: flex;
	align-items: center;
	cursor: pointer;
}
.my--hero--status .my--fair-point > div img {
	margin-right: 5px;
}
.my--hero--status .my--fair-point span {
	font-size: 10px;
	color: #999;
	word-break: keep-all;
	display: block;
	margin-top: 10px;
}
.my--hero--status .my--fair-point h3 {
	border-bottom: 1px dashed #999;

}
.my--hero--status h3 {
	font-weight: 400;
}
.my--hero--status .my--team > div {
	display: flex;
	align-items: center;
	position: relative;
	cursor: pointer;
}
.my--hero--status .my--team .team--list--dropdown {
	position: absolute;
	width: 100%;
	top: 40px;
	background-color: white;
	box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.1);
	padding: 20px;
	border-radius: 20px;
}
.my--hero--status .my--team .team--list--dropdown li {
	padding: 5px 0;
}
.my--hero--status .my--team > div a {
	display: flex;
	align-items: center;
}
.my--hero--status .my--team > div h3 {
	font-size: 16px;
}
.my--hero--status > div {
	width: 50%;
}
.my--hero--status > div p {
	font-size: 10px;
	color: #999;
	margin-bottom: 5px;
}

.my--history {

}
.my--history ul li {

}
.my--history ul li a {
	border-bottom: 1px solid #ddd;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px 0;
}
.my--history ul li:first-child a {
	padding-top: 0;
}
.my--history ul li a > div {

}
.my--history--schedule-info {

}
.my--history--schedule-info .mhs-date {
	font-size: 12px;
}
.my--history--schedule-info .mhs-title {
	padding-top: 3px;
	font-size: 14px;
}
.my--history--schedule-info span {
	font-size: 10px;
	color: #999;
}
.my--history--schedule-info span:after {
	content: '·';
	margin-left: 3px;
}
.my--history--schedule-info span:last-child:after {
	content: '';
}
.my--history--schedule-info .mhs-unfair:before {
	content: '';
	display: inline-block;
	width: 6px;
	height: 10px;
	border-radius: 2px;
	background-color: #FFC645;
	margin-right: 3px;;
}
.my--history--schedule-status {
	width: 20%;
	text-align: center;
}
.my--history--schedule-status p {
	font-size: 12px;
}
.my--history--schedule-status .mhs-status {
	font-size: 12px;
	padding: 5px 8px;
	border-radius: 4px;
	width: 100%;
	text-align: center;
	display: block;
}
.my--history--schedule-status .mhs-status.confirm {
	border: 1px solid #3534A5;
	color: #3534A5;
}
.my--history--schedule-status .mhs-status.cancel {
	text-decoration: line-through;
	color: #999;
}
.my--history--schedule-status .mhs-status.ready {
	border: 1px solid #ffc645;
	color: #ffc645;
	margin: 20px 0 10px 0;
}
.my--history--schedule-status .mhs-status.end {
	background-color: #eee;
	color: #999;
}
.my--menu ul li a {
	padding: 10px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.my--menu ul li a img {
	width: 24px;
	margin-right: 5px;
}
.my--menu ul li a .my--menu--title {
	display: flex;
	align-items: center;
}
.my--menu ul li a .my--menu--info p {
	font-size: 12px;
	color: #009E5C;
}
@media (min-width: 1024px) {
	.my--hero {
		max-width: 1024px;
		margin: 0 auto;
		padding: 70px;
	}
	.my--history--schedule-status {
		width: 10%;
	}
}

.my--hero--scout {
	background-color: #FFFAEC;
	border-radius: 30px;
}
.my--hero--scout .my--scout--title {
	display: flex;
	justify-content: space-between;
	align-items: center;
	cursor: pointer;
	padding: 30px 30px 0 30px;
}
.my--hero--scout .my--scout--title h3 {
	font-size: 20px;
	font-weight: 400;
}
.my--scout--title .my--scout--title-text {
	margin-right: 20px;
}
.my--scout--title .my--scout--title-text p {
	word-break: keep-all;
}
.my--scout--title .my--scout--title-text span {
	font-size: 14px;
	margin-top: 10px;
	display: inline-block;
	padding: 8px 15px;
	border-radius: 8px;
	color: white;
	background-color: #21A064;
	cursor: pointer;
}
.my--hero--scout .my--scout--title img {
	width: 36px;
}
.my--hero--scout .my--scout--body {
	padding: 30px;
}
.my--hero--scout .my--scout--body .my--scout--detail {
	margin
}
.my--hero--scout h3 {
	font-size: 16px;
}
.my--hero--scout p {
	font-size: 14px;
	line-height: 20px;
	letter-spacing: -0.2px;
	word-break: keep-all;
}
.my--scout--footer {
	padding: 20px 30px;
	background-color: #FEF1CF;
	border-radius: 0 0 30px 30px;
	text-align: center;
	color: #FBAC12;
}
.my--scout--footer .btn-wrapper {
	display: flex;
	justify-content: space-between;
}
.my--scout--footer .btn-wrapper span {
	width: 50%;
	cursor: pointer;
}
.my--scout--code {
	margin: 30px 0;
	display: flex;
	align-items: center;
}
.my--scout--code h3 {
	padding: 0 15px;
	background-color: #333;
	color: white;
	border-radius: 8px;
	display: block;
	width: 60%;
	font-size: 20px;
	font-weight: 400;
	line-height: 40px;
}
.my--scout--code span {
	font-size: 10px;
	border-radius: 8px;
	width: 20%;
	border: 1px solid #333;
	text-align: center;
	margin-left: 5px;
	line-height: 40px;
	cursor: pointer;
}
.my--scout--code .my--code {
	background-color: #ddd;;
}
.my--scout--stats ul {
	display: flex;
	margin-top: 20px;
}
.my--scout--stats ul li {
	width: 33.333%;
}
.my--scout--stats ul li p {
	font-size: 10px;
}
.scout-code__wrapper {
	text-align: center;
	margin-top: 40px;
}
.scout-code__wrapper p {
	font-size: 12px;
}
.scout-code__edit-btn {
	cursor: pointer;
}
.scout-code {
}
.scout-code h2 {
	border-bottom: 4px solid #FFC645;
	font-size: 32px;
	margin-bottom: 10px;
	padding: 0 10px;
}
.scout-code span {
	font-size: 12px;
	width: 100%;
}
.help-list__wrapper {
	margin-top: 20px;
	font-size: 14px;
	color: #999;
}
.help-list__wrapper ul li {
	display: flex;
	align-items: center;
	padding: 10px;
}
.help-list__wrapper ul li img {
	margin-right: 10px;
	width: 24px;
}

/*MANAGER-MATCH-DETAILS*/
.mng--report--wrap {
	padding-bottom: 30px;
	border-bottom: 1px solid #dddddd;
}
.mng--report--title {
	display: flex; 
	justify-content: center; 
	padding-bottom: 30px;
}
.mng--report--title h2 {
	font-weight: 300;
}
.mng--report--title h4 {
	font-weight: 400;
}
.mng--test--wrap {
	padding-bottom: 30px;
	border-bottom: 1px solid #dddddd;
}
.mng--test--title {
	display: flex; 
	justify-content: center; 
	padding-bottom: 30px;
}
.mng--test--title h2 {
	font-weight: 300;
}
.mng--test--subtitle {
	display: flex; 
	justify-content: center; 
	margin: 40px auto;
}
.mng--test--result {
	display: flex; 
	justify-content: space-around;
	margin-bottom: 20px;
}
.mng--test--result .select {
	width: 30%;
	text-align: center; 
	padding: 15px; 
	border-radius: 100px; 
	background-color: #3534A5; 
	color: #f4f4f4;
}
.mng--test--result .non-select {
	width: 30%;
	text-align: center; 
	padding: 15px; 
	border-radius: 100px; 
	background-color: #eeeeee;
}
.mng--test--result .image {
	font-size: 50px;
}
.mng--test--result .desc {
	font-size: 12px;
}
.mng--test--reason {
	margin: 20px auto;
}
.mng--test--reason ul {
	display: flex; 
	flex-wrap: wrap; 
	font-size: 13px; 
	flex-direction: row;
}
.mng--test--reason li {
	display: inline-flex; 
	margin-bottom: 0.8rem;
}
.test--reason--select {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #eeeeee; 
	border-radius: 3rem;
}
.test--reason--select--blue {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #3540A5; 
	color: white;
	border-radius: 3rem;
}
.mng--report--cheerup--wrapper {
	padding-bottom: 30px; 
	margin: 30px auto; 
	display: flex; 
	justify-content: center; 
	border-bottom: 1px solid #dddddd;
}
.mng--report--cheerup--wrapper .content {
	font-size: 20px; 
	text-align: center; 
	font-weight: 300;
}
.mng--report--remark-wrapper {

}
.mng--report--remark-wrapper .title {
	text-align: center; 
	margin-bottom: 10px;
}
.mng--report--remark-wrapper .content-box {
	display: flex; 
	justify-content: space-around;
}
.mng--report--remark-wrapper .content-box .non-select {
	width: 40%; 
	padding: 10px;
	background-color: #eeeeee;
	text-align: center;
	border-radius: 20px;
}
.mng--report--remark-wrapper .content-box .select {
	width: 40%; 
	padding: 10px; 
	background-color: #3534A5; 
	color: #f4f4f4; 
	text-align: center; 
	border-radius: 20px;
}

.mng--notis--wrapper {
	padding: 20px 40px; 
	background-color: #f4f4f4;
}
.mng--notis--wrapper pre {
	text-align: center; 
	word-break: keep-all; 
	color: #009e5c; 
	font-size: 14px;
}
.mng--report--btn {
	position: fixed;
	bottom: 0;
	width: 100%;
	background-color: #3534A5;
	padding: 20px 20px;
	color: white;
	text-align: center;
	z-index: 2;
	cursor: pointer;
}
.mng--apply--btn {
	position: fixed;
	bottom: 0;
	width: 100%;
	background-color: #3534A5;
	padding: 20px 20px;
	color: white;
	text-align: center;
	z-index: 2;
	cursor: pointer;
}
.mng--match--detail {
	padding: 20px;
}
.mng--match--detail .mng--match--info {
	font-size: 18px;
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #ddd;
}
.mng--match--detail .mng--match--info .mng--stadium--info span {
	font-size: 12px;
	color: #999;
}
.mng--match--detail .mng--match--info .mng--stadium--info span:after {
	content: '·';
}
.mng--match--detail .mng--match--info .mng--stadium--info span:last-child:after {
	content: none;
} 
.mng--match--detail .mng--match--tool {
	margin: 20px 0;
}
.mng--match--detail .mng--match--tool ul {
	display: flex;
	justify-content: space-between;
}
.mng--match--detail .mng--match--tool ul li {
	width: 20%;
}
.mng--match--detail .mng--match--tool ul li a {
	text-align: center;
	margin: 0 auto;
	display: block;
}
.mng--match--detail .mng--match--tool ul li a img {
	width: 32px;
	margin-bottom: 5px;
}
.mng--match--detail .mng--match--tool ul li a p {
	font-size: 11px;
	word-break: keep-all;
}
.mng--match--detail .mng--match--notice {
	background-color: #eee;
	border-radius: 10px;
	padding: 20px;
	margin-top: 20px;
}
.mng--match--detail .mng--match--notice h4 {
	font-size: 14px;
}
.mng--match--detail .mng--match--notice pre {
	font-size: 14px;
	margin-top: 20px;
}
.mng--plist_before {
	margin-bottom: 80px;
}
.mng--plist_before .mng--team--container {
	display: flex;
}
.mng--plist_before .mng--team--container .mng--team {
	flex-grow: 1;
}
.mng--plist_before .mng--team--container .mng--team .team-color {
	padding: 10px 20px;
}
.mng--team ul li {
	position: relative;
	align-items: center;
}
.mng--team ul li .player--num {
	position: absolute;
	width: 18px;
	height: 18px;
	border-radius: 18px;
	display: block;
	border: 1px solid #ddd;
	top: 0;
	bottom: 0;
	margin: auto;
	left: -9px;
	line-height: 18px;
	font-size: 10px;
	text-align: center;
}
.mng--team ul li .mng--plist--name .player--label {
	border-radius: 4px;
	padding: 0 3px;
	font-size: 9px;
	line-height: 12px;
	margin: 0 3px;
}
.mng--team ul li .mng--plist--name .player--label.player_backnum {
	background-color: #eee;
	color: #333;
}
.mng--team ul li .mng--plist--name .player--label.player_newbie {
	background-color: #009E5C;
	color: white;
}
.mng--team ul li .mng--plist--name .player--label.player_stranger {
	background-color: #eee;
	color: #333;
}
.mng--team ul li .mng--plist--name .player--label.player_level {
	/*background-color: #FFC645;*/
	background-color: #eee; 
	color:#333333;
}
.mng--team ul li .mng--plist--name .player--label.player_level_adjusted {
	background-color: #FF5D5D; 
	color:#f4f4f4;
}
.mng--team ul li .mng--plist--name .player--label.player_fairplay {
	background-color: #3540A5; 
	color: #f4f4f4;
}
.mng--team ul li .mng--plist--name .player--label.player_cancel {
	background-color: #999; 
	color: white;
}

.mng--plist_before ul li .mng--plist--name {
	display: flex;
	align-items: center;
}
.mng--plist_before .mng--before--tool {
	display: flex;
	justify-content: space-between;
}
.mng--plist_before .mng--before--tool .change--undo {
	display: flex;
	font-size: 12px;
	padding: 5px 10px;
	background-color: #eee;
	border-radius: 4px;
	margin: 10px;
	cursor: pointer;
}
.mng--plist_before ul li {
	border-bottom: 1px solid #ddd;
	padding: 10px 15px;
	position: relative;
	cursor: pointer;
}
.mng--plist_before ul li p {
	font-size: 14px;
}
.mng--plist_before ul li span {
	font-size: 12px;
	color: #999;
}
.mng--plist_before .mng--team.team--two {
	text-align: right;
}
.mng--plist_before .mng--team.team--two ul li .mng--plist--name {
	flex-direction: row-reverse;
}
/* .mng--plist_before ul li:after {
	content: '1';
	position: absolute;
	width: 18px;
	height: 18px;
	border-radius: 18px;
	display: block;
	border: 1px solid #ddd;
	top: 0;
	bottom: 0;
	margin: auto;
	right: -9px;
	line-height: 18px;
	font-size: 10px;
	text-align: center;
} */
.mng--plist_before .mng--team:last-child ul li:after {
	content: none;
}
.team-color.RED {
	border: 1px solid #FF5D5D;
	background-color: #FF5D5D;
	color: white;
}
.team-color.YELLOW {
	border: 1px solid #FFC645;
	background-color: #FFC645;
}
.team-color.BLUE {
	border: 1px solid #3534A5;
	background-color: #3534A5;
	color: white;
}
.team-color.GREEN {
	border: 1px solid #009E5C;
	background-color: #009E5C;
	color: white;
}
.mng--plist_after {
	margin-bottom: 50px;
}
.mng--plist_after .mng--plist--index {
	display: flex;
	justify-content: space-between;
	background-color: #fafafa;
	padding: 20px 20px;
	font-size: 14px;
}
.mng--plist_after .mng--plist--index .mng--plist--team-preview {
	display: flex;
}
.mng--plist_after .mng--plist--index .mng--plist--team-preview p {
	margin-left: 5px;
}
.mng--plist_after ul li {
	padding: 10px 20px;
	border-bottom: 1px solid #ddd;
	display: flex;
	align-items: center;
	justify-content: space-between;
}
.mng--plist_after ul li .mng--plist--info {
}
.mng--plist_after ul li .mng--plist--name {
	display: flex;
	align-items: center;
}
.mng--plist_after ul li .mng--plist--name .friend {
	color: #999;
}
.mng--plist_after ul li .mng--plist--name .player--label {
	border-radius: 4px;
	padding: 0 5px;
	font-size: 10px;
	line-height: 14px;
	margin: 0 3px;
}
.mng--plist_after ul li .mng--plist--name .player--label.player_newbie {
	background-color: #009E5C;
	color: white;
}
.mng--plist_after ul li .mng--plist--name .player--label.player_stranger {
	background-color: #eee;
	color: #333;
}
.mng--plist_after ul li .mng--plist--name .player--label.player_level {
	/*background-color: #FFC645;*/
	background-color: #eee; 
	color:#333333;
}
.mng--plist_after ul li .mng--plist--name .player--label.player_level_adjusted {
	background-color: #FF5D5D; 
	color:#f4f4f4;
}
.mng--plist_after ul li .mng--plist--info span {
	font-size: 12px;
	color: #999;
}
.mng--plist_after ul li .mng--plist--team {
	display: flex;
}
.mng--plist_after ul li .mng--plist--team .team-select {
	height: 32px;
	display: block;
	margin-left: 5px;
	border-radius: 4px;
	padding: 0 10px;
	font-size: 12px;
	text-align: center;
	line-height: 32px;
	cursor: pointer;
}
.team-select.YELLOW {
	border: 1px solid #FFC645;
	background-color: #FFC645;
}
.team-select.RED {
	border: 1px solid #FF5D5D;
	background-color: #FF5D5D;
	color: white;
}
.team-select.BLUE {
	border: 1px solid #3534A5;
	background-color: #3534A5;
	color: white;
}
.team-select.GREEN {
	border: 1px solid #009E5C;
	background-color: #009E5C;
	color: white;
}
.modal--set--wrapper .modal--set--label {
	font-size: 12px;
	margin-bottom: 10px;
}
.modal--set--wrapper .modal--set--label h3 {
	font-size: 16px;
}
.modal--set--wrapper {
	margin-bottom: 30px;
}
.modal--set--wrapper--manner {
	margin-bottom: 10px;
	background-color: #f4f4f4; 
	padding: 10px 0px;
}
.modal--set--wrapper--manner .modal--set--label {
	font-size: 14px;
	margin: 20px;
}
.modal--set--wrapper .modal--btn--wrapper {
	margin-top: 10px
}
.modal--set--wrapper .player--notice input {
	font-size: 12px;
	width: 100%;
}
.modal--player--style {
	padding: 25px 0px; 
	border-bottom: 1px solid #dddddd;
}
.modal--player--style .width {
	width: 33%;
}
.modal--player--style .title {
	display: flex; 
	justify-content: space-between; 
	font-size: 11px; 
	color: #999999; 
	margin-bottom: 11px;
}
.modal--player--style .content {
	display: flex; 
	justify-content: space-between; 
	font-size: 16px; 
	align-items: center; 
	margin-bottom: 10px;
}
.modal--player--style .guide {
	width: 80%; 
	word-break: keep-all;
}
.modal--player--style .guide span {
	font-size: 12px; 
	color: #21a064;
}
.modal--player--style .level {
	background-color: #eeeeee; 
	width: 55%; 
	padding: 7px;
	border-radius: 10px;
	display: flex;
	justify-content: space-between;
}
.modal--player--style .level span {
	margin-top: 2px;
	margin-left: 3px;
	font-size: 16px;
}
.modal--player--style .level p {
	font-size: 8px;
	margin-top: 4px;	
}
.modal--player--fairplay {
	padding-top: 25px;
	padding-bottom: 12px;
	border-bottom: 1px solid #dddddd;
}
.modal--player--fairplay .title {
	font-size: 11px; 
	color: #999999; 
	margin-bottom: 11px;
}
.modal--player--fairplay ul {
	display: flex; 
	flex-wrap: wrap; 
	font-size: 13px; 
	flex-direction: row;
}
.modal--player--fairplay li {
	display: inline-flex;
	margin-bottom: 0.8rem;
}
.modal--player--fairplay .select {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #3540A5; 
	border-radius: 3rem; 
	color: #fff
}
.modal--player--fairplay .select:after {
	content: '\d7';
	float: right;
    margin-top:-15px;
    margin-right:-18px;
    cursor: pointer;
    color: #999;
    background: #eeeeee;
    border-radius: 15px;
    font-size: 18px;
    display: inline-block;
    line-height: 1px;
    padding: 8px 4px; 
}
.modal--player--fairplay .edit {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #eeeeee; 
	border-radius: 3rem;
}
.modal--player--nonmanner {

}
.modal--player--nonmanner .normal{
	margin-bottom: 20px;
}
.modal--player--nonmanner .kickoff{
	margin: 20px 0px;
}
.modal--player--nonmanner .title {
	font-size: 14px; 
	color: #999999;
}
.modal--player--nonmanner ul {
	display: flex; 
	flex-wrap: wrap; 
	font-size: 13px; 
	flex-direction: row;
}
.modal--player--nonmanner li {
	display: inline-flex; 
	margin-bottom: 0.8rem;
}
.fairplay--select {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #eeeeee; 
	border-radius: 3rem;
}
.fairplay--select--blue {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #3540A5; 
	color: white;
	border-radius: 3rem;
}
.fairplay--select--yellow {
	margin-left: 0.3rem; 
	margin-right: 0.3rem; 
	padding: 0.6rem 1rem; 
	background-color: #FFC645; 
	color: #333;
	border-radius: 3rem;
}
.modal--player--guide {
	background-color: #fafafa; 
	padding: 20px; 
	padding-bottom: 50px;
	margin-bottom: 30px;
}
.modal--player--guide div {
	padding: 10px 0px;
}

.modal--player--guide h3 {
	font-size: 15px;
}
.modal--player--guide h4 {
	font-size: 13px; 
	color: #00b450;
}
.modal--player--guide pre {
	font-size: 13px;
}
.modal--player--memo {
	padding: 25px 0px;
}
.modal--player--memo .title {
	font-size: 11px; 
	color: #999999; 
	margin-bottom: 11px;
}
.modal--player--memo .content {
	display: flex;
}
.modal--player--memo .content span {
	font-size: 14px;
}
.modal--player--memo .content p {
	font-size: 14px;
	color: #3540a5;
	padding-left: 8px;
}
.modal--set--team {
	display: table; 
	margin: 0 auto;
}
.modal--set--team ul {
	display: flex;
	margin-bottom: 10px;
	align-content: center;
}
.modal--set--team li {
	margin-right: 4px; 
}
.modal--set--team ul li {
	width: 38px;
	height: 38px;
	font-size: 12px;
	line-height: 38px;
	border: 1px solid;
	text-align: center;
	cursor: pointer;
	border-radius: 40px;
	font-size: 14px;
	background-color: #fff;
}
.modal--set--team ul li:last-child {
	border-right: 1px solid;
}
.modal--set--team ul li.RED {
	border: 1px solid #FF5D5D;
}
.modal--set--team ul li.YELLOW {
	border: 1px solid #FFC645;
}
.modal--set--team ul li.BLUE {
	border: 1px solid #3534A5;
}
.modal--set--team ul li.GREEN {
	border: 1px solid #009E5C;
}
.modal--set--team ul li.isActive {

}
.modal--set--team ul li.isInvisible {
	/*background-color: #eee;*/
	color: #999;
	opacity: 0.5;
	cursor: initial;
}
.modal--bottom-content {
	background-color: #fafafa;
	padding: 20px 0;
	border-radius: 0 0 20px 20px;
}
.modal--input--fair {
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.modal--input--fair select {
	margin-right: 5px;
	width: 75%;
	padding: 10px 10px;
	font-size: 14px;
}
.modal--input--fair .btn {
	width: 25%;
	padding: 10px 10px;
	font-size: 14px;
}
.modal--penalty--history {
	display: flex;
}
.modal--penalty--history li {
	font-size: 14px;
	color: #999;
}
.modal--penalty--history li:after {
	content: ',';
	margin-right: 5px;
}
.modal--penalty--history li:last-child:after {
	content: none;
	margin-right: 0;
}
.modal--penalty-list ul {
	margin-top: 10px;
}
.modal--penalty-list ul li {
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: 1px solid #ddd;
	padding: 15px 10px;
	font-size: 12px;
}
.modal--penalty-list .penalty--info {
	display: flex;
}
.modal--penalty-list .penalty--info p {
	margin-right: 15px;
}
.modal--penalty-list .penalty--info .player--num {
	border-left: 2px solid;
	padding-left: 5px;
}
.modal--penalty-list .penalty--del span {
	cursor: pointer;
}
.modal--test--report {
	padding-bottom: 30px;
}
.modal--test--report textarea {
	font-size: 14px;
}
.modal--match--report {
	margin-bottom: 10px;
}
.modal--match--report textarea {
	font-size: 14px;
}
@media (min-width: 1024px) {
	#mngDetail {
		max-width: 1024px;
		margin: 0 auto;
	}
	#mngDetail .mng--report--btn {
		width: 320px;
		left: 0;
		right: 0;
		margin: auto;
		bottom: 100px;
		border-radius: 100px;
	}
}

.modal--fair-point .fair-point--explain {
	font-size: 12px;
	word-break: keep-all;
	display: block;
	margin-bottom: 20px;
}
.modal--fair-point ul {
	margin-bottom: 30px;
}
.modal--fair-point ul h4 {
	margin-bottom: 10px;
}
.fair-point--rule li, .fair-point--rule .item--index {
	border-bottom: 1px solid #ddd;
	display: flex;
	align-items: center;
	padding: 10px;
}
.fair-point--rule .item--index {
	color: #999;
	border-bottom: none;
	padding: 5px 10px;
}
.fair-point--rule .item--index p {
	font-size: 10px;
}
.fair-point--rule .fair-point--icon {
	width: 20%;
}
.fair-point--rule .fair-point--icon img {
	width: 20px;
	margin-right: 10px;
}
.fair-point--rule .fair-point--limit {
	width: 50%;
	font-size: 12px;
}
.fair-point--rule .fair-point--range {
	width: 30%;
	font-size: 14px;
}
.modal--fair-point ul span {
	font-size: 12px;
	color: #999;
	padding: 0 10px;
	display: block;
	margin-top: 5px;
	word-break: keep-all;
}
.fair-point--minus li {
	border-bottom: 1px solid #ddd;
	display: flex;
	padding: 10px;
	font-size: 12px;
}
.fair-point--minus li .minus--point {
	width: 30%;
	margin-right: 10px;
	color: #FF5D5D;
}
.fair-point--minus li .minus--event {
	width: 70%;
}
.fair-point--minus li p {
	margin: 5px 0;
}


/*TEAM*/
#teamPage {
	background-color: #fafafa;
}
#teamPage .card--wrapper{
	max-width: 1024px;
	margin: 0 auto;
}
.team--hero {
	margin-bottom: 10px;
}
.team--hero .emo--pattern {
	width: 100%;
	height: 200px;
	display: flex;
	align-items: center;
	justify-content: center;
}
.team--hero .emo--pattern h2 {
	font-size: 96px;
}
.team--hero--cover {
	width: 100%;
	height: 200px;
	display: flex;
	align-items: center;
	justify-content: center;
}
.team--hero--cover h2 {
	font-size: 96px;
}
.team--hero--title {
	padding: 30px 25px;
	background-color: white;
	max-width: 1024px;
	margin: 0 auto;
}
.team--hero--title .team--hero--name {
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.team--hero--title .champ--cnt {
	width: 100%;
}
.team--hero--title .champ--cnt img {
	width: 12px;
}
.team--hero--title .team--hero--name p {
	font-size: 12px;
	color: #009E5C;
	cursor: pointer;
}
.team--hero--title .team--official--stats {
	display: flex;
	justify-content: space-between;
	margin: 20px 0;
}

.team--hero--title .team--official--stats .stats--item p {
	font-size: 11px;
	color: #999;
}
.team--hero--title .team--official--stats .stats--item span {
	font-size: 18px;
	line-height: 30px;
}
.team--hero--title .team--official--stats .stats--item {
	width: 30%;
}
.team--hero--title .team--hero--style {
	margin-top: 20px;
}
.team--hero--title .team--hero--style p {
	font-size: 11px;
	color: #999;
}
.team--hero--title .team--hero--style span {
	margin-right: 5px;
}
.team--hero--title .team--hero--style span:after {
	content: ',';
}
.team--hero--title .team--hero--style span:last-child:after {
	content: none;
}
.team--hero--title h1 {
	font-size: 24px;
}
.fixture--group {
	margin-bottom: 40px;
}
.fixture--group .fixture--group--title {
	text-align: left;
	padding: 10px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.fixture--group .fixture--group--title h3 {
	font-size: 16px;
	font-weight: 400;
}
.fixture--group .fixture--group--title p {
	font-size: 12px;
	color: #999;
}
.fixture--group .fixture--group--item {
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom: 1px solid #ddd;
	padding: 10px 0;
}
.fixture--group .fixture--group--item > div {
	display: flex;
	align-items: center;
}
.fixture--group .fixture--group--item .fixture--score {
	width: 20%;
	display: flex;
	justify-content: center;
	background-color: #eee;
	padding: 8px 0;
	border-radius: 6px;
	margin: 0 5px;
}
.fixture--group .fixture--group--item .fixture--team {
	width: 40%;
}
.fixture--group .fixture--group--item {
}
.fixture--group .fixture--group--item .fixture--team span {
	margin: 0 5px;
	width: 24px;
	height: 24px;
	font-size: 12px;
	border-radius: 12px;
}
.fixture--group .fixture--group--item .fixture--team p, .fixture--group .fixture--group--item .fixture--team a {
	font-size: 14px;
	word-break: keep-all;
}
.fixture--group .fixture--group--item .fixture--team.isHome {
	text-align: right;
}
.fixture--group .fixture--group--item .fixture--team.isHome p {
	text-align: left;
}
.fixture--group .fixture--group--item .fixture--team.isHome span {
	text-align: center;
}
.fixture--group .fixture--group--item .fixture--team.isAway span {
	text-align: center;
}
.fixture--group .fixture--group--item .fixture--team.isAway {
	flex-direction: row-reverse;
}
.fixture--group .fixture--group--item .fixture--team.isAway p {
	text-align: right;
}
.media--cupture--btn {
	background-color: #009E5C;
	padding: 3px 5px;
	border-radius: 8px;
}
.media--cupture--btn img {
	width: 16px;
}
.team--hero--cover {
	position: relative;
}
.emo--pattern {
	/* position: absolute; */
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	overflow: hidden;
}
.emo--pattern p {
	font-size: 45px;
	line-height: 64px;
	margin: 16px;
	transform: rotate(-25deg);
	opacity: 0.2;
}
.current--leagues ul li {
	display: flex;
	align-items: center;
}
.current--leagues ul li .current--league--rank {
	margin-right: 10px;
	background-color: #eee;
	border-radius: 48px;
	width: 48px;
	height: 48px;
	text-align: center;
	line-height: 48px;
}
.current--leagues ul li span {
	font-size: 14px;
}
.current--leagues ul li p {
	font-size: 16px;
	color: #999;
	margin-top: 5px;
}
.edit--team-emoblem {
	margin-bottom: 30px;
}
.edit--team-emoblem h1 {
	width: 200px;
	height: 200px;
	text-align: center;
	line-height: 200px;
	font-size: 120px;
	border-radius: 100px;
	margin: 0 auto;
	background-color: #FFC645;
}
.edit--team-name {
	margin-bottom: 30px;
}
.edit--team-name input {
	border: none;
	border-bottom: 1px solid #ffc645;
	background-color: white;
	margin: 0 auto;
	width: 80%;
	display: block;
	text-align: center;
	font-size: 20px;
	border-radius: 0;
}
.edit--team-name input[type=text]:focus {
	border: none !important;
	border-bottom: 1px solid #ffc645 !important;
}
.edit--team-color {
	display: flex;
	justify-content: center;
	margin-bottom: 80px;
}
.edit--team-color ul {
	display: flex;
	flex-wrap: wrap;
	margin: 0 auto;
}
.edit--team-color ul li {
	width: 40px;
	height: 40px;
	margin: 2px;
	border-radius: 6px;
	display: block;
}
.edit--team-style p {
	font-size: 14px;
	color: #999;
}
.edit--team-style ul {
	padding: 50px 0 20px 0;
	display: flex;
	flex-wrap: wrap;
}
.edit--team-style ul li {
	margin: 5px 0;
	margin-right: 10px;
	display: flex;
}
.styleCheck {
	position: absolute;
	opacity: 0;
	width: inherit;
}
.styleCheck label {
}
.styleCheck + label {
	position: relative;
	cursor: pointer;
	font-size: 18px;
	color: #999;
	border-radius: 30px;
	padding: 10px 15px;
	background-color: black;
}
.styleCheck.grey + label {
	color: #999;
	background-color: white;
	border: 1px solid #ababab;
}
.styleCheck:disabled + label {
	border: 1px solid #eee;
	color: #eee;
	background-color: #eee;
}
.styleCheck:checked + label {
	color: #333;
	border: 1px solid #FFC645;
	background-color: #FFC645;
}
.styleRadio {
	position: absolute;
	opacity: 0;
	width: inherit;
}
.styleRadio label {
}
.styleRadio + label {
	position: relative;
	cursor: pointer;
	font-size: 14px;
	color: #999;
	border-radius: 30px;
	padding: 10px 5px;
	background-color: black;
	text-align: center;
}
.styleRadio.grey + label {
	color: #999;
	background-color: white;
	border: 1px solid #ababab;
}
.styleRadio:disabled + label {
	border: 1px solid #eee;
	color: #eee;
	background-color: #eee;
}
.styleRadio:checked + label {
	color: #333;
	border: 1px solid #FFC645;
	background-color: #FFC645;
}
li:first-child .styleRadio + label {
	border-radius: 30px 0 0 30px;
}
li:last-child .styleRadio + label {
	border-radius: 0 30px 30px 0;
}
li .styleRadio + label {
	border-radius: initial;
	display: block;
}
li:last-child .styleRadio.grey + label {
	border-right: 1px solid #eee;
}
li .styleRadio.grey + label {
	border: 1px solid #eee;
	border-right: 0px;
}
.styleRadio:checked + label {
	color: #333;
	border: 1px solid #FFC645;
	background-color: #FFC645;
}
@media (min-width: 1024px) {
	.team--hero--cover {
		height: 320px;
	}
	.team--hero--title {
		padding: 30px 70px;
	}
}

.btn--right img {
    margin-right: 10px;
    width: 24px;
}

        
        /* my page */
</style>
    <!--body start-->
<div id="myPage">
    <div class="my--hero" v-cloak>
        <div class="my--hero--hi">
            <h2>안녕하세요🔥<br><strong>[[ userData.name ]]님</strong></h2>
        </div>
        <div class="my--hero--cash">
            <div class="my--cash">
                <p></p>
            </div>
                <div class="btn--right">
		            	<a href="http://localhost:8080/footballMaster/mypage/change">
		                	<img src="https://plab-football.s3.amazonaws.com/static/img/ic_setting.svg" alt="설정">
		                	회원정보수정
		                </a>
		            	<a href="/logout/">
		                	<img src="https://plab-football.s3.amazonaws.com/static/img/ic_logout.svg" alt="로그아웃">
		                	로그아웃
		                </a>
            </div>
        </div>
        
        
        <div class="my--hero--cash">
            <div class="my--cash">
                <p>나의 캐시 잔액</p>
                <h3>[[ userData.balance ]]원</h3>
            </div>
            <div class="btn--right">
                <a href="http://localhost:8080/footballMaster/mypage/cash/charge" class="btn sm">캐시 충전</a>
                <a href="/cash/charge/history"><img src="https://plab-football.s3.amazonaws.com/static/img/ic_charge.svg" alt="충전 내역">충전내역</a>
            </div>
        </div>
        <div class="my--hero--status" style="padding-bottom: 20px;">
            <div class="my--fair-point" @click="isModalFair = !isModalFair">
                <p>페어 포인트</p>
                <div>
                    <img src="https://plab-football.s3.amazonaws.com/static/img/ic_fair_nice.svg">
                    <h3>[[ userData.fair_point ]]</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- <div class="card-wrapper" v-cloak>
        <div class="card--container" style="background-color: #252525;">
            <div class="card--body">
                <p style="color: #FFFFFF;">hello world</p>
            </div>   
        </div>
    </div> -->
    <div class="card-wrapper" v-cloak>

        <div class="card--container" style="padding:10px 0;">
            
            <div class="card--body">
                <div class="my--hero--scout">
                    <div class="my--scout--title">
                        <div class="my--scout--title-text" v-cloak>
                            <h3>
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_play.svg" alt="이용 내역">
                                	나의 경기</h3>
                        </div>
                    </div>
                    <div class="my--scout--body" v-cloak>
	                    <div class="list--match-schedule--container">
		                    <ul>
		                        <!---->
		                        <li class="list--match-schedule--item" v-for="(match, index) in userMatches" v-show="!isLoading" >
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
<!-- 		                                    <div class="match-status isFull" v-if="match.status == '예약 취소'">
				                                <p>예약취소1</p>
				                            </div> -->
		 		                            <div class="match-status isHurry" v-if="match.status == '예약 취소'">
				                                <p>예약취소</p>
				                            </div>
				                            <div class="match-status isOpen" v-else-if="match.status == '예약 완료'">
				                                <p>예약완료</p>
				                            </div>
		                                </div>
		                            </a>
		                            <!---->
		                            <!---->
		                            <!---->
		                            <!---->
		                            <!---->
		                        </li>
		                        <div class="list--match-schedule__noItem" v-if="myMatchesNum == 0">
				                    <h3>신청한 매치가 없습니다</h3>
				                    <p>풋볼마스터와 함께 시작해보세요 :)</p>
				                </div>
				                </ul>
			                </div>
                    
                    </div>
                    <div class="my--scout--footer" v-if="!showEditScoutCode">
                        <div class="btn-wrapper">
                            <span>갯수제한처리가필요</span>
                          <span>내매치갯수[[myMatchesNum]]</span>
                        </div>
                    </div>
                </div>
                <div class="help-list__wrapper">
                    <ul>
                        <li>
                            <img src="https://plab-football.s3.amazonaws.com/static/img/ic_alert.svg" alt="주의">
                            <p>---------</p>
                        </li>
                    </ul>
                </div>    
            </div>
        </div>
        <div class="card--container">
            <div class="card--body">
                <div class="my--menu">
                    <ul>
                        <li>
                            <a href="/cash/charge/">
                              <div class="my--menu--title">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_charge.svg" alt="충전 내역">
                                <p>캐시 충전하기</p>
                              </div>
                              <div class="my--menu--info">
                                <p>잔액: [[ userData.balance ]]원</p>
                              </div>
                            </a>
                        </li>
                        <li>
                            <a href="/mypage/myplab/">
                              <div class="my--menu--title">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_play.svg" alt="이용 내역">
                                <p>나의 경기</p>
                              </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="modal--container" v-if="isModalFair" v-cloak>
        <div class="modal--mask" @click="isModalFair = false">
        </div>
        <div class="modal--wrapper isFull">
            <div class="modal--header">
                <p class="modal--title">페어플레이</p>
                <p class="modal--close" @click="isModalFair = false">닫기</p>
                
            </div>
            <div class="modal--body">
                <div class="modal--fair-point">
                    <p class="fair-point--explain">플랩풋볼은 참가자들 간의 신뢰를 바탕으로로 진행됩니다. 올바른 플랩 문화를 함께 만들어주세요!</p>
                    <ul class="fair-point--rule">
                        <h4>포인트 별 이용 제한</h4>
                        <div class="item--index">
                            <div class="fair-point--icon">
                            </div>
                            <p class="fair-point--range">포인트</p>
                            <p class="fair-point--limit">이용 제한</p>
                        </div>
                        <li>
                            <div class="fair-point--icon">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_fair_nice.svg">
                            </div>
                            <p class="fair-point--range">91-100</p>
                            <p class="fair-point--limit">마음껏 플레이 가능!</p>
                        </li>
                        <li>
                            <div class="fair-point--icon">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_fair_limit_2w.svg">
                            </div>
                            <p class="fair-point--range">81-90</p>
                            <p class="fair-point--limit">2주 서비스 이용 제한</p>
                        </li>
                        <li>
                            <div class="fair-point--icon">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_fair_limit_1m.svg">
                            </div>
                            <p class="fair-point--range">71-80</p>
                            <p class="fair-point--limit">1개월 서비스 이용 제한</p>
                        </li>
                        <li>
                            <div class="fair-point--icon">
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_fair_limit_3m.svg">
                            </div>
                            <p class="fair-point--range">70 이하</p>
                            <p class="fair-point--limit">3개월 서비스 이용 제한</p>
                        </li>
                        <span>3개월 이용 제한 복귀 후 추가 벌점이(10점 이상) 부여될 경우 서비스 이용이 영구 제한됩니다.</span>
                    </ul>
                    <ul class="fair-point--minus">
                        <h4>언제 포인트가 차감되나요?</h4>
                        <li>
                            <div class="minus--point">
                                <p>-2포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>정시 지각</p>
                            </div>
                        </li>
                        <li>
                            <div class="minus--point">
                                <p>-3포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>15분 이상 지각</p>
                            </div>
                        </li>
                        <li>
                            <div class="minus--point">
                                <p>-4포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>경기 시작 1시간 30분 내 취소시</p>
                            </div>
                        </li>
                        <li>
                            <div class="minus--point">
                                <p>-5포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>성별을 변경하여 신청한 경우</p>
                                <p>축구화 착용</p>
                                <p>금연 구장에서 흡연시</p>
                                <p>무단 불참</p>
                            </div>
                        </li>
                        <li>
                            <div class="minus--point">
                                <p>-10포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>무단 이탈</p>
                                <p>보복성 행위</p>
                                <p>거친 몸싸움</p>
                                <p>지시, 짜증, 반말, 욕설</p>
                                <p>운영 비협조</p>
                            </div>
                        </li>
                        <li>
                            <div class="minus--point">
                                <p>-30포인트</p>
                            </div>
                            <div class="minus--event">
                                <p>폭행</p>
                            </div>
                        </li>
                        <span>모든 점수는 신청자 기준으로 신청자 본인 및 동행인이 벌점에 해당되는 행위를 할 시 신청자에게 벌점이 부여됩니다.</span>
                    </ul>
                </div>
            </div>
        </div>
    </div>

  </div>



 <!-- MY hero -->
 <!--
    <div id="myPage">
        <div class="my--hero">
            <div class="my--hero--hi">
            <h2>안녕하세요<br><strong id="userName">${output.name}</strong></h2>
            </div>
                <div class="my--hero--cash">
                    <div class="my--cash">
                        <p>나의 캐시 잔액</p><h3 id="userBalance">금액</h3>
                    </div>
                    <div class="btn-right">
                    	<img src="http://localhost:8080/footballMaster/assets/img/icon/ic_charge.svg">
                        <a href="http://localhost:8080/footballMaster/mypage/cash/charge">
                            <button class="button"> 캐시충전</a>
                            </button>
                   </div>
                </div>
              <div class="my--hero--status" style="padding-bottom: 20px;" >
                <div class="my--fair--point">
                    <p>페어포인트</p>
                    <div style="float:left;">
                		<img src="http://localhost:8080/footballMaster/assets/img/icon/ic_fair_nice.svg">
                    </div>
                    <div style="float:left;">
                		<h3 id="UserFairPonint">100</h3>
                    </div>
                </div>
              </div>    
        </div>
    -->
<!-- MY hero end-->

   <!-- my page -->
   <!--
        <div class="wapper">
            <div class="card-container">
                <div class="header">
                    <div class="title">
                        <p>나의경기</p>
                    </div>
                    <div class="card-more">
                        <a href="전체보기">전체보기
                        </a>
                    </div>
                </div>
                    <div class="card-body">
                        <div class="card-content">
                            <div class="my-history">
                                <ul></ul>
                            </div>
                        </div>
                    </div>
            
        </div>
        <div class="card-container">
            <div class="card-body">
                <div class="card-menu">
                    <ul>
                    <li><a href="충전내역"><div class="my-menu-title"><p>충전내역-x피그마 레이아웃-위로옮겨야됨</p></div></a></li>
                    <li><a href="http://localhost:8080/footballMaster/mypage/change"><div class="my-menu-title"><p>회원정보수정-o피그마 레이아웃-위로옮겨야됨</p></div></a></li>
                    <li id="logout"><a href="logout"><div class="my-menu-title"><p>로그아웃-(ox)피그마 레이아웃-위로옮겨야됨</p></div></a></li>
                    </ul>
                </div>
            </div>
        
    </div>
    </div>
    -->
    <!-- my page -->
    
    
<script>
  var myPageApp = new Vue ({
      delimiters: ["[[", "]]"],
      el: "#myPage",
      data: {
          isModalFair: false,
          userData: [],			// 유저정보
          userMatches: [],		// 유저가 신청한 매치정보
          myMatchesNum: []		// 내가 신청한 매치 갯수
      },
      created() {
          moment.locale('ko')
          this.fetchUser()
          this.fetchUserMatches()
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
              })
              .catch(function(err) {})
          },
          fetchUserMatches() {
              var v = this
              
              axios.get('http://localhost:8081/footballMaster/my_matches')
				.then(function(res) {
					console.log("--fetchUserMatches--")
					console.log(res.data);
					v.userMatches = res.data

					console.log(this.userMatches)
					
                    var a = 0
                    for(i=0; i < v.userMatches.length; i++){
                    		a++
                    }
                    v.myMatchesNum = a
					
				})
				.catch(function(err) {
					
				})
              
          },
          goToMatch(matchId){
          	// goToMatch -> 매치 리스트에서  해당하는 매치의 상세페이지로 이동할 url 만들어주는 함수
          	console.log("goToMatch Clicked!!!")
          	console.log(matchId)
          	document.cookie = "currentDate="+this.currentDate
          	var url = "/footballMaster/matches/";
          	document.location.href = url+matchId
          }
      }
  });
</script>
<script type="text/javascript">
		
		
/*
	var result = "";
	// 유저 이름 태그 정보 가져오기
	var userNameTag = document.getElementById("userName");	// 이름
	var userBalanceTag = document.getElementById("userBalance");  // 캐시 보유액
	var userFairPonintTag = document.getElementById("UserFairPonint");  // 페어포인트
	
	
    $.ajax({
      crossOrigin: true,
	  dataType: "json",
      url: "http://localhost:8081/footballMaster/user",
      data: {
    	'email' : 'asdf@naver.com'
      },
      success: function(data) {
    	// data = email에 해당하는 유저정보
        result = data;
        console.log(result);
        console.log("유저이름:" + result.name +", 캐시:" + result.balance + ", 페어포인트:" + result.fair_point);
        // 유저에 해당하는 내용 적용시키기(이름,캐시보유액)
        userNameTag.innerText = result.name;
        userBalanceTag.innerText = result.balance;
        userFairPonintTag.innerText = result.fair_point;
      },
      error:function(request, status, error){ console.log("실패");
      }
    });
     
	
	*/
      
      
    
</script>


    
            <!-- footer -->
            <%@include file='includes/footer.jsp' %>