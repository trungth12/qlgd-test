-/**
 - * @jsx React.DOM
 - */
"use strict";

var React = require("react");
//= require ./thanhtra

var hdata = [
	{tuan: 1, colapse: 'colapseOne', active: false, data: [
			{id: 1, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Đang chờ', color: 'warning'},
			{id: 2, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Được chấp nhận', color: 'info'},
			{id: 3, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Đang chờ'}
		]},
	{tuan: 2, colapse: 'colapseTwo', active: true, data: [
			{id: 4, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Đang chờ'},
			{id: 5, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Đang chờ'}
		]},
	{tuan: 3, colapse: 'colapseThree', active: false, data: [
			{id: 6, thoi_gian: '6h30 12/08/2013', phong: 'A103', so_tiet: 3, ma_lop: 'ml', ten_mon_hoc: 'tm', alias_state: 'Bình thường', alias_status: 'Đang chờ'}
		]}
];
var Home2 = React.createClass({
	getInitialState: function(){
		return {data: []};
	},
	loadData: function(){
		$.ajax({
			url: "/teacher/lich_trinh_giang_days" ,
			success: function(data) {                      			
				this.setState({data: data});
			}.bind(this)
		});		
	},
	componentWillMount: function(){
		this.loadData();
	},	
	render: function(){
		var self = this;
		var x = this.state.data.map(function(d){
			return <Tuan colapse={d.colapse} active={d.active} key={d.tuan.id} tuan={d.tuan} data={d.data} />;
		});
		return (
			<div class="panel-group" id="accordion">
			    {x}
			</div>

		);
	}
});

var Tuan = React.createClass({
	render: function(){		
		var x = this.props.data.map(function(d, index){
			return <TuanRow color={(index+1) % 2 === 0 ? 'danger' : 'warning'}  data={d} />
		});
		return(
			<div class="panel panel-default">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href={"#"+this.props.colapse}>
			          {"Tuần " + this.props.tuan.stt} ({this.props.tuan.tu_ngay2} - {this.props.tuan.den_ngay2})
			        </a>
			      </h4>
			    </div>
			    <div id={this.props.colapse} class={"panel-collapse collapse " + (this.props.active === true ? 'in' : '')}>
			      <div class="panel-body">
			      		<div class="table-responsive">
			 				<table class="table table-bordered">
			 					<thead style={{"font-weight":"bold"}}>
			 						<tr class="success">
			 							<td>Thứ</td><td>Thời gian</td><td>Tiết bắt đầu</td><td>Số tiết</td><td>Giờ học</td><td>Phòng</td><td>Mã lớp</td><td>Môn</td><td>Loại</td><td>Trạng thái</td>
			 						</tr>
			 					</thead>
			 					<tbody>
			 						{x}
			 					</tbody>
			 				</table>
			 			</div>
			      </div>
			    </div>
			  </div>
		);
	}
});

var TuanRow = React.createClass({	
	render: function(){
		var boldstyle = {'font-weight': this.props.data.active === true ? 'bold' : ''};
		return (
			<tr style={boldstyle} class={this.props.color}>
				<td>{this.props.data.thu}</td>
				<td><a href={'/lich/'+this.props.data.id}>{this.props.data.thoi_gian}</a></td>
				<td>{this.props.data.tiet_bat_dau}</td>
				<td>{this.props.data.so_tiet}</td>
				<td>{this.props.data.type_status}</td>
				<td>{this.props.data.phong}</td>
				<td>{this.props.data.ma_lop}</td>
				<td>{this.props.data.ten_mon_hoc}</td>
				<td>{this.props.data.alias_state}</td>
				<td><span class={this.props.data.color_status}>{this.props.data.alias_status}</span></td>								
			</tr>
		);
	}
});

var LopHome = React.createClass({
	getInitialState: function(){
		return {data: []};
	},
	loadData: function(){
		$.ajax({
	      url: "/teacher/lops",
	      success: function(data) {             
	        this.setState({data: data});         
	      }.bind(this)
	    });
	},
	componentWillMount: function(){
		this.loadData();
	},
	render: function(){
		var x = this.state.data.map(function(d){
			return <LopRow data={d} />
		});
		return (
			<div class="table-responsive">
 				<table class="table table-bordered">
 					<thead>
 						<td>Lớp</td><td>Môn</td><td>Khối lượng dự kiến</td><td>Khối lượng thực hiện</td><td>Sĩ số</td><td>Trạng thái</td>
 					</thead>
 					<tbody>
 						{x}
 					</tbody>
 				</table>
 			</div>
		);
	}
});

var LopRow = React.createClass({
	render: function(){
		return (
			<tr>
				<td><a href={"/lop/" + this.props.data.id}>{this.props.data.ma_lop}</a></td>
				<td>{this.props.data.ten_mon_hoc}</td>
				<td>{this.props.data.khoi_luong_du_kien}</td>
				<td>{this.props.data.khoi_luong_thuc_hien}</td>
				<td>{this.props.data.si_so}</td>
				<td>{this.props.data.completed === false ? 'Chưa kết thúc' : 'Đã hoàn thành'}</td>
			</tr>
		);
	}
});
React.renderComponent(<Home2 />, document.getElementById('main'));
React.renderComponent(<LopHome />, document.getElementById('dslop'));
React.renderComponent(<ThanhTra />, document.getElementById('thanhtra'));