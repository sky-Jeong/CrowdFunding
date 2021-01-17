# CrowdFunding
 와디즈를 참고해 작업한 크라우드 펀딩 페이지입니다.
 사이트: https://www.wadiz.kr/web/main
  
# Summary
▶︎ 프로젝트 시작일: 2020.12.17 ~
▶︎ 참여자: 1명 ( 크라우드펀딩 경험자에게 조언을 구하며 진행함 )
▶︎ 프로젝트 기여도: 100%
▶︎ 개요
  • 크라우드 펀딩 사이트인 '와디즈'를 클론코딩하였습니다.
  
# Function
▶︎ 구현 기능
  • 프로젝트
     - 프로젝트별 리워드 리스트 확인 가능
       : 리스트 정렬 기준 (1) 종료까지 남은 일수 내림차순 (2) 도달율 내림차순
       : select 클릭에 따라 ajax로 펀딩 리스트 조회
       : 카테고리 클릭에 따라 ajax로 해당하는 펀딩 리스트 조회
       : 'comming soon'을 넣어 오픈 예정인 프로젝트 보임
       : '더보기' 클릭시 추가 펀딩 리스트 확인 가능
     - 프로젝트 상세 페이지
       : 좋아요 기능 - 로그인하지 않았을 경우 로그인 페이지로 이동. 좋아요 누른 프로젝트는 다시 누를 경우 취소되며, 좋아요를 누른 프로젝트의 하트는 빨간색임
       : 펀딩하기
         '펀딩하기' 버튼 클릭시 주문하기 페이지에서 펀디하고자 하는 리워드를 선택할 수 있음
         '리워드' 리스트 중 원하는 리워드 클릭시 주문하기 페이지에 해당 리워드가 체크된 상태로 나타남
       : 새소식
         메이커가 공지사항으로 올린 내용을 볼 수 있음
         '공유하기'버튼 클릭시 해당 공지사항 링크가 복사됨
         '목록으로 돌아가기'버튼 클릭시 다시 새소식 리스트로 돌아가게 됨
         ajax를 이용해 '구분', '정렬'의 카테고리를 주었으며 이로 보고자 하는 공지사항의 내용을 확인할 수 있음
       : 커뮤니티
         로그인을 한 경우에만 글을 남길 수 있음
         '글 남기기' 버튼 클릭시 입력을 위한 모달창이 나타나며, ul 태그로 작성한 카테고리 선택이 가능함
         작성된 글에 댓글을 남길 수 있으며, 대댓글로 남게됨
     - 회원가입
       : '이메일'로 회원가입
       : 이메일을 인증해야 부가 정보 입력이 가능하며, 중복된 이메일이 존재할 경우 회원가입 불가
       : 유효성 검사로 이메일, 비밀번호 검사 진행
       ▶︎ SNS 로그인 추가 예정
     - 로그인
       : 현재 가입한 이메일과 비밀번호로 로그인 가능
       : 로그인 성공시 로그인을 시도했던 이전 페이지로 돌아감
       : 
       
  
  상세 페이지 보기, 좋아요, 구매 내역 확인, 구매 예약(iamport), 주문정보 수정, 구매 예약 취소, 
