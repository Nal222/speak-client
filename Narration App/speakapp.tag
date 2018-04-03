<speak>
    <audio id="myAudio"></audio>
<!--Written by Nalini Chawla 14/05/2017-->
    <div class="homePageOuterMostDiv" >
        <div hide="{app.pageName == 'recordNarrationPage' || app.pageName == 'viewNarrationCommonAreaAndCommentsPage' || app.pageName == 'userAreaPage'}" class="top" style="background: #d5da26">
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
    </div>
    <div class="loginAndViewNarrations" if="{pageName == 'introPage'}">
        <div class="circleButton2" onclick="{loginButtonClicked}">Login</div>
            <div class="login loginForm">
                <!--<div style="font-family: RobotoCB; color:green; font-size: 45px">Login</div>-->
                <div style="display: flex; flex-direction: row; margin-bottom: -50px; align-items: center">
                    <p style="font-family: RobotoCR; font-size: 24px">
                    Enter username
                    </p>&nbsp
                    <div>
                        <input type="text" size="40" maxlength="100" id="usernameLoginInput"/>
                    </div>
                </div>
                <div style="display: flex; flex-direction: row; margin-bottom: -10px; align-items: center">
                    <p style="font-family: RobotoCR; font-size: 24px">
                    Enter password
                    </p>&nbsp
                    <div>
                        <input type="text" size="40" maxlength="100" id="passwordLoginInput"/>
                    </div>
                    <div class="circleButton2" onclick="{loginConfirmedButtonClicked}" style="font-size: 19px">Confirm</div>
                </div>
                <div if="{app.invalidUsernameOrPasswordForLogin}" style="font-family: RobotoCR; font-size: 25px">Invalid username or password</div>
            </div>
            <div style="display: flex; flex-direction: column">
                <div>&nbsp &nbsp &nbsp &nbsp</div>
                <div
                    class="circleButton2"
                    onclick="{viewNarrationsButtonClicked}"
                    style=
                        "
                            font-size: 19px;
                            text-align: center
                        "
                    >
                    View Narrations
                </div>
            </div>
        </div>
        <div if="{app.pageName == 'viewNarrationsPage'}">
            <input type="text" size="40" maxlength="100" id="narrationsSearchInput"/>
            <narrationgallery smallnarrationgallery="{false}" narrationsimageslist="{app.allPublishedNarrations}"></narrationgallery>
        </div>
        <div if="{app.largeThumbnailClicked && app.pageName == 'viewNarrationCommonAreaAndCommentsPage'}">
            <audio id="myAudio"></audio>
            <viewvideo></viewvideo>
                <div if="{app.loginConfirmClickedCommentsPage}">
                    <p style="font-family: RobotoCR">Add comment</p>
                    <textarea id="commentTextarea"></textarea><br/><div class="circleButton2" style="width:50px;height:50px" onclick="{addCommentButtonClicked}">Add</div>
                    <p id="commentAddedParagraph" style="font-family: RobotoCR"></p>
                </div>
                <div if="{!loggedIn}" style="display: flex; flex-direction: row">
                    <div style="font-family: RobotoCR; font-weight: bold: font-size: 20px">
                        Login to add comment
                        <div class="circleButton2" onclick="{loginButtonClicked}">Login</div>
                    </div>
                    <div class="login loginForm">
                        <!--<div style="font-family: RobotoCB; color:green; font-size: 45px">Login</div>-->
                        <div style="display: flex; flex-direction: row; margin-bottom: -50px; align-items: center">
                            <p style="font-family: RobotoCR; font-size: 24px">
                            Enter username
                            </p>&nbsp
                            <div>
                                <input type="text" size="40" maxlength="100" id="usernameLoginInput"/>
                            </div>
                        </div>
                        <div style="display: flex; flex-direction: row; margin-bottom: -10px; align-items: center">
                            <p style="font-family: RobotoCR; font-size: 24px">
                            Enter password
                            </p>&nbsp
                            <div>
                                <input type="text" size="40" maxlength="100" id="passwordLoginInput"/>
                            </div>
                            <div class="circleButton2" onclick="{loginConfirmedButtonClickedCommentsPage}" style="font-size: 19px">Confirm</div>
                        </div>
                        <div if="{app.invalidUsernameOrPasswordForLogin}" style="font-family: RobotoCR; font-size: 25px">Invalid username or password</div>
                    </div>
                </div>
                <div each="{commentObject, i in app.allCommentsWithUsernamesForSelectedNarration}">
                    <hr class="hrLineStyle"/>
                    <div style="display: flex; flex-direction: row">
                        <div style="margin-left: 5px; font-family: RobotoCR; font-size: 15px">{commentObject.commentText}&nbsp&#45&nbsp</div>
                        <div style="font-family: RobotoCR; font-size: 11px">{commentObject.username}</div>
                    <hr class="hrLineStyle"/>
                    </div>
                </div>
                
            
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
                    <input oninput="{onLogInInput}" type="text" size="40" maxlength="100" id="usernameInput"/>
                    <div if="{confirmClicked && !username}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter username</div>
                    <div if="{confirmClicked && app.usernameTaken}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Username taken, please enter another</div>
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your password
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input oninput="{onLogInInput}" type="text" size="40" maxlength="100" id="passwordInputFirst"/>
                    <div if="{confirmClicked && !passwordFirst}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a password</div>
                    <div if="{confirmClicked && app.wrongPassword}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Password should be between 8 and 20 characters long and contain at least 1 lowercase letter, at least 1 uppercase letter and at least 1 number</div>
                    <div if="{confirmClicked && app.passwordTaken}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Password taken, please enter another</div>
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your password again
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="passwordInputSecond"/>
                    <div if="{confirmClicked && passwordFirst && !passwordSecond}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please confirm password</div>
                    <div if="{confirmClicked && !app.passwordsMatching}"style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Passwords don't match. Please re-enter.</div>
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
                <div style="font-family: RobotoCR">Enter image URL<span if="{app.blockMouseForGallery}" style="margin-left:5px">Loading...</span></div>
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
            <div style="display: flex; flex-direction: row">
                <div style="font-family: RobotoCR">Upload images</div>
                <div>
                    <input type="file" name="file" id="file" class="inputfile" onchange="{inputTypeFileUploadFiles}" multiple/>
                    <label for="file"><span>Choose image files</span></label>
                    <img src="" id="uploadedImage" height="200" alt="Image Preview...">
                        <!--<div class="circleButton extraSmall" style="font-size: 15px;color: red" onclick="{loadImageFileAsUrl}">Load selected file</div>-->
                </div>
            </div>
            <imagegallery sortable="{true}" imagelist="{app.images}" columnorrow="{'row'}"></imagegallery>
            <!--<div class="imageGallery rcornersBorder">
                <img class="galleryImage" each="{images}" src="{url}">
            </div>-->
            <div style="display: flex; flex-direction: row">
                <div style="font-family: RobotoCR">If you want to delete an image select it and click the delete button</div>
                <div class="circleButton extraSmall" style="font-family: RobotoCR; font-size: 15px" onclick="{deleteSelectedImages}">Delete</div>
            </div>
            <div style="font-family: RobotoCR">Drag and drop individual images for ordering images the way you want to show in your narration</div>
            <div class="circleButton" onclick="{app.nextButtonClicked}">NEXT</div>
        </div>
        <div class="bottom page2 rowLayout" if="{ app.pageName == 'recordNarrationPage' }">
            <div class="columnLayout" style="flex-grow:1;flex-shrink:1">
                
                <div style="font-family: RobotoCB; color:green; font-size: 50px">Step 3</div>
                <div style="display: flex; flex-direction: row; font-family: RobotoCR; align-items: center; margin-bottom: 5px; flex-wrap: nowrap">
                    <div if="{ !app.recordingButtonClicked }"class="circleButton redRecordButton" onclick="{app.recordButtonClicked}" style="font-size: 25px">Record</div>
                    <div if="{ app.recordingButtonClicked }"class="circleButton redRecordButton stopButton" onclick="{app.stopButtonClicked}">Stop</div>
                    <div>&nbsp&nbsp</div>
                    <div if="{ !app.playingButtonClicked }" class="arrow-right" onclick="{playButtonClicked}"></div>
                    <div if="{ app.playingButtonClicked }" class="pause" onclick="{pauseButtonClicked}"></div>
                    <div>&nbsp&nbsp&nbsp&nbsp</div>
                    <div style="font-family: RobotoCB; font-size: 50px">Edit Narration Title: </div>
                    <div style="font-family: RobotoCB; font-size: 50px" contenteditable="true" onblur="{onNarrationTitleInputRecordNarrationPage}">{app.narrationTitle}</div>
                </div>
                <div style="font-family: RobotoCR; flex-grow: 0;">Click on thumbnail to switch image while recording</div>
                <div class="rowLayout">
                    <div class="imageGalleryTag">
                        <imagegallery imagelist="{app.chosenImages}" columnorrow="{'row'}" style="height: 100%;width: 100%"></imagegallery>
                    </div>
                    <!--
                    <div if="{app.stopButtonWasClicked}">If you want to add or change your title click above narration thumbnail and edit</div>
                    <div if="{!app.narrationTitle && !app.narrationSelected.title}">Please enter title this is mandatory</div>
                    -->
                    <div class="columnLayout">
                        <viewvideo></viewvideo>
                        <div class="imageGalleryTag" if="{app.pageName == 'recordNarrationPage'}">
                            <narrationgallery smallnarrationgallery="{true}" narrationsimageslist="{app.recentNarrationTakes}"></narrationgallery>
                        </div>
                        <div style="display: flex; flex-direction: row">
                            <div>
                                <div if="{ !app.narrationSelected.published }" class="circleButton" onclick="{publishButtonClicked}" style="font-size: 10px; width: 60px; height: 60px">Publish this narration</div>
                                <div if="{ app.narrationSelected.published }" class="circleButton" onclick="{unpublishButtonClicked}" style="font-size: 10px; width: 60px; height: 60px">Unpublish</div>
                            </div>
                            <div if="{app.narrationSelected}" class="circleButton" style="font-size: 10px; width: 60px; height: 60px" onclick="{app.deleteSelectedNarrationsPermanently}">Delete</div>
                        </div>
                    </div>
                </div>
                <!--
                <div>Select checkbox and click on delete button to delete narration permenantly from world view</div>
                <div class="circleButton" onclick="{app.deleteCheckedNarrationsPermanently}">Delete</div>
                -->
            </div>
        </div>
        <div if="{app.pageName == 'userAreaPage'}">
            <p id="userAreaWelcomeMessageParagraph" style="font-family: RobotoCR; color: purple">Welcome {app.username}</p>
            <p style="align: left; font-family: RobotoCR">Here are your narrations</p>
            <p style="align: left; font-family: RobotoCR">Click on narration image to view</p>
            <div style="font-family: RobotoCR; font-size: 15px">select</div>
            <div style="display: flex; flex-direction: row">
                <div style="margin-right: 20px">
                    <div class="userAreaViewAndSelectNarration" each="{narration, i in app.narrations}">
                        <input type="checkbox" onchange="{narrationCheckboxChanged}" class="selectNarrationCheckbox"/>
                        <div onclick="{app.thumbnailClickedOnUserArea}">
                            <img src="{narration.slideSwitches[0].imageUrl}" style="width:150px;height:150px"/>
                        </div>
                        <div style="display: flex;flex-direction: column">
                            <div style="font-family: RobotoCR" id="userAreaNarrationTitleDiv" contenteditable="true" onblur="{onNarrationTitleInputUserAreaPage}">{narration.title}</div>
                            <div if="{narration.published}" class="checkMark">
                                <img src="images\checkMark.png" width="20px" height="20px"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="font-family: RobotoCR; font-size: 15px">To delete, publish or unpublish a narration, select it by clicking on select box then press the relevant button. If delete is chosen the narration will be permanently deleted and neither you or the public can view it</div>
                    <div class="circleButton" style="width: 70px; height: 70px; font-size: 20px" onclick="{app.deleteSelectedNarrationsPermanently}">Delete</div>
                    <div class="circleButton" style="width: 60px; height: 60px; font-size: 10px" onclick="{publishButtonClicked}">Publish</div>
                    <div class="circleButton" style="width: 60px; height: 60px; font-size: 10px" onclick="{unpublishButtonClicked}">Unpublish</div>
                    <div style="font-family: RobotoCR; font-size: 15px">See image gallery, select images and record narrations</div>
                    <div class="circleButton" onclick="{app.goToImageGalleryPage}">GO</div>
                </div>
            </div>
        </div>
    </div>
    <div if="{app.largeThumbnailClickedOnUserArea && app.pageName == 'viewNarrationUserAreaWithoutCommentAddingPage'}">
        <audio id="myAudio"></audio>
        <viewvideo></viewvideo>
    </div>
<script>
        app = this;
        app.ipAddress = "192.168.1.13";
        
        login(){
             $.post(
                app.rootUrlWithSlashAtEnd + "login",
                {
                    username: app.username,
                    password: app.password
                },
                function( data ) {
                    console.log("data.narrations after login is " + JSON.stringify(data.narrations));
                    if(data == "Invalid username or password"){
                        app.invalidUsernameOrPasswordForLogin = true;
                        app.update();
                    }
                    else{
                        console.log("Inside ELSE VALID USERNAME AND PASSWORD");
                        app.switchPageAndAddToHistory('userAreaPage');
                        app.images = data.galleryItems;
                        app.narrations = data.narrations;
                        app.update();
                        //$("#userAreaWelcomeMessageParagraph").html(app.welcomeParagraph);
                        //console.log("userAreaWelcomeMessageParagraph " + $("#userAreaWelcomeMessageParagraph") + app.welcomeParagraph);
                        //document.getElementById("userAreaNarrationTitleDiv").innerHTML = narration.title;
                    }
                }
            );
        }

        app.narrations = [];
        app.recentNarrationTakes = [];
        app.rootUrlWithSlashAtEnd = "http://"+app.ipAddress+":5000/";
        app.pageName = "introPage";
        //app.pageName = 'viewNarrationsPage';
        //app.pageName = "chooseImagesFromImageGalleryPage"; //"recordNarrationPage";
        //app.pageName = "registerPage";
        //app.pageName = "recordNarrationPage";
        //app.pageName = "userAreaPage";

         //TODO: comment this out when you don't want to auto log in
        //app.username = "Nalini";
        //app.password = "Nalini123";
        //app.login();

        stringify(object){
            return JSON.stringify(object, null, 4);
        }

        history.replaceState(app.pageName, null, app.pageName);

        window.onpopstate =
            event=>{
                console.log("location: " + document.location + ", state: " + JSON.stringify(event.state));
                app.pageName = event.state;
                app.update();
            }
        ;
        switchPageAndAddToHistory(pageName){
            app.pageName = pageName;
            app.pushPageNameToHistory();
        }

        viewNarrationsButtonClicked(e){
            app.switchPageAndAddToHistory('viewNarrationsPage');
            //app.smallnarrationgallery = false;
            $.post(
                app.rootUrlWithSlashAtEnd + "getAllPublishedNarrations",
                {
                    
                },
                function( data ) {
                    app.allPublishedNarrations = data;
                    console.log("data VARIABLE CONTAINING ALL PUBLISHED NARRATIONS FROM SERVER IS " + JSON.stringify(data));
                    app.update();

                }
            );
        }

        

       
        
        loginConfirmedButtonClicked(e){
            console.log("Inside confirm login button clicked!");
            app.username = $("#usernameLoginInput").val();
            app.password = $("#passwordLoginInput").val();
            //app.welcomeParagraph = "<p style='color: purple'>Welcome " +app.username+ "</p><p align='left'>Here are your narrations.</p><p align='left'>Hover over and click to view.</p>";
            app.login();
        }
        loginConfirmedButtonClickedCommentsPage(e){
            console.log("Inside confirm login button clicked comments page!");
            app.username = $("#usernameLoginInput").val();
            app.password = $("#passwordLoginInput").val();
            $.post(
                app.rootUrlWithSlashAtEnd + "loginCommentsPage",
                {
                    username: app.username,
                    password: app.password
                },
                function( data ) {
                    console.log("data.narrations after login is " + JSON.stringify(data.narrations));
                    if(data == "Invalid username or password"){
                        app.invalidUsernameOrPasswordForLogin = true;
                        app.update();
                    }
                    else{
                        console.log("Inside ELSE VALID USERNAME AND PASSWORD");
                        app.userID = data;
                        console.log("UserID of logged in user who wants to add comment is " + JSON.stringify(app.userID));
                        app.loginConfirmClickedCommentsPage = true;
                        app.loggedIn = true;
                        app.update();
                        //$("#userAreaWelcomeMessageParagraph").html(app.welcomeParagraph);
                        //console.log("userAreaWelcomeMessageParagraph " + $("#userAreaWelcomeMessageParagraph") + app.welcomeParagraph);
                        //document.getElementById("userAreaNarrationTitleDiv").innerHTML = narration.title;
                    }
                }
            );

        }

        goToImageGalleryPage(e){
            app.switchPageAndAddToHistory('chooseImagesFromImageGalleryPage');
        }
        
        /*
        app.parent = this.parent;
        selected(e) {
            //var item = e.item;
            e.item.selected = !e.item.selected;
            var selectedCheckBoxes = e.item.selected;
            //app.parent.selected = e.item.selected; // does not change parent's checkbox "checked" state
            app.parentNarrationDivToRemove = selectedCheckBoxes.parent;
            app.update();
        }
        */
        
        

        startButtonClicked(e){
            app.switchPageAndAddToHistory('registerPage');
        }
        loginButtonClicked(e){
            if($('.loginForm').css('opacity')==0) $('.loginForm').css('opacity', 1);
            else $('.loginForm').css('opacity', 0);
        }
        onLogInInput(e){
            app.passwordTaken = app.usernameTaken = false;

        }
                    
        inputTypeFileUploadFiles(e) {
            console.log("Inside first line of code for uploadig images");
            app.input = $(".inputfile");
            app.label = app.input.next('label');
            app.labelVal = app.label.html();
            app.uploadedImage = $('#uploadedImage');

            var preview = document.querySelector('#uploadedImage');
            var files   = document.querySelector('input[type=file]').files;

            function readAndPreview(file) {

                // Make sure `file.name` matches our extensions criteria
                if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
                    var reader = new FileReader();

                    reader.addEventListener("load", function () {
                        var image = new Image();
                        image.height = 100;
                        image.title = file.name;
                        image.src = this.result;
                        preview.src = this.result;
                        console.log("Images uploaded are " + image.src);
                    }, false);

                    reader.readAsDataURL(file);
                    var fileName = '';
        
                    if( files && files.length > 1 ){
                        app.filesChosen = files.length;
                        fileName = app.filesChosen + " files selected";
                    }
                    else if(e.target.value){
                        fileName = e.target.value.split( '\\' ).pop();
                    }
                    console.log("FILENAMES ARE " + fileName);
                    app.label.find('span').html(fileName);
                }
            }

            if (files) {
                [].forEach.call(files, readAndPreview);
            }
            /*
            function imageIsLoaded(){
                $('#uploadedImage').src = app.reader.result;
            }
            */

            // Firefox bug fix
            app.input
            .on( 'focus', function(){ app.input.addClass( 'has-focus' ); })
            .on( 'blur', function(){ app.input.removeClass( 'has-focus' ); });
        }

        addCommentButtonClicked(e){
            console.log("ADD COMMENT BUTTON CLICKED");
            app.comment = $("#commentTextarea").val();
            document.getElementById("commentAddedParagraph").innerHTML = app.comment;
            console.log("commentAddedParagraph is " + document.getElementById("commentAddedParagraph"));
            $.post(
                app.rootUrlWithSlashAtEnd + "saveComment",
                {
                    userID: app.userID,
                    narrationId: app.narrationSelectedOnPublicAreaId,
                    comment: app.comment
                },
                function( data ) {
                    console.log("Inside function data returned is narration object with comment and userID saved " + JSON.stringify(data));
                    app.update();

                }
            );
        }

        //app.title = 'wonderfull';

        confirmButtonClicked(e){

            //$(".top").append("<div class='circleButton small alignSelfFlexEnd redSmallButton absolutePositionGoBackButton' style='font-size: 20px'>Go back</div>");
            app.confirmClicked = true;
            app.narrationTitleOnRegistration = ($("#titleInput").val())
            app.username = $("#usernameInput").val();
            app.password = $("#passwordInputFirst").val();
            app.passwordSecond = $("#passwordInputSecond").val();


            //TODO: Message to request user to enter password with letters and numbers of 8 characters minimum
            var regularExpression = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{8,20})/;
            if(!regularExpression.test(app.password)){
                console.log(app.password);
                app.wrongPassword = true;
            }
            else{
                app.wrongPassword = false;
                console.log(app.password);
            }
            console.log("Is password incorrect? " + app.wrongPassword);

            //TODO: Only do $.post if client-side is validated
            if(app.password == app.passwordSecond){
                app.passwordsMatching = true;
            }

            if(app.username && app.password && app.passwordSecond && app.passwordsMatching && !app.wrongPassword){
                console.log("I have reached where post is");
                $.post(
                    app.rootUrlWithSlashAtEnd + "register",
                    {
                        username: app.username,
                        password: app.password
                    },
                    function(data) {
                        console.log("Inside funtion(data)")
                        //alert("data " + data);
                        //TODO: only do this if server-side has found user name or password to be not taken.
                        if(data.includes("ImageGalleryPage")){
                            //app.usernameorpasswordtaken == false;
                            app.switchPageAndAddToHistory('chooseImagesFromImageGalleryPage');
                        }
                        /*
                        if(data.includes("Username")){
                            //alert( "Data Loaded: " + data );
                            app.usernameTaken = true; 
                            console.log("Username taken " + data);
                        }
                        else{
                            app.usernameTaken = false; 
                            console.log("Inside else app.usernameTaken = false");
                        }
                        */

                        app.usernameTaken = data.includes("Username");
                        app.passwordTaken = data.includes("Password");
                        /*
                        if(data.includes("Password")){
                            app.passwordTaken = true;  
                            console.log("Password taken " + data);
                        }
                        else{
                            app.passwordTaken = false;
                            console.log("Inside else app.passwordTaken = false");
                        }
                         */
                        app.update();
                    }
                );
                /*
                var client = new XMLHttpRequest();
                client.open('POST', app.rootUrlWithSlashAtEnd + 'login');
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

        pushPageNameToHistory(){
            history.pushState(app.pageName, null, app.pageName);
        }

        nextButtonClicked(e){
            app.chosenImages = app.images.filter(
                galleryItem=>galleryItem.selected
            );
            app.switchPageAndAddToHistory("recordNarrationPage");
            if(app.narrationTitleOnRegistration){
                app.narrationTitle = app.narrationTitleOnRegistration;
            }
            else{
                app.narrationTitle = "Enter Title";
            }
            //app.smallnarrationgallery = true;
            //console.log("SMALLNARRATIONGALLERY IS " + app.smallnarrationgallery);
        }

        var client = new BinaryClient("ws://"+app.ipAddress+":9001/");
        client.on(
            'open',
            function() {
            
                console.log("Inside client.on function");

                app.recording = false;
            
        
                app.recordButtonClicked = (
                    function(){
                        console.log("Inside recordButtonClicked");
                        app.recordingButtonClicked = true;
                        app.recording = true;
                        app.startTime = Date.now();
                        app.slideSwitches = [];
                        $.post(
                            app.rootUrlWithSlashAtEnd + "Narrations",
                            {
                                narration: {title: app.narrationTitle},
                                username: app.username,
                                password: app.password
                            },
                            function( data ) {
                                app.audioFileId = data;

                                console.log("AUDIO FILE ID IS " + data);

                                window.Stream = client.createStream(data);
                                    /*{
                                        audio: {
                                            "mandatory": {
                                                "googEchoCancellation": "false",
                                                "googAutoGainControl": "true",
                                                "googNoiseSuppression": "true",
                                                "googHighpassFilter": "true"
                                            },
                                            "optional": []
                                        }
                                    }
                                ; */
                                
                            }
                        );
                    }
                );

                var mediaConstraints = {
                    audio: {
                        "mandatory": {
                            "googEchoCancellation": "false",
                            "googAutoGainControl": "false",
                            "googNoiseSuppression": "false",
                            "googHighpassFilter": "false"
                        },
                        "optional": []
                    }
                };

                (
                    async ()=>{
                        const e = await navigator.mediaDevices.getUserMedia(mediaConstraints);
                        /*
                        if (window.URL) {
                            app.aud.src = window.URL.createObjectURL(mediaStream);
                        } 
                        else {
                            app.aud.src = mediaStream;
                        }
                        */
                        
                        console.log("Stream obtained");

                        audioContext = window.AudioContext || window.webkitAudioContext;
                        context = new audioContext();

                        // the sample rate is in context.sampleRate
                        audioInput = context.createMediaStreamSource(e);

                        var bufferSize = 2048;
                        recorder = context.createScriptProcessor(bufferSize, 1, 1);

                        recorder.onaudioprocess =
                            (e)=>{
                                if(!app.recording) return;
                                console.log ('recording');
                                var left = e.inputBuffer.getChannelData(0);
                                window.Stream.write(convertoFloat32ToInt16(left));
                            }
                        ;

                        audioInput.connect(recorder);
                        recorder.connect(context.destination);
                    }
                )();

                
                //alert( "Data Loaded: " + JSON.stringify(data) );
                app.update();
                
                function convertoFloat32ToInt16(buffer) {
                    var l = buffer.length;
                    var buf = new Int16Array(l)

                    while (l--) {
                        buf[l] = buffer[l]*0xFFFF;    //convert to 16 bit
                    }
                    return buf.buffer
                }
                /*
                app.narrationSlideswitchesArrayOfArray = [];
                app.audioFileIdArray = [];
                app.firstImageArrayofEachSlideswitchesArray = [];
                app.linkedNarrationAudiofileFirstImageArray = {};
                */
                
                app.stopButtonClicked = (
                    function(){
                        console.log("Stop button clicked");
                        app.stopButtonWasClicked = true;
                        app.recordingButtonClicked = false;
                        app.recording = false;
                        window.Stream.end();

                        const narrationAdded =
                            {
                                title: app.narrationTitle,
                                slideSwitches: app.slideSwitches,
                                _id: app.audioFileId
                            }
                        ;

                        app.narrations.push(narrationAdded);
                        app.recentNarrationTakes.push(narrationAdded);
                        app.narrationSelected = narrationAdded;

                        console.log('AFTER STOP, RECENT NARRATION TAKES IS NOW ' + app.stringify(app.recentNarrationTakes));
                        //console.log("SMALLNARRATIONGALLERY IS " + smallnarrationgallery);
                        
                        //TODO: Change narrationId to _id in the json of the post call below check
                        $.post(
                            app.rootUrlWithSlashAtEnd + "saveSlideSwitches",
                            {
                                slideSwitches: app.slideSwitches,
                                narrationId: app.audioFileId
                            },
                            function( data ) {
                    

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
                );
            }
        );
        
        function onAudioStop(){
            console.log("setTimeoutIDArray is " + JSON.stringify(app.setTimeoutIDArray));
            app.setTimeoutIDArray.forEach(
                function(setTimeoutID){
                    clearTimeout(setTimeoutID);
                }
            );
            app.setTimeoutIDArray.length = 0;
        }
        playButtonOrThumbnailClicked(e, audioFileId){
            //app.audioFileId = audioFileId;
            app.playingButtonClicked = true;
            app.aud = document.getElementById("myAudio");
            app.aud.src = "http://localhost:3700/audio/" + audioFileId + '.wav';
            console.log("audio variable = " + app.aud + " audio SRC IS " + app.aud.src);
            app.aud.play();
            app.aud.onplay = playEvent;
            console.log("onplay event reached");
            app.aud.onplaying = playEvent;
            console.log("onplaying event reached");
            app.aud.onpause = app.aud.onsuspend = app.aud.onabort = app.aud.onerror = app.aud.onstalled = app.aud.onwaiting = app.aud.onended = stopEvent;
            console.log("stop events reached");
            //aud.src = url;
            totalDurationAudioPlayed = 0;
            console.log("total duration audio played RESET " + totalDurationAudioPlayed);
        }
        

        app.thumbnailClicked = (
            function(e){
                app.smallThumbnailClicked = true;
                app.narrationSelected = e.item.narration;
                app.slideSwitches = app.narrationSelected.slideSwitches;
                //app.narrationIdOfThumbnailClicked = e.item.narration._id;
                console.log("INSIDE THUMBNAIL CLICKED NARRATION ID IS " + e.item.narration._id);
                //app.playButtonOrThumbnailClicked(e, e.item.narration._id);
                //app.currentImageUrl = 'showTitle';
                //app.update();
                //console.log("CURRENT IMAGE URL IS " + app.currentImageUrl);
                /*
                if(app.title){
                    app.currentImageUrl='showTitleSlideForAMoment';
                }
                else{
                    app.currentImageUrl!='showTitleSlideForAMoment';
                }
                */
            }
        );
        
        playButtonClicked(e){
            //app.slideSwitches = e.item.narration.slideSwitches;
            app.currentImageUrl = 'showTitle';
            if(app.narrationSelected){
                //app.slideSwitches = app.narrationSelected.slideSwitches;
                app.playButtonOrThumbnailClicked(e, app.narrationSelected._id);
                app.update();
            }
            
            /*
            if(app.title){
                app.currentImageUrl='showTitleSlideForAMoment';
            }
            else{
                app.currentImageUrl!='showTitleSlideForAMoment';
            }
            */
        }

        publishButtonClicked(e){
            //app.narrationSelected.published = true;

            console.log('RECENT NARRATION TAKES IS NOW ' + JSON.stringify(app.recentNarrationTakes));

            $.post(
                app.rootUrlWithSlashAtEnd + "publishNarration",
                {
                    narrationId: app.narrationSelected._id
                },
                function( data ) {
                    console.log("RESPONSE FROM SERVER, NARRATION OBJECT AFTER SAVING PUBLISHED = TRUE TO DATABASE " + JSON.stringify(data));
                    if(data.published){
                        app.narrationSelected.published = true;
                        console.log('RECENT NARRATION TAKES IS NOW ' + JSON.stringify(app.recentNarrationTakes));
                    /*
                        app.recentNarrationTakes
                            .filter(
                                narration=>narration=app.narrationSelected
                            )
                            .published = true; 
                    */
                        app.update();
                    }

                }
            );

        }
        unpublishButtonClicked(e){
            $.post(
                app.rootUrlWithSlashAtEnd + "unpublishNarration",
                {
                    narrationId: app.narrationSelected._id
                },
                function( data ) {
                    console.log("RESPONSE FROM SERVER, NARRATION OBJECT AFTER SAVING PUBLISHED = FALSE TO DATABASE " + JSON.stringify(data));
                    if(data){
                        app.narrationSelected.published = false;
                        app.update();
                    }

                }
            );




        }

        app.largethumbnailclickedonpublicarea = (
            function(e){
                app.largeThumbnailClicked = true;
                app.switchPageAndAddToHistory('viewNarrationCommonAreaAndCommentsPage');
                app.slideSwitches = e.item.narration.slideSwitches;
                app.playButtonOrThumbnailClicked(e, e.item.narration._id);
                app.narrationSelectedOnPublicAreaId = e.item.narration._id;
                console.log("NARRATION AUDIO FILE ID IS " + e.item.narration._id);
                app.narrationTitle = e.item.narration.title;
                app.currentImageUrl = 'showTitle';
                app.update();
                /*
                if(app.title){
                    app.currentImageUrl='showTitleSlideForAMoment';
                }
                else{
                    app.currentImageUrl!='showTitleSlideForAMoment';
                }
                */
                console.log("APP.currentImageUrl IS " + app.currentImageUrl);
                

                $.post(
                    app.rootUrlWithSlashAtEnd + "getAllCommentsForSelectedNarration",
                    {
                        narrationId: app.narrationSelectedOnPublicAreaId
                    },
                    function( data ) {
                        app.allCommentsWithUsernamesForSelectedNarration = data;
                        console.log("data VARIABLE CONTAINING ALL comments and usernames FROM SERVER IS " + JSON.stringify(data));
                        app.update();

                    }
                );
            }
        );
        app.thumbnailClickedOnUserArea = (
            function(e){
                app.largeThumbnailClickedOnUserArea = true;
                app.switchPageAndAddToHistory('viewNarrationUserAreaWithoutCommentAddingPage');
                console.log("Reached inside THUMBNAILCLICKEDONUSERAREA");
                app.slideSwitches = e.item.narration.slideSwitches;
                app.playButtonOrThumbnailClicked(e, e.item.narration._id);
                app.narrationTitle = e.item.narration.title;
                app.currentImageUrl = 'showTitle';
                /*
                if(app.title){
                    app.currentImageUrl='showTitleSlideForAMoment';
                }
                else{
                    app.currentImageUrl!='showTitleSlideForAMoment';
                }
                */
                app.update();
            }
        );

        pauseButtonClicked(e){
            app.playingButtonClicked = false;
            app.pausingButtonClicked = true;
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
            console.log("APP.SLIDESWITCHES IS " + JSON.stringify(app.slideSwitches));
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
        //app.images = [];
        
        app.images = 
            [
                /*
                {
                    url: 'https://i.pinimg.com/736x/96/e6/76/96e676b53868f30b362c3a6230e98fd6.jpg'
                },
                {
                    url: 'https://s-media-cache-ak0.pinimg.com/736x/a3/d0/9b/a3d09b27fe7bd86403a73588b77f0962.jpg'
                },
                {
                    url: 'https://s-media-cache-ak0.pinimg.com/736x/cb/64/f9/cb64f92fc4dfe6ef119b26a39d97913f.jpg'
                }
                */
            ]
        ;
        //app.images = [];
        addImageToImagegallery(e){

            app.blockMouseForGallery = true;
            
            const
                url = $('#picture').val(),
                galleryItem = {url: url}
            ;


            app.images.push(galleryItem);

            console.log("Image add");
            
            //TODO: save to server under current user
            
            $.post(
                app.rootUrlWithSlashAtEnd + "addImage",
                {
                    username: app.username,
                    password: app.password,
                    url: url
                },
                function( data ) {
                    console.log("Image add response: " + JSON.stringify(data));
                    galleryItem._id = data.galleryItemId;
                    app.blockMouseForGallery = false;
                    app.update();
                }
            );
        }
        app.narrationCheckboxChanged = (
            function(e){
                e.item.narration.isChecked = !e.item.narration.isChecked;
                app.narrationSelected = e.item.narration; 
            }
        );
        
        deleteSelectedNarrationsPermanently(e){
            if(app.pageName == 'userAreaPage'){
                console.log("Narrations in user area app.narrations are " + JSON.stringify(app.narrations));
                app.narrationsIdsToDelete =
                    app.narrations
                        .filter(
                            narration=>narration && narration.isChecked //Fix narrations sometimes being null
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
                //console.log("NARRATIONS IDS TO DELETE USER AREA PAGE ARE " + narrationsIdsToDelete);
                app.narrations = 
                    app.narrations
                        .filter(
                            narration=>narration && !narration.isChecked
                        )
                ;
            }

            if(app.pageName=="recordNarrationPage"){
                app.narrationsIdsToDelete =
                    app.recentNarrationTakes
                        .find(
                            narration=>narration = app.narrationSelected
                        )
                        ._id
                ;
                //console.log("NARRATIONS IDs TO DELETE RECORD NARRATION PAGE ARE " + narrationsIdsToDelete);
                app.recentNarrationTakes = 
                    app.recentNarrationTakes
                        .filter(
                            narration=>narration != app.narrationSelected
                        )
                ;
            }

            $.post(
                app.rootUrlWithSlashAtEnd + "deleteNarrationsFromDatabase",
                {
                    narrationIds: app.narrationsIdsToDelete
                },
                data=>{
                    //console.log("Inside function data returned after deletion of narration from database is confirmation deleted " + data)
                    //app.update();
                }
            );
        } 
        deleteSelectedImages(e){

            app.images = 
                app.images
                    .filter(
                        image=>!image.selected
                    )
            ;
            var galleryItemIds = app.images.map(galleryItem=>galleryItem._id);
            console.log("GALLERYITEMIDS after deleting are " + galleryItemIds);
            $.post(
                app.rootUrlWithSlashAtEnd + "chooseImagesAndImageOrder",
                {
                    username: app.username,
                    password: app.password,
                    galleryItemIds: galleryItemIds
                },
                data=>{
                    alert( "Data Loaded: " + JSON.stringify(data) );
                    app.update();
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
        onNarrationTitleInputRecordNarrationPage(e){
            console.log('NEW VALUE IS ' + e.currentTarget.textContent);
            app.narrationTitle = e.currentTarget.textContent;
            app.recentNarrationTakes.length
            &&
            (
            app.narrationsIdsOfNarrationsToUpdateTitle =
                app.recentNarrationTakes
                    .map(
                        narration=>narration._id
                    )
            )
            &&
            $.post(
                app.rootUrlWithSlashAtEnd + "updateNarrationsTitle",
                {
                    title: app.narrationTitle,
                    narrationIds: app.narrationsIdsOfNarrationsToUpdateTitle
                },
                function( data ) {
                    console.log("Update narrations title call returned data from server Record Narration Page" + JSON.stringify(data));
                    app.update();
                }
            )
            ;
        }
        onNarrationTitleInputUserAreaPage(e){
            app.narrationTitle = e.currentTarget.textContent;
            app.narrationSelected = e.item.narration;
            $.post(
                app.rootUrlWithSlashAtEnd + "updateNarrationTitle",
                {
                    title: app.narrationTitle,
                    narrationId: app.narrationSelected._id
                },
                function( data ) {
                    console.log("Update narration title call returned data from server User Area Page" + JSON.stringify(data));
                    app.update();
                }
            )
            ;

        }

        /*
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
        */
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
    <div class="imageGallery roundedCornersBorder {sortable: opts.sortable, pointerEventsNone: app.blockMouseForGallery}" style="margin-bottom: 5px; flex-direction: {opts.columnorrow}">
        <!--
        <div if="{app.title!='' && !app.narrationSelected.title}" class="galleryImage" style="font-family: RobotoCR; font-size: 10px; border: solid">{app.title}</div>
        <div if="{app.narrationSelected.title}" class="galleryImage" style="font-family: RobotoCR; font-size: 10px; border: solid">{app.narrationSelected.title}</div>
        -->
        <img class="galleryImage {highlight:image.selected}" id="imageGalleryImage" each="{image, i in opts.imagelist}" src="{image.url}" onclick="{galleryImageClicked}" onmousedown="{selectImageandHighlight}" onmousedown="{deselectImage}" draggable="false">
    </div>
    <script>

        app.slideSwitches = [];

        galleryImageClicked(e){

            console.log('recentNarrationTakes BEFORE GALLERY IMAGE CLICKED CODE IS ' + app.stringify(app.recentNarrationTakes));

            //alert("Image Clicked! " +  i);
            if(app.pageName=="recordNarrationPage"){
                app.currentImageUrl = e.item.image.url;
                

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

            console.log('recentNarrationTakes AFTER GALLERY IMAGE CLICKED CODE IS ' + app.stringify(app.recentNarrationTakes));

            app.update();
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
                            app.images = arrayClone;

                            console.log("app.images array after splice method applied " + JSON.stringify(app.images));


                            /*
                            app.images = [];

                            app.images.push({url: $('#picture').val()});
                            app.update();
                            */
                            //TODO: Send to server only start index and stop index and on server-side sort
                            var galleryItemIds = app.images.map(galleryItem=>galleryItem._id);
                            console.log("GALLERYITEMIDS after changing order are " + galleryItemIds);
                            $.post(
                                app.rootUrlWithSlashAtEnd + "chooseImagesAndImageOrder",
                                {
                                    username: app.username,
                                    password: app.password,
                                    galleryItemIds: galleryItemIds
                                },
                                function( data ) {
                                    alert( "Data Loaded: " + JSON.stringify(data) );
                                    app.update();
                                }
                            );

                        }
                    }
                );
                $( "#sortable").disableSelection();
            }
        );
    </script>
</imagegallery>
<narrationgallery>
    <!--
    <div class="{imageGallery: opts.smallnarrationgallery, roundedCornersBorder: opts.smallnarrationgallery, viewNarrationsGallery: !opts.smallnarrationgallery}">
    -->

    <style>
        .thumbnailTitle{
            font-family: RobotoCR;
            font-size: 15px;
        }
    </style>
    <div class= "{ imageGallery: opts.smallnarrationgallery==true, viewNarrationsGallery: opts.smallnarrationgallery==false }">
        <div each="{narration, i in opts.narrationsimageslist}">
            <div if="{narration.published && parent.opts.smallnarrationgallery}" class="checkMark">
                <img src="images\checkMark.png" width="20px" height="20px"/>
            </div>
            <div if="{parent.opts.smallnarrationgallery}" class="thumbnailTitle">{app.narrationTitle}</div>
            <div if="{!parent.opts.smallnarrationgallery}" class="thumbnailTitle">{narration.title}</div>
            <img src="{narration.slideSwitches[0].imageUrl}"  class="{ galleryImage : parent.opts.smallnarrationgallery==true, narrationImage : parent.opts.smallnarrationgallery==false, selectedThumbnail: narration==app.narrationSelected }"
            onclick="{parent.opts.smallnarrationgallery ? app.thumbnailClicked : app.largethumbnailclickedonpublicarea}"/>
        </div>
    </div>
</narrationgallery>
<!--
<narrationviewinggallery>
    <div class="viewNarrationsGallery">
        <img src="{narration.slideSwitches[0].imageUrl}" each="{narration, i in opts.narrationsimageslist}" class="narrationImage" onclick="{app.thumbnailClicked}"/>
    </div>
<script>
</script>
</narrationviewinggallery>
-->
<viewvideo>
    <div id="videoPlace" class="roundedCornersBorder videoBorderNewSize">
        <!--<img src="{image.url}" each="{image, i in images}" show="{currentImageUrl==image.url}" width="800" height="450">-->
        <div
            if="{app.currentImageUrl=='showTitle'}"
            style=
                "
                    font-family: RobotoCR;
                    font-size: 20px;
                    width: 100%;
                    height: 450px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                "
            >
            {app.narrationTitle}
        </div>
        <img if="{app.currentImageUrl!='showTitle'}" src="{app.currentImageUrl}" width="800" height="450">
    </div>
    <script>
    
    

    </script>
</viewvideo>



