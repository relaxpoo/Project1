<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container-fluid bg2">

	<div class="row">
		<div class="col-md-2 col-sm-2 col-xs-12"></div>
		<div class="col-md-8 col-sm-6 col-xs-12">

			<c:if test="${not empty message}">
				<div class="row">
					<div class="col-xs-12 col-md-offset-2 col-md-8">
						<div class="alert alert-info fade in">${message}</div>
					</div>
				</div>
			</c:if>


			<!---form start--->
			<form:form class="form-container" modelAttribute="product"
				action="${contextRoot}/manage/product" method="POST"
				enctype="multipart/form-data">
				<h2>Product Management</h2>
				<br>
				
	
	ADD A NEW PRODUCT :-
	<br>

				<div class="form-group">
					<label class="control-label col-md-4">Product Name</label>
					<form:input type="text" path="name" class="form-control"
						placeholder="Product Name" />
					<form:errors path="name" cssClass="help-block" element="em" />
				</div>


				<div class="form-group">
					<label class="control-label col-md-4">Brand</label>
					<form:input type="text" path="brand" class="form-control"
						placeholder="Brand Name" />
					<form:errors path="brand" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Description</label>
					<form:textarea path="description" class="form-control"
						placeholder="Enter your description here!" />
					<form:errors path="description" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Unit Price</label>
					<form:input type="number" path="unitPrice" class="form-control"
						placeholder="Enter Unit Price" />
					<form:errors path="unitPrice" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Quantity</label>
					<form:input type="number" path="quantity" class="form-control"
						placeholder="Enter Quantity" />
					<form:errors path="quantity" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Upload a file</label>
					<form:input type="file" path="file" class="form-control" />
					<form:errors path="file" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Category</label>
					<form:select path="categoryId" items="${categories}"
						itemLabel="categoryname" itemValue="id" class="form-control" />

					<div class="text-right">
						<br />
						<form:hidden path="id" />
						<form:hidden path="code" />
						<form:hidden path="supplierId" />
						<form:hidden path="active" />
						<button type="button" class="btn btn-warning btn-xs"
							data-toggle="modal" data-target="#myCategoryModal">Add
							New Category</button>
					</div>
				</div>



				<div class="form-group">

					<div class="col-md-offset-4 col-md-4">

						<input type="submit" name="submit" value="Save"
							class="btn btn-danger" />

					</div>

				</div>
			</form:form>
		</div>


	</div>


	<!-- Modal -->
	<div class="modal fade" id="myCategoryModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">New Category</h4>
				</div>
				<div class="modal-body">

					<form:form id="categoryform" class="form-horizontal"
						modelAttribute="category" action="${contextRoot}/manage/category"
						method="POST">

						<div class="form-group">
							<label class="control-label col-md-4">Name</label>
							<form:input path="categoryname" class="form-control"
								placeholder="Category Name" />

						</div>
						<div class="form-group">
							<label class="control-label col-md-4">Description</label>
							<form:textarea path="description" class="form-control"
								placeholder="Enter category description here!" />
						</div>
						<div class="form-group">
					<div class="col-md-offset-4 col-md-4">
						<input type="submit" name="submit" value="Save"
							class="btn btn-danger" />
					</div>
				</div>
						</form:form>
						</div>

				
				
			</div>

		</div>

	</div>




	<hr>
	<h2>Available Products</h2>
	<hr>

	<div class="row">


		<div class='col-xs-12 col-lg-12'>


			<table id="productsTable" class="table table-hover table-condensed">

				<thead>
					<tr>
						<th>Id</th>
						<th>&#160;</th>
						<th>Name</th>
						<th>Brand</th>
						<th>Qty. Avail</th>
						<th>Unit Price</th>
						<th>Activate</th>
						<th>Edit</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th>Id</th>
						<th>&#160;</th>
						<th>Name</th>
						<th>Brand</th>
						<th>Qty. Avail</th>
						<th>Unit Price</th>
						<th>Activate</th>
						<th>Edit</th>
					</tr>
				</tfoot>


			</table>


		</div>


	</div>
</div>