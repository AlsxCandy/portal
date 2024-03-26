<template>
	<div class="header-wrapper" >
		<div class="header">
			<div class="header-left">
				<img src="../../../assets/images/logo.png" alt="">
			</div>
			<div class="header-mid">
				<div class="header-item">
					<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
					<div class="item">
						<strong>+8613360527236</strong>
						<span>Monday to Friday, 8:30-17:30</span>
					</div>
				</div>
				<div class="header-item">
					<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
					<div class="item">
						<strong>Longgang District, Shenzhen</strong>
						<span>Shenzhen WuZhuQ Electronic Co.,LTD</span>
					</div>
				</div>
			</div>
			<div class="header-right">
				<a href="tel:+8618583266628" class="">
					<button type="button" >Contact Us</button>
				</a>
			</div>
		</div>
		
		<div class="nav-wrapper header-default">
			<div class="nav">
				<ul class="am-nav am-nav-pills am-nav-justify">
					<li><router-link class="router" to="/index">Home</router-link></li>
					<li><router-link class="router" to="/product">Products</router-link></li>
					<li><router-link class="router" to="/example">Customers</router-link></li>
					<li><router-link class="router" to="/news">News</router-link></li>
					<li><router-link class="router" to="/about">About</router-link></li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
import AppFunctions from "@/utils/AppFunctions";
export default {
	name: "Header",
	components: {},
	data(){
		return{
			AppFunctions,
			
		}
	},
	methods: {
		toggleStickyHeader() {
			const scrolled = document.documentElement.scrollTop;
			if (scrolled > 100) {
				AppFunctions.addClass('.header-default', 'sticky');
			} else if (scrolled <= 100) {
				AppFunctions.removeClass('.header-default', 'sticky');
			}
		},
	},
	created() {
		window.addEventListener('scroll', this.toggleStickyHeader);
	},
	mounted() {
		this.toggleStickyHeader();
	},
	beforeDestroy() {
		window.removeEventListener('scroll', this.toggleStickyHeader);
	}
	
}
</script>

<style scoped>
.router.router-link-active{
	/*color: #fff;*/
	/*background-color: #0e90d2;*/
	/*border: 1px solid #0e90d2;*/
	cursor: default;
	
	color: #0e90d2;
}

</style>
