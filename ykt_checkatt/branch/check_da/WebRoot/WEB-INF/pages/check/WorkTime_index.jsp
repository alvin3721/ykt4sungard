<%@page pageEncoding="GBK"%>
<%@ include file="../tiles/include.jsp"%>


<html>
	<head>
		<%@ include file="/pages/common/meta.jsp"%>
		<%@ include file="/pages/components/calendar/calendar.jsp"%>
		<link href="<c:url value="/pages/styles/admin.css"/>" type="text/css" rel=stylesheet>
		<link href="<c:url value="/pages/styles/extremecomponents.css"/>" type="text/css" rel=stylesheet>
		<script src="<c:url value="/pages/scripts/admin.js"/>" type="text/javascript"></script>
	</head>
	<%String msg = (String) request.getAttribute("msg");
			if (msg != null) {
	%>
	<script language="javascript">
	alert('<%=msg%>');
	</script>
	<%}%>
	<body>
		<div id="titleDiv" class="pageTitle">
			<strong> <font class="medium"> ����ʱ������ </font> </strong>
		</div>
		<div id=lineDiv class="hrLine">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="tdborderLine"></td>
				</tr>
			</table>
		</div>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="40" align="left" valign="middle" class="tdborder02">
					<input name="Submit" type="button" class="submitButton" value=" �� �� " onclick="window.location.href='workTime.do?method=addworkTime_step1';">
					&nbsp;
					<!-- 
					<input name="Submit" type="button" class="button_nor" value="�鿴ȫ��" onclick="window.location.href='workTime.do?method=search';">
					<img src="<c:url value="/pages/images/icon/16x16/delete.gif"/>" align="top">&nbsp;<A href="#" onclick="javascript:batch_del(document.forms.ec,'����ʱ��','<c:url value="workTime.do?method=delete" />');">ɾ ��</A>
					-->
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="Submit" type="button" class="submitButton" value=" ɾ �� " onclick="javascript:batch_del(document.forms.ec,'����ʱ��','<c:url value="workTime.do?method=delete" />');">
					
				</td>
			</tr>
			<!-- hanjiwei delete it 20060913
			<div id=lineDiv class="hrLine">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="tdborderLine"></td>
					</tr>
				</table>
			</div>

			<div>
				<form name="searchworkTime" action="workTime.do?method=search" method="post">
					����ʱ������:&nbsp;
					<input name="search_workTimeName" class="input_box" maxlength=20>
					&nbsp;
					<input name="Submit" type="submit" class="button_nor" value="�� ѯ">
				</form>
			</div>
			-->

			<div id=lineDiv class="hrLine">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="tdborderLine"></td>
					</tr>
				</table>
			</div>
			<!-- 
			<div id="operationDiv"> style="display :<c:out value='${show}' default='none'/>">
				<%@ include file="/pages/common/messages.jsp"%>
				<span class="operations"> <img src="<c:url value="/pages/images/icon/16x16/delete.gif"/>" align="top">&nbsp;<A href="#" onclick="javascript:batch_del(document.forms.ec,'����ʱ��','<c:url value="workTime.do?method=delete" />');">ɾ ��</A> </span>
			</div>
			-->
			<div id="tableDiv" ><!-- style="display :<c:out value='${show}' default='none'/>">-->
				<ec:table items="workTimeList" var="workTime" rowsDisplayed="50" action="workTime.do?method=search">
					<ec:exportXls fileName="workTimeList.xls" tooltip="���� Excel" />
					<ec:row>
						<ec:column property="checkbox" title="ѡ��" sortable="false" viewsAllowed="html" width="30" style="text-align: center">
							<input type="checkbox" name="itemlist" value="${workTime.worktimeId}" style="border:0px" />
						</ec:column>
						<ec:column property="worktimeName" title="����ʱ������" width="150" />
						<ec:column property="ontime1" title="�ϰ�һ" width="40" />
						<ec:column property="offtime1" title="�°�һ" width="40" />
						<ec:column property="ontime2" title="�ϰ��" width="40" />
						<ec:column property="offtime2" title="�°��" width="40" />
						<ec:column property="ontime3" title="�ϰ���" width="40" />
						<ec:column property="offtime3" title="�°���" width="40" />
						<ec:column property="ontime4" title="�ϰ���" width="40" />
						<ec:column property="offtime4" title="�°���" width="40" />
						<ec:column property="update" title="�޸�" width="40" sortable="false">
							<a href="workTime.do?method=update_step1&workTimeConfId=${workTime.worktimeId}">�޸�</a>
						</ec:column>
					</ec:row>
				</ec:table>

			</div>