<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="dashBoard.aspx.cs" Inherits="TMS_WEB.dashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Dash Board</h1>
    <div  style="display:flex;width:80%; height:80%;">
        <div class="m-1" style="display:flex; flex:0.5; height:800px;flex-direction:column">
            <!-- first col -->
            <div   class="m-1 p-1" style=" display:flex;flex:0.5";>
                <!-- 1st row -->
                <div class="circle" style=" display:flex;flex:1; justify-content:center;align-items:center">
                    <!-- inner data or counters -->
			        <div class="b-skills" >
				        <div class="skill-item center-block">
					        <div class="chart-container">
						        <div class="chart" id="users" runat="server" data-percent="55" data-bar-color="#23afe3">
							        <span class="percent"></span>
						        </div>
					        </div>
					        <p>Number of Users</p>
				        </div>
                    </div>
                </div>
            </div>
            <div  class="m-1 p-1" style=" display:flex;flex:0.5"; >
                <!-- 2nd row -->
                <div class="circle" style=" display:flex;flex:1; justify-content:center;align-items:center">
                    <!-- inner data or counters -->
			        <div class="b-skills" >
				        <div class="skill-item center-block">
					        <div class="chart-container">
						        <div class="chart" id="Div1" runat="server" data-percent="20" data-bar-color="#a7d212">
							        <span class="percent" ></span>
						        </div>
					        </div>
					        <p>Numver of customer</p>
				        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="m-1" style=" display:flex; flex:0.5; flex-direction:column">
            <!-- 2nd col -->
            <div   class="m-1 p-1" style=" display:flex;flex:0.5"; >
                <!-- 1st row -->
                <div class="circle" style=" display:flex;flex:1; justify-content:center;align-items:center">
                    <!-- inner data or counters -->
			        <div class="b-skills" >
				        <div class="skill-item center-block">
					        <div class="chart-container">
						        <div class="chart" id="Div2" runat="server" data-percent="15" data-bar-color="#ff4241">
							        <span class="percent" ></span>
						        </div>
					        </div>
					        <p>Numver of customer</p>
				        </div>
                    </div>
                </div>
            </div>
            <div  class="m-1 p-1" style=" display:flex;flex:0.5"; >
                <!-- 2nd row -->
                <div class="circle" style=" display:flex;flex:1; justify-content:center;align-items:center">
                    <!-- inner data or counters -->
			        <div class="b-skills" >
				        <div class="skill-item center-block">
					        <div class="chart-container">
						        <div class="chart" id="Div3" runat="server" data-percent="5" data-bar-color="#edc214">
							        <span class="percent" ></span>
						        </div>
					        </div>
					        <p>Numver of customer</p>
				        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
