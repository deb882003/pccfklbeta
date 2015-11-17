<%-- 
Controller: office
view: add
--%>

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add New Office</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form  id="form1" name="form1" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="office_name">Office Name&nbsp;&nbsp;<font color="red">*</font></label>
                  <input class="form-control" id="office_name" required name="office_name" placeholder="Office Name" type="text">
                </div>
                <div class="form-group">
                  <label for="address_line_1">Address Line 1&nbsp;&nbsp;<font color="red">*</font></label>
                  <input class="form-control" required="" id="address_line_1" name="address_line_1" placeholder="Address Line 1 (Street, Landmark,e.t.c.)" type="text">
                </div>
                  <div class="form-group">
                  <label for="address_line_2">Address Line 2</label>
                  <input class="form-control" id="address_line_2" name="address_line_2" placeholder="Adress Line 2 (Optional)" type="text">
                </div>
                  <div class="form-group">
                  <label for="city">City&nbsp;&nbsp;<font color="red">*</font></label>
                  <input class="form-control" required="" id="city" name="city" placeholder="City Name i.g, Bhubaneswar" type="text">
                </div>
                  
                   <div class="form-group">
                  <label for="zip">ZIP/Postal Code &nbsp;&nbsp;<font color="red">*</font></label>
                  <input class="form-control" id="zip" name="zip" placeholder="ZIP/Postal Code" max="6" type="text" required="">
                </div>
                  
                    <div class="form-group">
                  <label for="phone">Phone</label>
                  <input class="form-control" id="phone" name="phone" placeholder="Phone" max="12" type="text" >
                </div>
                  
                    <div class="form-group">
                  <label for="fax">FAX </label>
                  <input class="form-control" id="fax" name="fax" placeholder="FAX" max="6" type="text" >
                </div>
                  
                  <div class="form-group">
                  <label for="additional_detail">Additional Detail</label>
                  
                  <textarea class="form-control" id="additional_detail" name="additional_detail" rows="6" cols="5"></textarea>
                </div>
                  
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                  <input type="submit" id="save" name="save" class="btn btn-primary" value="Save" />
              </div>
            </form>
          </div>