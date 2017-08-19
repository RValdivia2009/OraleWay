<%@ Page Title="" Language="C#" MasterPageFile="~/OraleWey.Master" AutoEventWireup="true" CodeBehind="MiCuenta.aspx.cs" Inherits="OraleWey_Web.MiCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

				<form id="form1" runat="server">

                <table class="style1">
                          <tr>
                              <td class="style21">
                                  </td>
                              <td class="style22">
                                  </td>
                              <td class="style23" colspan="2">
                                  <span class="style17">Bienvenido a OraleWey</span>&nbsp;
                                  <asp:Label ID="Lb_Nombre" runat="server" Font-Size="Medium" ForeColor="Black" 
                                      Text="Label"></asp:Label>
                                  &nbsp;<span class="style18">,</span>&nbsp;&nbsp;&nbsp;&nbsp; <span class="style18">Su numero Casillero 
                                  es:</span>&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Lb_ORW" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                      ForeColor="Red" Text="ORW"></asp:Label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MyProfile.aspx">Mi Informacion </asp:HyperLink>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td class="style19">
                                  &nbsp;</td>
                              <td class="style12">
                                  &nbsp;</td>
                              <td rowspan="3" valign="top" class="style14">
                                  &nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:DropDownList ID="DD_Estado" runat="server" Height="16px" Width="111px">
                                  </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <br />
                                  <br />
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                      CellPadding="4" DataKeyNames="id_Package" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                                      onselectedindexchanged="GridView1_SelectedIndexChanged" Width="453px" 
                                      onrowdatabound="GridView1_RowDataBound" BackColor="White" 
                                      BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                      <Columns>
                                          <asp:CommandField ShowSelectButton="True">
                                          <HeaderStyle Width="45px" />
                                          </asp:CommandField>
                                          <asp:BoundField DataField="fecha" DataFormatString="{0:M-dd-yyyy}" 
                                              HeaderText="fecha" SortExpression="fecha">
                                          <HeaderStyle Width="150px" />
                                          <ItemStyle HorizontalAlign="Center" Width="100px" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="Tienda" HeaderText="Tienda" SortExpression="Tienda">
                                          <FooterStyle Width="100px" />
                                          <HeaderStyle Width="180px" />
                                          <ItemStyle Font-Size="XX-Small" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="Tracking" HeaderText="Tracking" 
                                              SortExpression="Tracking">
                                          <HeaderStyle Width="150px" />
                                          <ItemStyle Font-Size="XX-Small" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="Estado" SortExpression="Estado">
                                          <HeaderStyle Width="2px" />
                                          <ItemStyle ForeColor="White" />
                                          </asp:BoundField>
                                         


                                          <asp:TemplateField HeaderText="Estado">
                                            <ItemTemplate>
                                            <asp:Image ID="ImgSemaforo" runat="server" CausesValidation="False" ></asp:Image>
                                            </ItemTemplate>
                                              <ControlStyle Height="17px" Width="17px" />
                                              <ItemStyle Font-Size="XX-Small" />
                                          </asp:TemplateField>
                                         
                                         
                                          
                                          
                                          <asp:BoundField DataField="id_Package" 
                                              SortExpression="id_Package" InsertVisible="False" ReadOnly="True" >
                                          <HeaderStyle Width="2px" />
                                          <ItemStyle ForeColor="White" />
                                          </asp:BoundField>
                                          <asp:BoundField DataField="ORW" HeaderText="ORW" SortExpression="ORW" 
                                              Visible="False" />
                                      </Columns>
                                      <FooterStyle BackColor="White" ForeColor="#333333" />
                                      <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="White" ForeColor="#333333" />
                                      <SelectedRowStyle BackColor="White" BorderColor="Maroon" BorderStyle="Solid" 
                                          Font-Bold="True" ForeColor="Black" />
                                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                      <SortedAscendingHeaderStyle BackColor="#487575" />
                                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                      <SortedDescendingHeaderStyle BackColor="#275353" />
                                  </asp:GridView>
                              </td>
                              <td rowspan="3" valign="top">
                                  <asp:Panel ID="Panel1" runat="server" Width="256px">
                                      <table class="style1">
                                          <tr>
                                              <td colspan="2" valign="middle">
                                                  <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </strong><span class="style24"><strong>Detalles 
                                                  de la Compra</strong></span><strong>&nbsp;&nbsp;&nbsp; </strong></td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Estado:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Estado" runat="server" Width="114px" Enabled="False"></asp:TextBox>
                                                  &nbsp;&nbsp; <strong><span class="style16">
                                                  <asp:Image ID="ImageDetalle" runat="server" Height="16px" 
                                                      ImageUrl="css/images/Ball_Yellow-icon.png" Width="16px" />
                                                  </span></strong>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Fecha:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Fecha" runat="server" Enabled="False" Width="153px"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Tienda:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Tienda" runat="server" Width="153px" Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Descrip:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Descrip" runat="server" Width="153px" Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Tracking:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Tracking" runat="server" Width="153px" Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Entraga:</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Delivery" runat="server" Width="153px" Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  Valor</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="Tb_Valor" runat="server" Width="153px" Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  &nbsp;</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="153px" 
                                                      Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  &nbsp;</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="153px" 
                                                      Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td valign="top">
                                                  &nbsp;</td>
                                              <td valign="top">
                                                  <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="153px" 
                                                      Enabled="False"></asp:TextBox>
                                              </td>
                                          </tr>
                                      </table>
                                  </asp:Panel>
                              </td>
                          </tr>
                          <tr>
                              <td class="style19">
                                  &nbsp;</td>
                              <td class="style12">
                                  <span class="style16">En Miami&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Image ID="Image1" runat="server" Height="16px" 
                                      ImageUrl="css/images/Ball_Yellow-icon.png" Width="16px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                  <br />
                                  En Proceso&nbsp;&nbsp;
                                  <asp:Image ID="Image2" runat="server" Height="16px" 
                                      ImageUrl="css/images/Ball_Purple-icon.png" Width="16px" />
                                  <br />
                                  En Transito&nbsp;&nbsp;&nbsp;
                                  <asp:Image ID="Image3" runat="server" Height="14px" 
                                      ImageUrl="css/images/ball_Red-icon.png" Width="14px" />
                                  <br />
                                  En aduana&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Image ID="Image5" runat="server" />
                                  <br />
                                  Para entrega&nbsp;
                                  <asp:Image ID="Image6" runat="server" Height="16px" 
                                      ImageUrl="css/images/Ball_Green-icon.png" Width="16px" />
                                  <br />
                                  Entregado&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Image ID="Image7" runat="server" Height="16px" 
                                      ImageUrl="css/images/Ball_Blue-icon.png" Width="16px" />
                                  <br />
                                  </span>
                                  <br />
                              </td>
                          </tr>
                          <tr>
                              <td class="style20">
                                  &nbsp;</td>
                              <td class="style15">
                                  </td>
                          </tr>
                          <tr>
                              <td class="style19">
                                  &nbsp;</td>
                              <td class="style12">
                                  &nbsp;</td>
                              <td class="style14">
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:DB_93367_oralewayConnectionString %>" 
                                      
                                      
                                      SelectCommand="SELECT fecha, Tienda, id_Package, Tracking, Estado FROM tbl_Package WHERE (ORW = @ORW)">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="Lb_ORW" Name="ORW" PropertyName="Text" 
                                              Type="String" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                                  <asp:Label ID="Lb_id_Paquete" runat="server" Text="tb_Id_Cliente" 
                                      Visible="False"></asp:Label>
                              &nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:TextBox ID="TextBoxORW" runat="server" Visible="False"></asp:TextBox>
                                  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" 
                                      Visible="False" />
                              &nbsp;&nbsp;&nbsp;
                                  <asp:TextBox ID="ID" runat="server" Visible="False"></asp:TextBox>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          </table>
                </form>

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style12
        {
            width: 134px;
        }
        .style14
        {
        }
        .style15
        {
            width: 134px;
            height: 80px;
        }
        .style16
        {
            font-size: xx-small;
            color: #000000;
        }
        .style17
        {
            width: 132px;
        }
        .style18
        {
            width: 132px;
            height: 80px;
        }
        .style19
        {
            width: 18px;
        }
        .style20
        {
            width: 18px;
            height: 80px;
        }
        .style21
        {
            width: 18px;
            height: 24px;
        }
        .style22
        {
            width: 134px;
            height: 24px;
        }
        .style23
        {
            height: 24px;
        }
        .style24
        {
            font-weight: normal;
            color: #000000;
        }
    </style>
</asp:Content>

