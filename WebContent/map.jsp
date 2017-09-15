<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js" charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" href="assets/css/main.css" />
<title>Insert title here</title>
</head>
<!-- width="350" height="460" style="float:left; left: -0.5px; overflow: hidden; position: relative;" -->
<body>
			<svg xmlns="http://www.w3.org/2000/svg"  width="350" height="460" style="float:left; left: -0.5px; overflow: hidden; position: relative;" version="1.1">
				<desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created </desc>
				<defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" />
				<g >
					<path id="경기도" onclick="myFun('gyeonggi')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#FFFFFF" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 69 74 L 76 76 L 78 74 L 78 68 L 81 67 L 83 64 L 94 67 L 98 62 L 102 60 L 111 58 L 114 68 L 119 68 L 122 72 L 128 74 L 130 79 L 140 88 L 140 90 L 134 94 L 137 100 L 135 107 L 154 116 L 148 118 L 150 124 L 147 129 L 146 139 L 144 145 L 139 146 L 134 152 L 127 153 L 125 159 L 120 162 L 109 158 L 107 161 L 94 160 L 98 157 L 97 153 L 92 156 L 93 146 L 87 147 L 85 141 L 91 143 L 95 137 L 91 136 L 89 133 L 92 131 L 97 131 L 97 123 L 108 125 L 112 120 L 120 113 L 120 112 L 117 110 L 112 107 L 112 105 L 111 104 L 113 102 L 109 98 L 102 104 L 89 102 L 86 96 L 82 99 L 71 92 L 73 87 L 69 85 L 71 82 L 69 79 L 69 74 Z" />

					<path id="서울" onclick="myFun('seoul')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 112 118 L 118 112 L 111 108 L 110 104 L 111 102 L 109 100 L 102 106 L 98 109 L 99 113 L 104 116 L 110 118 L 112 118 Z" />
			
					<path id="인천" onclick="myFun('incheon')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 96 109 L 98 115 L 102 117 L 108 119 L 110 120 L 107 123.5 L 98 121 L 97 122 L 95 120 L 96 119 L 90 110 L 89 110 L 89 104 L 99 105 Z M 79 105 L 84 105 L 85 107 L 85 111 L 80 110 L 79 105 Z" />
			
					<path id="강원도" onclick="myFun('gangwon')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 98 60 L 104 58 L 113 56 L 116 68 L 121 68 L 124 72 L 130 74 L 132 79 L 142 88 L 142 90 L 136 94 L 139 100 L 137 107 L 156 116 L 150 118 L 152 124 L 149 129 L 148 139 L 146 145 L 152 150 L 152 150 L 153.5 145 L 157 137 L 160 135 L 161 138 L 169 141 L 181 140 L 175 146 L 189 147 L 192 149 L 199 148 L 205 153 L 207 148 L 211 153 L 224 150 L 231 154 L 239 143 L 234 139 L 234 132 L 225 118 L 222 108 L 199 81 L 180 33 L 175 34 L 151 6 L 147 7 L 142 4 L 145 18 L 137 16 L 134 22 L 130 23 L 131 30 L 125 29 L 124 20 L 121 18 L 123 8 L 120 5 L 115 11 L 117 17 L 108 20 L 106 18 L 105 24 L 99 25 L 93 30 L 86 31 L 90 40 L 87 45 L 89 47 L 91 53 L 98 60 Z" />
				
					<path id="충청북도" onclick="myFun('chungbuk')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 145 148 L 152 152 L 154 152 L 155 148 L 157 140 L 159 138 L 161 140 L 169 143 L 176 142 L 171.5 148 L 189 149 L 192 151 L 199 150 L 186 160 L 184 169 L 175 167 L 162 171 L 163 175 L 156 175 L 156 185 L 151 182 L 149 185 L 154 191 L 155 200 L 150 207 L 158 208 L 164 215 L 159 217 L 155 226 L 146 227 L 140 224 L 135 218 L 136 213 L 133 209 L 133 208 L 132 203 L 140 199 L 124 193 L 127 186 L 131 182 L 127 178 L 128 173 L 121 163 L 128 160 L 128 155 L 133 155 L 135 155 L 140 147 Z" />
				
					<path id="대전광역시" onclick="myFun('daejeon')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 131 209 L 131 208 L 130 203 L 135 199 L 122 195 L 116 204 L 116 214 L 118 215 L 121 211 L 124 214 Z" />
				
					<path id="세종특별자치시" onclick="myFun('sejong')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 125 186 L 129 182 L 125 178 L 126 173 L 121 166 L 118 170 L 117 181 L 123 190 Z" />
				
					<path id="충청남도" onclick="myFun('chungnam')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 119 166 L 116 170 L 115 181 L 121 190 L 119 196 L 114 204 L 113 214 L 118 218 L 121 214 L 125 216 L 132 211 L 135 218 L 139 225 L 134 225 L 131 231 L 120 219 L 115 222 L 112 220 L 107 223 L 102 216 L 93 216 L 91 222 L 80 227 L 73 221 L 76 217 L 73 207 L 75 206 L 71 202 L 75 198 L 71 190 L 72 183 L 68 175 L 65 182 L 57 173 L 65 164 L 71 168 L 77 167 L 74 160 L 75 153 L 81 163 L 88 162 L 90 174 L 100 166 L 101 162.5 L 106 164 L 110 161 L 117 163.5 L 120 164 Z" />
				
					<path id="전라북도" onclick="myFun('jeollabuk')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 142 227 L 136 227 L 131 233 L 120 221 L 115 224 L 112 222 L 107 225 L 102 218 L 93 218 L 91 224 L 80 229 L 77 238 L 85 238 L 83 242 L 84 248 L 77 249 L 65 259 L 78 264 L 70 268 L 71 274 L 75 276 L 81 273 L 86 264 L 95 268 L 101 267 L 102 271 L 101 277 L 104 279 L 116 277 L 122 280 L 128 275 L 137 279 L 139 273 L 139 265 L 135 258 L 138 252 L 148 237 L 154 235 L 155 228 L 150 230 Z" />
				
					<path id="광주광역시" onclick="myFun('gwangju')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 77 292 L 78 284 L 84 283 L 90 285 L 94 281 L 101 288 L 98 298 L 92 298 L 89 300 L 85 298 L 85 294 L 80 291 L 78 293 L 77 292 Z" />
				
					<path id="전라남도" onclick="myFun('jeollanam')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 68 270 L 70 276 L 75 278 L 81 275 L 86 266 L 95 270 L 101 269 L 102 273 L 101 279 L 104 281 L 116 279 L 122 282 L 128 277 L 137 281 L 135 290 L 144 301 L 144 310 L 140 309 L 138 315 L 132 313 L 135 321 L 141 319 L 140 328 L 134 326 L 133 333 L 131 333 L 130 319 L 120 325 L 121 329 L 125 337 L 115 345 L 106 339 L 111 337 L 111 332 L 115 334 L 116 327 L 105 330 L 98 333 L 93 334 L 94 346 L 87 347 L 81 336 L 78 343 L 70 355 L 63 354 L 63 343 L 66 341 L 63 336 L 71 335 L 64 326 L 74 321 L 69 313 L 61 319 L 62 306 L 58 305 L 61 300 L 55 288 L 63 277 L 63 273 L 68 270 Z M 77 292 L 78 293 L 80 291 L 85 294 L 85 298 L 89 300 L 92 298 L 98 298 L 101 288 L 94 281 L 90 285 L 84 283 L 78 284 L 77 292 Z" />
				
					<path id="경상북도" onclick="myFun('gyeongbuk')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 198 153 L 188 160 L 186 171 L 177 169 L 165 172 L 166 177 L 158 177 L 158 187 L 152 185 L 151 185 L 156 191 L 157 200 L 153 205 L 161 207 L 166 216 L 161 218 L 157 226 L 156 236 L 160 241 L 168 241 L 173 253 L 180 256 L 178 252 L 183 250 L 182 246 L 189 241 L 184 238 L 186 232 L 193 232 L 200 230 L 203 233 L 207 241 L 200 249 L 194 248 L 191 254 L 193 259 L 201 260 L 207 264 L 215 258 L 220 259 L 229 249 L 238 255 L 240 251 L 246 255 L 250 240 L 252 232 L 248 235 L 241 235 L 244 227 L 242 213 L 246 176 L 245 157 L 241 144 L 233 154 L 230 156 L 224 152 L 211 155 L 208 151 L 206 155.5 L 200 151 L 198 153 Z M 273 145 L 276 142 L 278 141 L 283 140 L 280 148 L 276 147 L 275 145 L 273 145 Z M 306 150 L 310 150 L 309 152 Z M 311 152 L 315 150 L 314 152 Z" />
				
					<path id="대구광역시" onclick="myFun('daegu')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 184 258 L 180 253 L 185 251 L 184 247 L 191.5 241 L 185.5 237 L 187.5 234 L 193 234 L 200 232 L 201.5 235 L 205.5 241 L 199.5 247 L 193 247 L 189.5 253 L 191 259 L 186 256 L 184 258 Z" />
					
					<path id="경상남도" onclick="myFun('gyeongnam')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 147 301 L 138 288 L 141 275 L 142 264 L 138 258 L 142 251 L 146 244 L 152 238 L 155 238 L 159 243 L 166 244 L 172 256 L 180 258 L 184 261 L 186 259 L 192 262 L 198 262 L 208 267 L 213 262 L 219 260 L 216 264 L 221 268 L 229 272 L 229 276 L 220 284 L 213 287 L 205 300 L 194 296 L 194 302 L 184 301 L 181 307 L 186 308 L 181 315 L 181 318 L 175 315 L 168 317 L 162 313 L 161 304 L 157 304 L 154 309 L 151 308 L 146 312 Z" />
				
					<path id="울산광역시" onclick="myFun('ulsan')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 224 258 L 229.5 251 L 238 257 L 241 253 L 245 257 L 245 272 L 241 271 L 238 278 L 231 274 L 232 271 L 224 267 L 219 264 L 222 260 Z" />
					
					<path id="부산광역시" onclick="myFun('busan')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 232 277 L 224 284 L 215 289 L 213 293 L 209 298 L 212 299 L 217 299 L 220 303 L 225 302 L 231 296 L 232 290 L 239 282 L 235 279 Z" />
					
					<path id="제주도" onclick="myFun('jeju')" style="cursor: pointer; stroke-linejoin: round; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" fill="#ffffff" stroke="#666666" stroke-linejoin="round" stroke-width="0.5" d="M 96 377 L 105 367 L 120 368 L 126 365 L 134 365 L 142 370 L 136 380 L 127 384 L 114 386 L 104 384 L 100 385 L 94 377 Z" />
				</g>
			</svg>
			<div id="city" float=left;></div>
	
	<script type="text/javascript" src="scripts/jquery-3.1.1.js"></script>
	<script type="text/javascript">
		$("g").mouseover(function(event) {
			var _path = event.target;
			var city_name = _path.id;
			var new_p = document.createElement('p');
			var province = $(_path).parent()[0].id;
			if(city_name=="경기도"){ d3.select(_path).style("fill", "#a0e516"); }
			if(city_name=="서울"){ d3.select(_path).style("fill", "#ffc021"); }
			if(city_name=="인천"){ d3.select(_path).style("fill", "#fffb21"); }
			if(city_name=="강원도"){ d3.select(_path).style("fill", "#ff7259"); }
			if(city_name=="충청북도"){ d3.select(_path).style("fill", "#0f8c11"); }
			if(city_name=="대전광역시"){ d3.select(_path).style("fill", "#b563d8"); }
			if(city_name=="세종특별자치시"){ d3.select(_path).style("fill", "#63ced8"); }
			if(city_name=="충청남도"){ d3.select(_path).style("fill", "#4aa6db"); }
			if(city_name=="전라북도"){ d3.select(_path).style("fill", "#166193"); }
			if(city_name=="광주광역시"){ d3.select(_path).style("fill", "#c3bef7"); }
			if(city_name=="전라남도"){ d3.select(_path).style("fill", "#ff6ddd"); }
			if(city_name=="경상북도"){ d3.select(_path).style("fill", "#b8ff8c"); }
			if(city_name=="대구광역시"){ d3.select(_path).style("fill", "#ff3f3f"); }
			if(city_name=="울산광역시"){ d3.select(_path).style("fill", "#7cbf00"); }
			if(city_name=="부산광역시"){ d3.select(_path).style("fill", "#f95480"); }
			if(city_name=="제주도"){ d3.select(_path).style("fill", "#ffd059"); }
			if(city_name=="경상남도"){ d3.select(_path).style("fill", "#595eff"); }
			d3.select(_path).style("stroke", "#cccccc");
			console.log(province, city_name);
		}).mouseout(function(event) {
			var _path = event.target;
			d3.select(_path).style("fill", "#ffffff");
			d3.select(_path).style("stroke", "#666666");
		});
		 
		function myFun(v){
			var map;
			if(v == "gyeonggi"){ map = "city/gyeonggi.jsp" ;}
			if(v == "busan"){ map = "city/busan.jsp" ;}
			if(v == "chungbuk"){ map = "city/chungbuk.jsp" ;}
			if(v == "chungnam"){ map = "city/chungnam.jsp" ;}
			if(v == "daegu"){ map = "city/daegu.jsp" ;}
			if(v == "daejeon"){ map = "city/daejeon.jsp" ;}
			if(v == "gangwon"){ map = "city/gangwon.jsp" ;}
			if(v == "gwangju"){ map = "city/gwangju.jsp" ;}
			if(v == "gyeongbuk"){ map = "city/gyeongbuk.jsp" ;}
			if(v == "gyeongnam"){ map = "city/gyeongnam.jsp" ;}
			if(v == "incheon"){ map = "city/incheon.jsp" ;}
			if(v == "jeju"){ map = "city/jeju.jsp" ;}
			if(v == "jeollabuk"){ map = "city/jeollabuk.jsp" ;}
			if(v == "jeollanam"){ map = "city/jeollanam.jsp" ;}
			if(v == "sejong"){ map = "city/sejong.jsp" ;}
			if(v == "seoul"){ map = "city/seoul.jsp" ;}
			if(v == "ulsan"){ map = "city/ulsan.jsp" ;}
			$.ajax({
				url: map,
				data : {msg : "kdata"},
				method: "post",
				dataType:"html",
				success: function(result) {
					$("#city").html(result);
				}
			});
		}
	</script>
	
			
</body>
</html>
