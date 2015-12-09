<speak>
    <style>



    </style>
    <!-- html here -->
    <div class="homePageOuterMostDiv" >
        <div class="top" style="background: #d5da26">
            <div>
                <!--<img src="images/logotransp.jpg" height="100" width="100">-->
                <img class="mainLogo" src="images/logo_svg.svg" height="175" width="175"/>
            </div>
            <div class="bannerText">
                <div style="font-family: ShadowsL;font-weight: bold; color: purple; font-size: 50px;">Speak</div>
                <div style="font-family: RobotoCR">Voice over image slideshow</div>
                <div style="font-family: RobotoCB;font-style: italic;color: red">Get your voice heard</div>
            </div>
        </div>
        <div class="bottom" if="{startButtonWasClicked==false}">
            <div class="createNarrationText">CREATE NEW NARRATION</div>
            <div class="easyStepsText">
                In 3 easy steps:
                <ol>
                    <li>Enter title</li>
                    <li>Insert images</li>
                    <li>Record voice over image slideshow</li>
                </ol>
            </div>
            <div class="circleButton" onclick="{startButtonClicked}">START</div>
        </div>
        <div class="bottom page2" if="{ startButtonWasClicked && confirmButtonWasClicked==false }">
            <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 1</div>
            <p style="font-family: RobotoCR">Enter title or <a href="" style="font-family: RobotoCR;color: hotpink">I'll do this later</a></p>
            <input type="text" size="60" maxlength="100"/>
            <p style="font-family: RobotoCR">Enter your name</p><input type="text" size="40" maxlength="100"/>
            <p></p>
            <div class="circleButton" onclick="{confirmButtonClicked}" style="font-size: 25px">CONFIRM</div>
        </div>
        <div class="bottom page2" if="{ confirmButtonWasClicked && nextButtonWasClicked==false }">
            <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 2</div>
            <div style="font-family: RobotoCR">Insert images to illustrate your narration</div>
            <div class="browseDiv"><div class="circleButton extraSmall alignSelfFlexStart" style="font-size: 15px">Browse</div><input type="file" name="pic" accept="image/*"><div class="circleButton extraSmall" style="font-size: 15px;color: red">Add</div></div>
            <imagegallery imagelist="{images}" columnorrow="{'row'}"></imagegallery>
            <!--<div class="imageGallery rcornersBorder">
                <img class="galleryImage" each="{images}" src="{url}">
            </div>-->
            <div style="display: flex; flex-direction: row"><div style="font-family: RobotoCR">If you want to delete an image select it and click the delete button</div><div class="circleButton extraSmall" style="font-family: RobotoCR; font-size: 15px">Delete</div></div>
            <div style="font-family: RobotoCR">Drag and drop individual images for ordering images the way you want to show in your narration</div>
            <div class="circleButton" onclick="{nextButtonClicked}">NEXT</div>
        </div>
        <div class="bottom page2 rowLayout" if="{ nextButtonWasClicked }">
                <div class="columnLayout">
                    <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 3</div>
                    <div style="display: flex; flex-direction: row; font-family: RobotoCR; align-items: center; margin-bottom: 5px">
                        <div if="{ !recording }"class="circleButton redRecordButton" onclick="{recordButtonClicked}" style="font-size: 25px">Record</div>
                        <div if="{ recording }"class="circleButton redRecordButton stopButton" onclick="{stopButtonClicked}">Stop</div>
                    </div>
                    <div style="font-family: RobotoCR; flex-grow: 0; width: 400px">Click on thumbnail to switch image while recording</div>
                    <div class="imageGalleryTag">
                        <imagegallery imagelist="{images}" columnorrow="{'row'}" style="height: 100%;width: 100%"></imagegallery>
                    </div>
                 </div>
                <div class="roundedCornersBorder videoBorderNewSize">
                    <img src="{image.url}" each="{image, i in images}" show="{currentImageIndex==i}" width="800" height="450">
                </div>
        </div>

    </div>



    <script>
        app = this;
        app.startButtonWasClicked = false;
        app.confirmButtonWasClicked = false;
        app.nextButtonWasClicked = false;
        startButtonClicked(e){
            app.startButtonWasClicked = true;
        }
        confirmButtonClicked(e){
            app.confirmButtonWasClicked = true;
            //$(".top").append("<div class='circleButton small alignSelfFlexEnd redSmallButton absolutePositionGoBackButton' style='font-size: 20px'>Go back</div>");
        }
        nextButtonClicked(e){
            app.nextButtonWasClicked = true;
        }
        recordButtonClicked(e){
            Fr.voice.record();
            app.recording = true;
        }
        stopButtonClicked(e){
            console.log("Stop button clicked");
            Fr.voice.stop();
            app.recording = false;

            /*
            Fr.voice.export(
                function(url){
                    console.log("url =" + url);
                    $("<audio src='"+ url +"'></audio>").appendTo("body");
                    $("body audio:last")[0].play();
                },
                "URL"
            );
            */
        }
        app.images = [
            {
                url: "http://blog.jimdo.com/wp-content/uploads/2014/01/tree-247122.jpg"
            },
            {
                url: "http://www.quicksprout.com/images/foggygoldengatebridge.jpg"
            },
            {
                url: "http://www.esa.int/var/esa/storage/images/esa_multimedia/images/2014/12/multicoloured_view_of_supernova_remnant/15172784-1-eng-GB/Multicoloured_view_of_supernova_remnant_node_full_image_2.jpg"
            },
            {
                url: "http://saturn.jpl.nasa.gov/multimedia/images/moons/images/PIA07759.jpg"
            },
            {
                url: "http://masswallpapers.mobi/wp-content/uploads/images-9.jpg"
            },
            {
                url: "http://wowslider.com/sliders/demo-22/data1/images/nice_peafowl.jpg"
            },
            {
                url: "http://www.gettyimages.co.uk/gi-resources/images/Homepage/Category-Creative/UK/UK_Creative_462809583.jpg"
            }
        ];
        app.currentImageIndex = 0;
    </script>


</speak>

<imagegallery>
    <div class="imageGallery roundedCornersBorder" style="margin-bottom: 5px; flex-direction: {opts.columnorrow}">
        <div class="galleryImage" style="font-family: RobotoCR; font-size: 10px; border: solid">Should we believe in God by Nalini Chawla</div>
        <img class="galleryImage" each="{image, i in opts.imagelist}" src="{image.url}" onclick="javascript:galleryImageClicked({i})">



        
    </div>
</imagegallery>


