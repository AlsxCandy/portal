<template>
    <Layout>
<div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{"controlNav":"thumbnails","directionNav":false}' >
  <ul class="am-slides">
      <li v-for="(image,index) in slideshow" :key="index">
        <img :src="image.imageUrl" alt="#">
      </li>
      
  </ul>
</div>

</Layout>
</template>

<script>

import Layout from "@/components/common/Layout";
export default{
    name:"Slider",
    components:{Layout},
    data(){
        return{
            slideshow: [],
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