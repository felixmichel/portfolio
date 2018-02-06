<portfolio-app>
	<header class="flex-grid">
        <div class="col full brand">Felix Michel<br /><span class="byline">journalist & coder</span></div>
        
        <nav class="col full">
            <ul>
            	<li each="{ nav_element in opts.content[0].nav }" class="nav-element { is-active: parent.isActiveNav(nav_element.id) }" onclick={ parent.toggleNav }>{nav_element.title}</li>
            </ul>
        </nav>
    </header>
    <main class="flex-grid">

        <!-- introduction -->
        	<div class="col twothirds">
        		<p class="intro" if={active_nav_item == "projects"}>
        			<raw content="{ opts.content[0].nav[0].content }"></raw>
        		<p>
        		<p class="intro" if={active_nav_item == "about"}>
        			<img class="img-circle" src="img/FelixMichel.jpg">
        			<raw content="{ opts.content[0].nav[1].content }"></raw>
        		<p>
        		<p class="intro" if={active_nav_item == "contact"}>
        			<raw content="{ opts.content[0].nav[2].content }"></raw>
        		<p>
        	</div>
    	
    		<div class="col onethird social">
    			» <a class="link" href="">Twitter<br /></a>
        		» <a class="link" href="">Github</a>
    		</div>


        <!-- projects -->
        <article class="flex-grid" if={active_nav_item == "projects"} each="{ entry in opts.content[0].main }">
        	<div class="col full title">
        		<h1><a href="{ entry.links[0].url }" target="_blank">{ entry.title }</a></h1>
        	</div>

        	<div class="col twothirds">
        		<figure>
        			<a href="{ entry.links[0].url }" target="_blank"><img class="teaser" src={ entry.image }></a>
        			<figcaption>{ entry.credit }</figcaption>
        		</figure>
        		<raw class="description" content="{ entry.description }"></raw>
        	</div>

	    	<div class="col onethird">
	        	<ul><li each="{ link in entry.links }">» <a class="link" href="{ link.url }" target="_blank">{ link.text }</a>
	    	</div>
        </article>

    </main>

    <footer class="flex-grid">
        <div class="col full">
        	<div class="hide-desktop">
        		<a class="link" href="https://twitter.com/felixmichel" target="_blank">Twitter</a>,
        		<a class="link" href="https://github.com/felixmichel/" target="_blank"> Github</a>, </div>
        	<a class="link" href="https://github.com/felixmichel/portfolio" target="_blank">Quellcode des Portfolios</a><span if={active_nav_item == "about"}>, Bild: Nils Fisch</span>
        </div>
    </footer>

    <script type="text/babel">

    this.active_nav_item = "projects"

    this.isActiveNav = (nav_item) => {
    	return this.active_nav_item === nav_item
	}

	this.toggleNav = (e) => {
    	this.active_nav_item = e.item.nav_element.id
    	return true
  	}

    </script>
</portfolio-app>
