<portfolio-app>
	<header class="flex-grid">
        <div class="col full brand">Felix Michel<br /><span class="byline">journalist & coder</span></div>
        
        <nav class="col full">
            <ul>
                <li><a class="active" href="#">Projekte</a></li>
                <li><a href="#">Über mich</a></li>
                <li><a href="#">Kontakt</a></li>
            </ul>
        </nav>
    </header>
    <main class="flex-grid">

        <!-- introduction -->
        	<div class="col twothirds">
        		<p class="intro">{ opts.content[0].intro }<p>
        	</div>
    	
    		<div class="col onethird">
    			» <a>Twitter<br /></a>
        		» <a>Github</a>
    		</div>

        <!-- content -->
        <article class="flex-grid" each="{ entry in opts.content[0].main }">
        	<div class="col full title">
        		<h1>{ entry.title }</h1>
        	</div>

        	<div class="col twothirds">
        		<img class="teaser" src={ entry.image }>
        		<p class="description">{ entry.description }</p>
        	</div>

	    	<div class="col onethird">
	        	» <a>zum Artikel<br /></a>
	        	» <a>Code & Analyse<br /></a>
	        	» <a>Werkstattbericht</a>
	    	</div>
        	
        </article>
        

    </main>

    <footer></footer>

    <script type="text/babel">

    </script>
</portfolio-app>