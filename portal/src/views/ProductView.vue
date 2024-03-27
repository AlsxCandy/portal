<template>
	<Layout>
		<div class="layout-container" style="width: 100%">
				<!-- <div class="carousel">
					<div class="slide" v-for="(image, index) in images" :key="index" :style="{ backgroundImage: 'url(' + image + ')' }">
					</div>
				</div> -->
				<div class="solution-page">

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
							<li v-for="(tab,index) in tabList"
								:key="index"
								@click.prevent="changeTab(index,tab.typeId)"
								:class="tabIndex === index ? 'am-active':''">
								<a href="#">{{tab.typeName}}</a>
							</li>
						</ul>
						<div class="am-tabs-bd">
							<div class=am-tabs-tab>
								<div class="am-tab"
									v-for="(goods,index) in goodsList"
									:key="index"
									@click="handleDetails(goods.typeDetaisId)">
									<img :src="goods.imageUrl1" alt="">
									<p>{{goods.title}}</p>
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
	components: {Layout},
	data(){
		return{
			tabList:[],
			list:[],
			tabIndex: 0,
			goodsList:[]
		}
	},
	mounted() {
		this.getTabList()
		this.getGoodsList(1)
	},
	methods:{
		getTabList(){
			this.getRequest("/findAllType").then(resp =>{
				if (resp){
					this.tabList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		},
		changeTab(index,typeId){
			this.tabIndex = index
			console.log(typeId)
			this.getGoodsList(typeId)
		},
		getGoodsList(typeId){
			this.getRequest(`/findTypeDetailsByTypeId/${typeId}`).then(resp =>{
				if (resp){
					this.goodsList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		}
	}
}
</script>

<style scoped>



</style>
