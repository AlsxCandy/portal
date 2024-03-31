<template>
	<Layout>

		<div style="width: 100%">
			<div class="index-page">
				<div data-am-widget="tabs" class="am-tabs am-tabs-default">

					 <div class="am-tabs-bd">
						<div class="am-tab-panel am-active" v-if="slideshow.length > 0"
							:style="{ backgroundImage: `url(${slideshow[tabIndex].imageUrl})` }">
							<div class="index-banner">
								<div class="index-mask">
									<div class="container">
										<div class="am-g">
											<div class="am-u-md-10 am-u-sm-centered" style="text-align: center">
												<!-- <h1 class="slide_simple--title">企业移动化，首选云适配</h1>
												<p class="slide_simple--text am-text-left"
													style="display: flex;justify-content: center">
													全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
												</p> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> 

					<ul class="am-tabs-nav am-cf index-tab">
						<li v-for="(tab, index) in tabList" :key="index" :class="tabIndex === index ? 'am-active' : ''">
							<a href="#" @click.prevent="changeTab(index)">
								<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
									<i :class="tab.icon"></i>
								</div>
								<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
									<strong class="promo_slider_nav--item_title">{{ tab.name }}</strong>
									<p class="promo_slider_nav--item_description">{{ tab.desc }}</p>
								</div>
							</a>
						</li>
					</ul>

				</div>
			</div>
		</div>

	



		<div class="section">
			<div class="container" style="max-width: 1160px;">
				<div class="section--header">
					<h2 class="section--title">Core advantage</h2>
					<p class="section--description">
						Our electronic products boast exceptional quality, attractive pricing, a rich variety of options, and worry-free after-sales service, ensuring a delightful shopping experience.
						<br>Sure you don't want to?
					</p>
				</div>

				<div class="index-container">
					<div class="am-g">
						<div class="am-u-md-3" v-for="(advantage, index) in advantageList" :key="index">
							<div class="features_item">
								<a href="#">
									<img :src="advantage.cover" alt="" style="width: 262px;height: 198px;">
								</a>
								<h3 class="features_item--title">{{ advantage.title }}</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="section" style="border-bottom: 1px solid #e9e9e9; padding-top: 0">
			<div class="container" style="max-width: 1160px;">
				<div class="section--header">
					<h2 class="section--title">TWS Pro Series</h2>
					<p class="section--description">
						Experience the TWS Pro Series, where elite sound clarity meets sleek design. With powerful bass and intuitive controls, these earbuds redefine wireless audio excellence.
						
					</p>
				</div>

				<div class="index-container">
					<div class="am-g">
						<div class="am-u-md-3" v-for="(service, index) in serviceList" :key="index">
							<div class="service_item">
								<!-- <i class="service_item--icon" :class="service.icon"></i> -->
								
								<!-- <div class="service_item--text">
									<p>{{ service.desc }}</p>
								</div> -->
								<img :src="service.image" style="width: 200px;height: 200px;">
								<h3 class="service_item--title">{{ service.title }}</h3>


							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</Layout>
</template>


<script >
import Layout from "@/components/common/Layout";
// import 'swiper/swiper-bundle.css';
// import { Swiper, SwiperSlide } from 'vue-awesome-swiper';


export default {
	name: "IndexView",
	components: { Layout },
	data() {
		return {
			tabList: [
				{ name: 'TWS Wireless earbuds', desc: 'Unparalleled freedom', icon: 'am-icon-cog' },
				{ name: 'Smart watch', desc: 'Intelligent Companion', icon: 'am-icon-lightbulb-o' },
				{ name: 'Bluetooth speaker', desc: 'Powerful Compact', icon: 'am-icon-line-chart' },
				{ name: 'About Us', desc: 'Innovative Quality', icon: 'am-icon-hourglass-end' },
			],
			tabIndex: 0,
			currentIndex: 0,
			slideshow: [],
			swiperOptions: {
				loop: true,
				autoplay: {
				delay: 2000,
				disableOnInteraction: false
				},
				pagination: {
				el: '.swiper-pagination',
				clickable: true
				}
			},

			advantageList: [
				{ id: 1, cover: require('../assets/images/index/3.jpg'), title: 'HIF SOUND' },
				{ id: 2, cover: require('../assets/images/product/Air31.png'), title: 'High Fidelity, Comfortable, Durable'},
				{ id: 3, cover: require('../assets/images/product/f06.png'), title: 'Stylish, Functional, Innovative' },
				{ id: 4, cover: require('../assets/images/product/SKYGS-5.png'), title: 'Premium, Seamless, Advanced' },
			],
			serviceList: [
				{ id: 1, icon: 'am-icon-diamond', title: 'Mate50-Plus', desc: '' ,image: require('../assets/images/product/Mate50-Plus.png')},
				{ id: 2, icon: 'am-icon-user', title: 'Mate60-SE', desc: '' ,image: require('../assets/images/product/Mate60-SE.png')},
				{ id: 3, icon: 'am-icon-umbrella', title: 'Y30', desc: '' ,image: require('../assets/images/product/Y30.png')},
				{ id: 4, icon: 'am-icon-briefcase', title: 'Pro60', desc: '' ,image: require('../assets/images/product/Pro60.png')}
			]
		}
	},
	mounted() {
		this.getSlideshow()

	},

	methods: {
		changeTab(index) {
			this.tabIndex = index
		},
		getSlideshow() {
			this.getRequest("/findAllSlideshow").then(resp => {
				if (resp) {
					this.slideshow = resp.data.data
					// console.log(this.slideshow)
				}
			})
		},
	}
}
</script>



<!-- <style scoped></style> -->
<style scoped>
.swiper-container {
  width: 100%;
  height: 200px; /* Adjust the height as needed */
}

</style>

