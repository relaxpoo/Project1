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
				
	
	EDIT PRODUCT DETAILS:-
	<br>

				<div class="form-group">
					<label class="control-label col-md-4">Product Name</label>
					<form:input type="text" path="name" class="form-control"
						placeholder="Product Name" value="${product.name}" />
					<form:errors path="name" cssClass="help-block" element="em" />
				</div>


				<div class="form-group">
					<label class="control-label col-md-4">Brand</label>
					<form:input type="text" path="brand" class="form-control"
						placeholder="Brand Name" value="${product.brand}" />
					<form:errors path="brand" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Description</label>
					<form:textarea path="description" class="form-control"
						placeholder="Enter your description here!"
						value="${product.description}" />
					<form:errors path="description" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Unit Price</label>
					<form:input type="number" path="unitPrice" class="form-control"
						placeholder="Enter Unit Price" value="${product.unitPrice}" />
					<form:errors path="unitPrice" cssClass="help-block" element="em" />
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Quantity</label>
					<form:input type="number" path="quantity" class="form-control"
						placeholder="Enter Quantity" value="${product.quantity}" />
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
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">True/False</label>
					<form:input path="active" class="form-control"
						value="${product.active}" />
					<form:errors path="quantity" cssClass="help-block" element="em" />
				</div>

<br>

				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="submit" name="submit" value="Save"
								class="btn btn-block btn-danger" />
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="form-group">
							<a name="delete" href="${contextRoot}/manage/${product.id}/delete" class="btn btn-block btn-danger">Delete</a>
						</div>
					</div>
				</div>
				<div class="text-right">
					<br/>
					<form:hidden path="id" />
					<form:hidden path="code" />
					<form:hidden path="supplierId" />

				</div>

			</form:form>
		</div>






	</div>
</div>












</div>

