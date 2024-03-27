<template>
	<Layout>
		<div class="layout-container" style="width: 100%">
			<div class="page-header">
				<div class="am-container">
					<h1 class="page-header-title">About Us</h1>
				</div>
			</div>
			
			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/">Home</router-link></li>
						<li class="am-active">About Us</li>
					</ol>
				</div>
			</div>
		</div>
		
		
		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">{{companyInfo.name}}</h2>
					<p class="section--description">{{companyInfo.introduction}}</p>
				</div>
				
				<div class="about-container">
					<div class="am-g">
						<div class="am-u-md-6">
							<div class="our-company-text">
								<h3>Here's what you want</h3>
								<p>
									Shenzhen WUZHUQ Electronics Co., Ltd is focused on high-end TWS bluetooth earbuds design, development, production and sales. It is a very professional factory on TWS earbuds. Company owned of ID engineer, structer engineer, electronics engineer and other professional engineers, have more than 200 professional production workers. Our products are very popular and loved by worldwide customers, provide high quality and inexpensive products is our final goals. Customer first is our company service tent, serve for each customer carefully and produce each products carefully.  We can supply customized service, welcome your OEM&ODM orders. Hope to cooperate and grow up with you together.

								</p>
								
							</div>
						</div>
						
						<div class="am-u-md-6">
							<div class="our-company-quote">
								<div class="am-g">
									<div class="am-u-md-6">
										<div class="our-company-img">
											<img src="../assets/images/about/ben.png" alt="" />
										</div>
									</div>
									
									<div class="am-u-md-6">
										<p class="our-company-brief">
											<br>AT68
											<br>Dual Mic ENC + ANC
											<br>USD12.14
											<br>RMB85
											<br>Chip: JL 7003D8
											<br>earbuds battery: 40 mAh
											<br>Charging case battery: 500 mAh
											<br>Speaker: Φ13
											<br>Play time: 7-8Hours
										</p>
										<!-- <div class="our-company-quote_author"><strong>General Manager Zhong</strong><span>Founder of Shenzhen WuZhuQ Electronic Co.,LTD</span></div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--about-container end-->
			</div>
		</div>
		
		<hr class="section_divider -narrow">
		
		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">Our purpose</h2>
					<p class="section--description">
						让人们无论使用任何设备都能安全高效获取信息
						<br>One Web，Any Device
					</p>
				</div>
				
				<div class="about-container">
					<div class="our-mission">
						<div class="am-g">
							<div class="am-u-md-3">
								<div class="our_mission--item">
									<div class="figure our_mission--item_media"><img src="../assets/images/about/f02.jpg" alt=""></div>
									<h3 class="our_mission--item_title">Quality</h3>
									<div class="our_mission--item_body">
										<p>
											全球领先的HTML5解决方案供应商，安全高效解决企业移动化
										</p>
										<ul>
											<li>快捷的移动适配开发</li>
											<li>统一的办公通讯门户</li>
											<li>完善的安全管理平台</li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="am-u-md-3">
								<div class="our_mission--item">
									<div class="figure our_mission--item_media"><img src="../assets/images/about/f03.jpg" alt=""></div>
									<h3 class="our_mission--item_title">Duty</h3>
									<div class="our_mission--item_body">
										<p>
											国产最流行的开源HTML5前端框架，组件丰富，为HTML5开发加速
										</p>
										<ul>
											<li>持续改进 </li>
											<li>追求卓越品质</li>
											<li>为顾客创造价值</li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="am-u-md-3">
								<div class="our_mission--item">
									<div class="figure our_mission--item_media"><img src="../assets/images/about/f04.jpg" alt=""></div>
									<h3 class="our_mission--item_title">Integrity</h3>
									<div class="our_mission--item_body">
										<p>
											全球领先的HTML5解决方案供应商，安全高效解决企业移动化
										</p>
										<ul>
											<li>平等包容</li>
											<li>互利共赢</li>
											<li>与事业伙伴同成长</li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="am-u-md-3">
								<div class="our_mission--item">
									<div class="figure our_mission--item_media"><img src="../assets/images/about/f01.jpg" alt=""></div>
									<h3 class="our_mission--item_title">Guarantee</h3>
									<div class="our_mission--item_body">
										<p>
											全球领先的HTML5解决方案供应商，安全高效解决企业移动化
										</p>
										<ul>
											<li>快捷的移动适配开发</li>
											<li>统一的办公通讯门户</li>
											<li>完善的安全管理平台</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<hr class="section_divider -narrow">
		
		
		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">Our team</h2>
					<p class="section--description">
						成员既有超级学霸（来自Harvard、Google、香港科技大学、中国科技大学），
						<br>也有来自行业的技术大拿。
					</p>
				</div>
				
				<div class="about-container">
					<div class="our-team">
						<div class="am-g">
							<div class="am-u-md-3 am-u-end" v-for="(designer,index) in designers" :key="index">
								<div class="team-box">
									<div class="our-team-img" style="height: 304px;overflow: hidden">
										<img :src="designer.avatar" style="height: auto" alt=""/>
									</div>
									<div class="team_member--body">
										<h3 class="team_member--name">{{designer.name}}</h3>
										<span class="team_member--position">{{designer.content}}</span>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</Layout>
</template>

<script>
import Layout from "@/components/common/Layout";
export default {
	name: "AboutView",
	components: {Layout},
	data(){
		return{
			companyInfo:{},
			designers:[],
		}
	},
	mounted() {
		this.getCompanyInfo()
		this.getDesigners()
	},
	methods:{
		getCompanyInfo(){
			this.getRequest("/findCompanyInfo").then(resp =>{
				if (resp){
					this.companyInfo = resp.data.data
				}
			})
		},
		getDesigners(){
			this.getRequest("/findDesigners").then(resp =>{
				if (resp){
					this.designers = resp.data.data
				}
			})
		}
		
	}
}
</script>

<style scoped>

</style>
