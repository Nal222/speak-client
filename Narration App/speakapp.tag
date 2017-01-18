<speak>
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
        <div class="bottom" if="{pageName == 'introPage'}">
            <div class="createNarrationText">CREATE NEW NARRATION</div>
            <!--<flashinghello></flashinghello>-->
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
        <div class="bottom page2" if="{ app.pageName == 'registerPage' }">
            <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 1</div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter title or <a href="" style="font-family: RobotoCR;color: hotpink">I'll do this later</a>
                </p>&nbsp
                <!-- TODO: Factor these out into a separate tag -->
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="titleInput"/>
                    <!--<div if="{confirmClicked && !title}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter your title</div>-->
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your username
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="usernameInput"/>
                    <div if="{confirmClicked && !username}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter username</div>
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your password
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="passwordInputFirst"/>
                    <div if="{confirmClicked && !passwordFirst}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a password</div>
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your password again
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="passwordInputSecond"/>
                    <div if="{confirmClicked && passwordFirst && !passwordSecond}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please confirm password</div>
                </div>
            </div>
            <p></p>
            <div class="circleButton" onclick="{confirmButtonClicked}" style="font-size: 25px">CONFIRM</div>
        </div>
        <div class="bottom page2" if="{ app.pageName == 'chooseImagesFromImageGalleryPage' }">
            <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 2</div>
            <div style="font-family: RobotoCR">Insert images to illustrate your narration</div>
            <div class="enterImageAddImageToGalleryFunctionality">
                    <!--<input type="file" name="pic" accept="image/*" class="file" onchange={makeFileNameShowFromFakeInput}>-->
                <div style="font-family: RobotoCR">Enter image URL</div>
                <div><input type="text" id="picture" style="width: 500px;"/></div>
                <div class="circleButton extraSmall" style="font-size: 15px;color: red" onclick="{addImageToImagegallery}">Add</div>
                            <!--
                            <div>{fileName}</div>
                            -->
                            <!--<img src="{fileName}" width="200"/>-->
                            <!--<div class="circleButton extraSmall" style="font-size: 15px">Browse</div>-->
                            <!--<input id="fakeInput" value="{fileName}" style="height:15px; width:200px"/>-->

                            <!--<img src="{previewImgSrc}" style="width: 50px; height: 50px"/>-->
            </div>

            <imagegallery sortable="{true}" imagelist="{app.images}" columnorrow="{'row'}"></imagegallery>
            <!--<div class="imageGallery rcornersBorder">
                <img class="galleryImage" each="{images}" src="{url}">
            </div>-->
            <div style="display: flex; flex-direction: row"><div style="font-family: RobotoCR">If you want to delete an image select it and click the delete button</div><div class="circleButton extraSmall" style="font-family: RobotoCR; font-size: 15px" onclick="{deleteSelectedImages}">Delete</div></div>
            <div style="font-family: RobotoCR">Drag and drop individual images for ordering images the way you want to show in your narration</div>
            <div class="circleButton" onclick="{app.nextButtonClicked}">NEXT</div>
        </div>
        <div class="bottom page2 rowLayout" if="{ app.pageName == 'recordNarrationPage' }">
                <div class="columnLayout">
                    <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 3</div>
                    <div style="display: flex; flex-direction: row; font-family: RobotoCR; align-items: center; margin-bottom: 5px">
                        <div if="{ !recordingButtonClicked }"class="circleButton redRecordButton" onclick="{recordButtonClicked}" style="font-size: 25px">Record</div>
                        <div if="{ recordingButtonClicked }"class="circleButton redRecordButton stopButton" onclick="{stopButtonClicked}">Stop</div>
                    </div>
                    <div style="font-family: RobotoCR; flex-grow: 0; width: 400px">Click on thumbnail to switch image while recording</div>
                    <div class="imageGalleryTag">
                        <imagegallery imagelist="{app.images}" columnorrow="{'row'}" style="height: 100%;width: 100%"></imagegallery>
                    </div>
                 </div>
                <div id="videoPlace" class="roundedCornersBorder videoBorderNewSize">
                    <img src="{image.url}" each="{image, i in images}" show="{currentImageUrl==image.url}" width="800" height="450">
                </div>
        </div>
    </div>



    <script>
        app = this;
        app.pageName = "introPage";
        startButtonClicked(e){
            app.pageName = "registerPage";
        }
        confirmButtonClicked(e){

            //$(".top").append("<div class='circleButton small alignSelfFlexEnd redSmallButton absolutePositionGoBackButton' style='font-size: 20px'>Go back</div>");
            app.confirmClicked = true;
            app.title = $("#titleInput").val();
            app.username = $("#usernameInput").val();
            app.passwordFirst = $("#passwordInputFirst").val();
            app.passwordSecond = $("#passwordInputSecond").val();


            //TODO: Message to request user to enter password with letters and numbers of 8 characters minimum


            //TODO: Only do $.post if client-side is validated

            if(app.username && app.passwordFirst && app.passwordSecond){
                console.log("I have reached where post is");
                $.post(
                    "http://192.168.1.248:5000/login",
                    {
                        title: app.title,
                        username: app.username,
                        password: app.passwordSecond

                    },
                    function( data ) {
                        alert( "Data Loaded: " + JSON.stringify(data) );
                        //TODO: only do this if server-side has found user name or password to be not taken.
                        app.pageName = "chooseImagesFromImageGalleryPage";
                        app.update();
                    }
                );
                /*
                var client = new XMLHttpRequest();
                client.open('POST', 'http://localhost:5000/login');
                client.send(
                    [
                        {
                            title: title,
                            username: username,
                            password: passwordSecond

                        }
                    ]
                );
                */

            }
            else{
                console.log("some empty input");
            }
        }

        nextButtonClicked(e){
            app.pageName = "recordNarrationPage";
        }

        var recordRTC;
        recordButtonClicked(e){
            app.recordingButtonClicked = true;
            function successCallback(mediaStream) {
                app.startTime = Date.now();

                console.log("Stream obtained. It is " + mediaStream);
                recordRTC = RecordRTC(
                    mediaStream,
                    {
                        type: 'audio',
                        mimeType: 'video/webm',
                        bufferSize: 1024,
                        sampleRate: 44100,
                        leftChannel: false,
                        disableLogs: false,
                        recorderType: null
                        //recorderType: webrtcDetectedBrowser === 'edge' ? StereoAudioRecorder : null
                    }
                );
                console.log("recordRTC IS " + recordRTC);
                app.slideSwitches.length = 0;
                recordRTC.startRecording();
                app.recording = true;
                // RecordRTC usage goes here
            }

            function errorCallback(errror) {
                // maybe another application is using the device
            }

            var mediaConstraints = { video: false, audio: true };

            navigator.mediaDevices.getUserMedia(mediaConstraints).then(successCallback).catch(errorCallback);
        }

        function onAudioStop(){
            console.log("setTimeoutIDArray is " + JSON.stringify(app.setTimeoutIDArray));
            app.setTimeoutIDArray.forEach(
                function(setTimeoutID){
                    clearTimeout(setTimeoutID);
                }
            );
            app.setTimeoutIDArray.length = 0;
        }

        stopButtonClicked(e){
            console.log("Stop button clicked");
            app.recordingButtonClicked = false;
            app.recording = false;
            recordRTC.stopRecording(
                function(url) {
                    console.log("url =" + url);
                    //$("<audio src='"+ url +"' id='myAudio'></audio>").appendTo("body");
                    //$("body audio:last")[0].play();
                    var aud = document.getElementById("myAudio");
                    console.log("audio variable = " + aud);
                    aud.onplay = playEvent;
                    console.log("onplay event reached");
                    aud.onplaying = playEvent;
                    console.log("onplaying event reached");
                    aud.onpause = aud.onsuspend = aud.onabort = aud.onerror = aud.onstalled = aud.onwaiting = aud.onended = stopEvent;
                    console.log("stop events reached");
                    aud.src = url;
                    totalDurationAudioPlayed = 0;
                    console.log("total duration audio played RESET " + totalDurationAudioPlayed);
                    aud.play();
                }
            );


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
        var audioStartTime = 0;
        var playing = false;
        function playEvent(){
            audioStartTime = Date.now();
            playing = true;
            console.log("PLAY EVENT USED");
            onAudioStart();

        }
        var totalDurationAudioPlayed = 0;
        function stopEvent(){
            onAudioStop();
            if(playing){
                var lastDurationAudioPlayedToAdd = Date.now() - audioStartTime;
                totalDurationAudioPlayed += lastDurationAudioPlayedToAdd;
            }
            playing = false;
        }
        app.setTimeoutIDArray = [];
        function onAudioStart(){
            console.log("onAudioStart() entered");
            app.slideSwitches.forEach(
                function(slideSwitch){
                console.log("forEach entered");
                if(slideSwitch.millisecondsfromStart>totalDurationAudioPlayed){
                    console.log("If statement entered");
                    console.log("milliseconds from START is " + slideSwitch.millisecondsfromStart);
                    console.log("Total duration audio played is " + totalDurationAudioPlayed);
                    app.setTimeoutIDArray.push(
                        setTimeout(
                            function(){
                                console.log("setTimeout function entered");
            //$("#videoPlace").add(slideSwitch.imageUrl);
            //app.currentImageIndex = i;
                                app.currentImageUrl = slideSwitch.imageUrl;
                                console.log("slide image url is " + slideSwitch.imageUrl);
                                app.update();

                            },
                            slideSwitch.millisecondsfromStart - totalDurationAudioPlayed
                            )
                        );
                    }
                }
            );
        }
        /*
        makeFileNameShowFromFakeInput(e){
            var input = e.target;
            app.fileName = input.value;

            if (input.files && input.files[0]) {
                console.log("if input.files... staement entered");
                var reader = new FileReader();

                reader.onload = function (e) {
                    console.log("onload entered RESULT IS " + e.target.result);
                    //$('#blah').attr('src', e.target.result);
                    app.previewImgSrc = e.target.result;
                    app.update();
                }
                reader.readAsDataURL(input.files[0]);
            }

            //var inputFake = document.getElementById("fakeInput");
            //inputFake.value = e.target.value;
            //app.update();
        }*/
        app.currentImageIndex = 0;
        app.images = [];
        addImageToImagegallery(e){
            app.images.push({url: $('#picture').val()});
            app.update();
        }
        deleteSelectedImages(e){

            app.images = app.images.filter(
                function(image){
                    return !image.selected;
                }
            );

            /*
            var temporaryImageArrayWithSelectedImages = [], diff = [];
            for(var i=0;i<app.images.length;i++){
                if(app.images[i].selected){
                    temporaryImageArrayWithSelectedImages.push(app.images[i].selected);
                }
            }
            function arr_diff(app.images, temporaryImageArrayWithSelectedImages){
                for(var i = 0; i < app.images.length; i++){

                }
            }
            for (app.images in temporaryImageArrayWithSelectedImages){
                diff.push(app.images);
            }
            return diff;
            */
        }

        /*app.images = [
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
        ];*/

    </script>
</speak>
<!--<flashinghello>
    <div if="{isOn}">hello</div>
    <button onclick="{stopflashing}">Stop</button>
    <script>
        var flashingHello = this;
        flashingHello.isOn = true;
        var myVar =
        setInterval(
            function(){
                //console.log("setInterval reached");
                flashingHello.isOn = !flashingHello.isOn;
                flashingHello.update();
            },
            1000
        );

        stopflashing(e){
            clearInterval(myVar);
        }
    </script>
</flashinghello>-->


<imagegallery>
    <div class="imageGallery roundedCornersBorder {sortable: opts.sortable}" style="margin-bottom: 5px; flex-direction: {opts.columnorrow}">
        <div if="{app.title!=''}" class="galleryImage" style="font-family: RobotoCR; font-size: 10px; border: solid">{app.title}</div>
        <img class="galleryImage {highlight:image.selected}" id="imageGalleryImage" each="{image, i in opts.imagelist}" src="{image.url}" onclick="{galleryImageClicked}" onmousedown="{selectImageandHighlight}" onmousedown="{deselectImage}">
    </div>
    <script>

        app.slideSwitches = [];
        galleryImageClicked(e){
            //alert("Image Clicked! " +  i);
            if(app.pageName=="recordNarrationPage"){
                app.currentImageUrl = e.item.image.url;
                app.update();

                if(app.recording){

                    app.slideSwitches.push(
                        {
                            "imageUrl": e.item.image.url,
                            "millisecondsfromStart" : Date.now() - app.startTime
                        }
                    );


                    console.log(" slideswitches is " + JSON.stringify(app.slideSwitches));
                }
            }
            else if(app.pageName=="chooseImagesFromImageGalleryPage"){
                //app.pageNumberFromImageGallery=e.item.i;
                e.item.image.selected = !e.item.image.selected;

            }

        }

        this.on(
            "updated",
            function(){

                var startIndex;
                $( ".sortable" ).sortable(
                    {
                        items: ">img",
                        start: function(event, ui){
                            startIndex = ui.item.index();
                            //console.log("Start called, start position: " + startIndex);
                        },
                        stop: function(event, ui){
                            var stopIndex = ui.item.index();
                            console.log("Stop called, old position was " + startIndex + ", New position: " + stopIndex);
                            /*console.log("App.images array before splice method applied " + JSON.stringify(app.images));
                            app.images.splice(ui.item.index()-1, 0, app.images[startIndex-1]);
                            app.images.splice(startIndex-1, 0, app.images[ui.item.index()]);
                            app.images.splice(startIndex, 1);
                            app.images.splice(ui.item.index(), 1);

                            console.log("App.images array after splice method applied " + JSON.stringify(app.images));
                        */
                            console.log("App.images array before slice and splice method applied " + JSON.stringify(app.images));

                            var arrayClone = app.images.slice();
                            arrayClone.splice(startIndex-1, 1);
                            arrayClone.splice(stopIndex-1, 0, app.images[startIndex-1]);

                            console.log("arrayClone array after splice method applied " + JSON.stringify(arrayClone));


                            /*
                            app.images = [];

                            app.images.push({url: $('#picture').val()});
                            app.update();
                            $.post(
                                "http://192.168.1.248:5000/chooseImagesAndImageOrder",
                                {
                                    url: app.images.url
                                },
                                function( data ) {
                                    alert( "Data Loaded: " + JSON.stringify(data) );
                                    app.update();
                                }
                            );
                            */
                        }
                    }
                );
                $( "#sortable").disableSelection();
            }
        );
    </script>
</imagegallery>
