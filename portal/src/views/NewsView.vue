<template>
	<Layout>
		<div class="layout-container" style="width: 100%">
			<div class="page-header">
				<!-- <div class="am-container">
					<div style=" width: 100%;height: 498px;">
						<img src="../assets/images/product/音响02.jpg" style="width: 100%; height: 498px">

					</div>
					<h1 class="page-header-title">Company dynamics</h1>
				</div> -->
			</div>

			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/">Home</router-link></li>
						<li class="am-active">Product dynamics</li>
					</ol>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">Latest product</h2>
					<p class="section--description">
						Here's our new product. Check it out
					</p>
				</div>

				<div class="news-contaier">
					<div class="blog">
						<div class="am-g">
							<div class="am-u-lg-4 am-u-md-6 am-u-end" v-for="(article, index) in articles.records"
								:key="index">
								<div class="article">
									<div class="article-img">
										<img :src="article.cover" alt="" />
									</div>
									<div class="article-header">
										<h2><router-link :to="{ name: 'newsDetails', params: { newsId: article.articleId } }"
												rel="">{{ article.title }}</router-link></h2>
										<ul class="article--meta">
											<li class="article--meta_item -date">{{ article.createTime }}</li>
										</ul>
									</div>
									<div class="article--content">
										<p>{{ article.introduction }}</p>

									</div>
									<div class="article--footer">
										<router-link :to="{ name: 'newsDetails', params: { newsId: article.articleId } }"
											class="link">About more</router-link>
									</div>
								</div>
							</div>
						</div>

						<ul class="am-pagination" style="text-align: center;">
							<li :class="pageIndex === 1 ? 'am-disabled' : ''" @click="changeIndex(pageIndex - 1)">
								<a href="#">&laquo;</a>
							</li>

							<li v-for="(p, index) in articles.pages" :key="index" @click="changeIndex(p)"
								:class="pageIndex === p ? 'am-active' : ''">
								<a href="#">{{ p }}</a>
							</li>

							<li :class="pageIndex === articles.pages ? 'am-disabled' : ''"
								@click="changeIndex(pageIndex + 1)">
								<a href="#">&raquo;</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>

	</Layout>
</template>

<script>
import Layout from "@/components/common/Layout";
export default {
	name: "NewsView",
	components: { Layout },
	data() {
		return {
			articles: {},
			pageIndex: 1,
		}
	},
	mounted() {
		this.getArticle(1)
	},
	methods: {
		getArticle(pageIndex) {
			this.getRequest(`/findArticles/${pageIndex}`).then(resp => {
				if (resp) {
					this.articles = resp.data.data
					console.log(this.articles)

				}
			})
		},
		changeIndex(p) {
			if (p === 0) {
				this.pageIndex = 1
			} else if (p === this.articles.pages + 1) {
				this.pageIndex = this.articles.pages
			} else {
				this.pageIndex = p;
				this.getArticle(p)
			}
		}
	}
}
</script>

<style scoped></style>
