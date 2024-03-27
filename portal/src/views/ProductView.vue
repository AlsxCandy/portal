<template>
	<Layout>
		<div class="layout-container" style="width: 100%">
			<!-- <div class="carousel">
					<div class="slide" v-for="(image, index) in images" :key="index" :style="{ backgroundImage: 'url(' + image + ')' }">
					</div>
				</div> -->
			<!-- <div class="solution-page">
				<div class="carousel">
					<div class="carousel-inner" ref="carouselInner">
						<div class="carousel-item" v-for="(item, index) in slideshow" :key="index">
							<img :src="item.imageUrl" :alt="item.alt" >
						</div>
					</div>
					<button @click="prev">prev</button>
					<button @click="next">next</button>
				</div>
			</div> -->
			<div class="carousel">
					<div class="carousel-inner" ref="carouselInner">
						<div class="carousel-item" v-for="(item, index) in slideshow" :key="index">
							<img :src="item.imageUrl" :alt="item.alt" >
						</div>
					</div>
					<!-- <button @click="prev">prev</button>
					<button @click="next">next</button> -->
				</div>
		</div>
		<div class="layout-container" style="width: 100%">
			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/">Home</router-link></li>
						<li class="am-active">Products</li>
					</ol>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">Product category display</h2>
					<p class="section--description">
						We have a wide range of products covering a wide range of businesses
					</p>
				</div>

				<div class="solution-container">
					<div data-am-widget="tabs" class="am-tabs ">
						<ul class="am-tabs-nav am-cf">
							<li v-for="(tab, index) in tabList" :key="index" @click.prevent="changeTab(index, tab.typeId)"
								:class="tabIndex === index ? 'am-active' : ''">
								<a href="#">{{ tab.typeName }}</a>
							</li>
						</ul>
						<div class="am-tabs-bd">
							<div class=am-tabs-tab>
								<div class="am-tab" v-for="(goods, index) in goodsList" :key="index"
									@click="handleDetails(goods.typeDetaisId)">
									<img :src="goods.imageUrl1" alt="">
									<p>{{ goods.title }}</p>
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
	name: "ProductView",
	components: { Layout },
	data() {
		return {
			tabList: [],
			list: [],
			tabIndex: 0,
			goodsList: [],
			currentIndex: 0,
			intervalId: null,
			// items: [
			// 	{ image: '../assets/images/about/ben.png', alt: 'Image 1'},
			// 	{ image: '../assets/images/about/ben.png', alt: 'Image 2'},
			// 	{ image: '../assets/images/about/ben.png', alt: 'Image 3'}
			// ]
			slideshow:[],
		}
	},
	mounted() {
		this.getTabList()
		this.getGoodsList(1)
		this.startAutoplay()
		this.getSlideshow()
		this.$refs.carouselInner.addEventListener('mouseover', this.stopAutoplay)
		this.$refs.carouselInner.addEventListener('mouseout', this.startAutoplay);
	},
	methods: {
		getTabList() {
			this.getRequest("/findAllType").then(resp => {
				if (resp) {
					this.tabList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		},
		changeTab(index, typeId) {
			this.tabIndex = index
			console.log(typeId)
			this.getGoodsList(typeId)
		},
		getGoodsList(typeId) {
			this.getRequest(`/findTypeDetailsByTypeId/${typeId}`).then(resp => {
				if (resp) {
					this.goodsList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		},
		getSlideshow() {
			this.getRequest("/findAllSlideshow").then(resp => {
				if (resp) {
					this.slideshow = resp.data.data
					// console.log(this.slideshow)
				}
			})
		},
		next() {
			this.currentIndex = (this.currentIndex + 1) % this.slideshow.length;
			this.updateCarousel();
		},
		prev() {
			this.currentIndex = (this.currentIndex - 1 + this.slideshow.length) % this.slideshow.length;
			this.updateCarousel();
		},
		updateCarousel() {
			this.$refs.carouselInner.style.transform = `translateX(-${this.currentIndex * 100}%)`;
		},
		startAutoplay() {
			this.intervalId = setInterval(this.next, 3000); // 每3秒切换到下一个
		},
		stopAutoplay() {
			clearInterval(this.intervalId);
		}
	},
	beforeDestroy() {
		this.stopAutoplay();
		this.$refs.carouselInner.removeEventListener('mouseover', this.stopAutoplay);
		this.$refs.carouselInner.removeEventListener('mouseout', this.startAutoplay);
	}
}
</script>

<style scoped>
.carousel {
	position: relative;
	width: 100%;
	overflow: hidden;
}

.carousel-inner {
	display: flex;
	transition: transform 1s ease;
}

.carousel-item {
	flex: 0 0 100%;
	text-align: center;
}

.carousel-item img {
	width: 100%;
	height: 300px;
	display: block;
	margin: 0 auto;
}

button {
	cursor: pointer;
	padding: 10px 20px;
	margin-top: 10px;
}

</style>
