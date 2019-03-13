/**
 * 
 */

function writeCheck() {
	var form = document.writeform;

	
	if (!form.password.value) {
		alert("비밀번호를 적어주세요");
		form.password.focus();
		return;
	}

	if (!form.title.value) {
		alert("제목을 적어주세요");
		form.title.focus();
		return;
	}

	if (!form.memo.value) {
		alert("내용을 적어주세요");
		form.memo.focus();
		return;
	}
	form.submit();
}

function check() {
	if (document.search.keyWord.value == '') {
		alert('검색어를 입력하세요');
		document.search.keyWord.focus();
		return false;

	}
}

function Warning() {

	var form = document.warningform;

	if (!form.name.value) {
		alert("제목을 적어주세요");
		form.warning.focus();
		return;
	}
	if (!form.memo.value) {
		alert("내용을 적어주세요");
		form.warning.focus();
		return;
	}
	form.submit();

}
