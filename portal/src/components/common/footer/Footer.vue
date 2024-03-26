<template>
	<div class="footer">
		<div style="background-color:#383d61" class="footer--bg"></div>
		<div class="footer--inner">
			<div class="am-g">
				<div class="am-u-md-3 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">Products</strong>
						<ul class="footer_navigation">
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">TWS Wireless earbuds</router-link></li>
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">Smart watch</router-link></li>
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">Bluetooth speaker</router-link></li>
						</ul>
					</div>
				</div>
				<div class="am-u-md-6 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">Location</strong>
						<div class="footer_about">
							<!-- <p class="footer_about--text" id="cont">
								
							</p> -->
							<div id="container"></div>
							<div class="custom-content-marker">
							<!-- <img src="../../../assets/images/location.png"/>△</div> -->
							</div>
							
						</div>
					</div>
				</div>
				<div class="am-u-md-3 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">Contact Details</strong>
						<ul class="footer_contact_info">
							<li class="footer_contact_info--item"><i class="am-icon-phone"></i><span>Service line：+8613360527236</span></li>
							<li class="footer_contact_info--item"><i class="am-icon-wechat"></i><span>WeChat：+8613360527236</span></li>
							<li class="footer_contact_info--item"><i class="am-icon-envelope-o"></i><span>E-mail: zjuly7580@gmail.com </span></li>
							<li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span>Add: 301-B012, Building 2, No.1 Ma Wu Road, Baoan Community, Yuanshan Street, Longgang District, Shenzhen</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import { SiWechat } from "oh-vue-icons/icons"
</script>
<script>
export default {
	name: "Footer"
}
</script>

<script>
import AMapLoader from "@amap/amap-jsapi-loader";
const markerContent = document.querySelector(".custom-content-marker")

const position = new AMap.LngLat(114.214461, 22.64337); //Marker 经纬度
const marker = new AMap.Marker({
  position: position,
  content: markerContent, //将 html 传给 content
  offset: new AMap.Pixel(-13, -30), //以 icon 的 [center bottom] 为原点
});

export default {
  name: "map-view",
  mounted() {
    this.initAMap();
  },
  unmounted() {
    this.map?.destroy();
  },
  methods: {
    initAMap() {
      AMapLoader.load({
        key: "52bfd2a11652179dbe45fb87eaf41c96", // 申请好的Web端开发者Key，首次调用 load 时必填
        version: "1.4.15", // 指定要加载的 JSAPI 的版本，缺省时默认为 1.4.15
        plugins: ["AMap.Scale"], //需要使用的的插件列表，如比例尺'AMap.Scale'，支持添加多个如：['...','...']
      })
        .then((AMap) => {
          this.map = new AMap.Map("container", {
            // 设置地图容器id
            viewMode: "3D", // 是否为3D地图模式
            zoom: 14, // 初始化地图级别
            center: [114.214461, 22.64337], // 初始化地图中心点位置
          });
          this.map.add(marker)
        })
        // .then((AMap)=>{
			
		    // })
        // .catch((e) => {
        //   console.log(e);
        // })
    }
  }
}
</script>


 /* <!-- <script src="https://webapi.amap.com/maps?v=1.4.15&key=52bfd2a11652179dbe45fb87eaf41c96"></script> --> */

<style scoped>
  #container{
        padding:0px;
        margin: 0px;
        width: 300px;
        height: 220px;
    }
  .custom-content-marker {
  position: relative;
  width: 25px;
  height: 34px;
}

.custom-content-marker img {
  width: 10px;
  height: 10px;
}

.custom-content-marker .close-btn {
  position: absolute;
  top: -6px;
  right: -8px;
  width: 15px;
  height: 15px;
  font-size: 12px;
  background: #ccc;
  border-radius: 50%;
  color: #fff;
  text-align: center;
  line-height: 15px;
  box-shadow: -1px 1px 1px rgba(10, 10, 10, .2);
}

.custom-content-marker .close-btn:hover{
  background: #666;
}
</style>
