<%@ page language="java"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/book.css" /> 

<div id="book_manage"></div>
<div id="book_manage_tool" style="padding:5px;">
	<div style="margin-bottom:5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit-new" plain="true" onclick="book_manage_tool.edit();">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-delete-new" plain="true" onclick="book_manage_tool.remove();">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true"  onclick="book_manage_tool.reload();">刷新</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="book_manage_tool.redo();">取消选择</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="book_manage_tool.exportExcel();">导出到excel</a>
	</div>
	<div style="padding:0 0 0 7px;color:#333;">
		<form id="bookQueryForm" method="post">
			图书条形码：<input type="text" class="textbox" id="barcode" name="barcode" style="width:110px" />
			图书名称：<input type="text" class="textbox" id="bookName" name="bookName" style="width:110px" />
			图书所在类别：<input class="textbox" type="text" id="bookTypeObj_bookTypeId_query" name="bookTypeObj.bookTypeId" style="width: auto"/>
			出版日期：<input type="text" id="publishDate" name="publishDate" class="easyui-datebox" editable="false" style="width:100px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="book_manage_tool.search();">查询</a>
		</form>	
	</div>
</div>

<div id="bookEditDiv">
	<form id="bookEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">图书条形码:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_barcode_edit" name="book.barcode" style="width:200px" />
			</span>
		</div>
		<div>
			<span class="label">图书名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_bookName_edit" name="book.bookName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">图书所在类别:</span>
			<span class="inputControl">
				<input class="textbox"  id="book_bookTypeObj_bookTypeId_edit" name="book.bookTypeObj.bookTypeId" style="width: auto"/>
			</span>
		</div>
		<div>
			<span class="label">图书价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_price_edit" name="book.price" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">库存:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_count_edit" name="book.count" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">出版日期:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_publishDate_edit" name="book.publishDate" />

			</span>

		</div>
		<div>
			<span class="label">出版社:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_publish_edit" name="book.publish" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">图书图片:</span>
			<span class="inputControl">
				<img id="book_bookPhotoImg" width="200px" border="0px"/><br/>
    			<input type="hidden" id="book_bookPhoto" name="book.bookPhoto"/>
				<input id="bookPhotoFile" name="bookPhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">浏览量:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="book_hitNum_edit" name="book.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">图书简介:</span>
			<span class="inputControl">
				<script name="book.bookDesc" id="book_bookDesc_edit" type="text/plain"   style="width:100%;height:500px;"></script>

			</span>

		</div>
		<div>
			<span class="label">图书文件:</span>
			<span class="inputControl">
				<a id="book_bookFileA" style="color:red;margin-bottom:5px;">查看</a>&nbsp;&nbsp;
    			<input type="hidden" id="book_bookFile" name="book.bookFile"/>
				<input id="bookFileFile" name="bookFileFile" value="重新选择文件" type="file" size="50" />
			</span>
		</div>
	</form>
</div>
<script>
//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var book_bookDesc_editor = UE.getEditor('book_bookDesc_edit'); //图书简介编辑器
</script>
<script type="text/javascript" src="Book/js/book_manage.js"></script> 
