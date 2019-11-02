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
    <div class="loginAndViewNarrations" if="{app.pageName == 'introPage'}">
        <div class="circleButton2" onclick="{loginButtonClicked}">Login</div>
            <div style="display: flex; flex-direction: row" class="loginForm">
                <div class="login loginForm">
                        <!--<div style="font-family: RobotoCB; color:green; font-size: 45px">Login</div>-->
                        <div if="{app.invalidUsernameOrPasswordForLogin}" style="font-family: RobotoCR; font-size: 25px">Invalid username or password</div>
                        <div if="{app.emptyUsernameOrPassword}" style="font-family: RobotoCR; font-size: 25px">Please enter username and password</div>
                        <div style="display: flex; flex-direction: row; margin-bottom: -10px; align-items: center">
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
                        </div>   
                </div>
                <div class="circleButton2" onclick="{loginConfirmedButtonClicked}" style="font-size: 19px; align-items: center; justify-content: center">Confirm</div>  
                <div style="display: flex; flex-direction: row; align-items: center; justify-content: center">
                    <div style="font-family: RobotoCR; font-size: 18px">Forgot your password?</div>&nbsp
                    <div style="font-family: RobotoCR; font-size: 18px; color: purple" onclick="{linkToForgotUsernameOrPasswordPageClicked}">Reset your password online</div>
                </div>
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
        <div class="bottom page2" if="{app.pageName == 'enterEmailForResettingPasswordPage'}">
            <div style="font-family: RobotoCB; color:green; font-size: 25px">Enter email you registered with and a link will be sent to create a new password</div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter email
                </p>&nbsp
                <!-- TODO: Factor these out into a separate tag -->
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="emailInputResetPassword"/>
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && !app.emailForPasswordReset}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter your email</div>
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && app.emailForPasswordReset && app.wrongEmailFirstInputEnterEmailForResettingPasswordPage}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a valid email address</div>
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && app.emailForPasswordReset && app.emailReenterForPasswordReset && app.emailDoesNotExistInRecords}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Email not found, please enter your correct email you registered with</div>
                    <!--<div if="{confirmClicked && !title}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter your title</div>-->
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -30px">
                <p style="font-family: RobotoCR">
                    Confirm email
                </p>&nbsp
                <!-- TODO: Factor these out into a separate tag -->
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input type="text" size="40" maxlength="100" id="emailInputResetPassword2"/>
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && !app.emailReenterForPasswordReset}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please confirm your email</div>
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && app.emailReenterForPasswordReset && app.emailForPasswordReset && !app.wrongEmailFirstInputEnterEmailForResettingPasswordPage && !app.wrongEmailSecondInputEnterEmailForResettingPasswordPage && !app.emailsMatching}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Your emails don't match please enter correctly</div>                    
                    <div if="{submitClickedEnterEmailForResettingPasswordPage && app.emailReenterForPasswordReset && app.wrongEmailSecondInputEnterEmailForResettingPasswordPage}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a valid email address</div>                
                </div>
            </div>
            <div style="position: relative">
                <div id="divReplacingSubmitButton" style="position: absolute; width: 0px; height: 0px" onclick="{divReplacingSubmitButtonClicked}"></div>
                <div class="circleButton2" style="width:25px:height:25px" onclick="{submitClickedEnterEmailForResettingPasswordPage}" id="submitButton">SUBMIT</div>
            </div>
            <div if="{app.divReplacingSubmitButtonDisabled}" style="font-family: RobotoCB; color:green; font-size: 20px" id="messageDiv">An email has already been sent to you</div>
        </div>
        <div if="{app.pageName == 'viewNarrationsPage'}">
            <div style="display: flex; flex-direction: row">
                <input type="text" size="40" maxlength="100" id="inputSearch" oninput="{narrationsSearchInput}"/>
                <div class="circleButton2" style="width:25px:height:25px">Search</div>
            </div>
            <narrationgallery smallnarrationgallery="{false}" narrationsimageslist="{app.searchedNarrations}"></narrationgallery>
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
                    <div>&nbsp &nbsp</div>
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
                    Enter your email address
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input oninput="{onLogInInput}" type="text" size="40" maxlength="100" id="emailInput"/>
                    <div if="{confirmClicked && !email}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter your email</div>
                    <div if="{confirmClicked && app.email && app.wrongEmail}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a valid email address</div>
                    <div if="{confirmClicked && app.emailTaken}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Email taken, please enter another</div>
                </div>
            </div>
            <div style="display: flex; flex-direction: row; margin-bottom: -50px">
                <p style="font-family: RobotoCR">
                    Enter your password
                </p>&nbsp
                <div class="inputTextDiv" style="display: flex; flex-direction: row; align-items: center;">
                    <input oninput="{onLogInInput}" type="text" size="40" maxlength="100" id="passwordInputFirst"/>
                    <div if="{confirmClicked && !app.password}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Please enter a password</div>
                    <div if="{confirmClicked && app.password && app.wrongPassword}" style="margin-left: 4px; white-space:nowrap;font-family: RobotoCR">Password should be minimum 6 characters long</div>
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
            <!--<div style="display: flex; flex-direction: row">-->
            <div style="display: flex; flex-direction: row">
                <div style="margin-right:10px">
                    <form id="frmUploader" name="new_post" enctype="multipart/form-data" action="uploadImages" method="post">
                        <div class="circleButton extraSmall" style="font-size: 15px; text-align: center" onclick="{fileInputClick}">Upload image</div>
                        <input
                            type="file"
                            onchange="{submitImageFile}"
                            id="fileInput"
                            name="image_file"
                            style=
                                "
                                    display:none;
                                "
                        >
                    </form>
                </div>
                <div style="display: flex; flex-direction: row">
                    <img src="images\rotate90DegreesRightIcon.svg" style="height: 50px; width: 50px" id="right" onclick="{rotateImageRight}"/>
                    <div style="width: 5px"></div>
                    <img src="images\rotate90DegreesLeftIcon.svg" style="height: 50px; width: 50px" id="left" onclick="{rotateImageLeft}"/>
                    <div style="width: 15px"></div>
                    <div class="circleButton extraSmall" style="font-size: 12px; text-align: center" onclick="{saveImageRotation}">Save Rotation</div>
                </div>
            </div>
        
                <!--
                <div>
                    <form id="frmUploader" name="new_post" enctype="multipart/form-data" action="uploadImages" method="post">
                        <input type="file" name="uploadedImages" id="fileUpload" multiple />
                        <input type="hidden" value="{app.username}" name="username"/>
                        <input type="hidden" value="{app.password}" name="password"/>
                        <input type="submit" name="submit" id="btnSubmit" value="Upload" /> 
                    </form>
                        <label for="file"><span>Choose image files</span></label>
                    <div class="circleButton extraSmall" style="font-size: 15px;color: red" onclick="{loadImageFileAsUrl}">Load selected file</div>
                </div>
                
            </div>
            -->
            <imagegallery sortable="{true}" imagelist="{app.images}" columnorrow="{'row'}"></imagegallery>
            <!--<div class="imageGallery rcornersBorder">
                <img class="galleryImage" each="{images}" src="{url}">
            </div>-->
            <div style="display: flex; flex-direction: row">
                <div style="font-family: RobotoCR">If you want to delete an image select it and click the delete button. Select ones you want to show in your narration.</div>
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
                                <div if="{app.publishButtonVisible == true}" class="circleButton" onclick="{publishButtonClicked}" style="font-size: 10px; width: 60px; height: 60px">Publish this narration</div>
                                <div if="{app.publishButtonVisible == false}" class="circleButton" onclick="{unpublishButtonClicked}" style="font-size: 10px; width: 60px; height: 60px">Unpublish</div>
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
        <div if="{app.pageName == 'newUserWithoutAnyImagesOrNarrationsSavedPage'}">
            <p style="font-family: RobotoCR; color: purple">Welcome {app.username}. You have no narrations saved.</p>
            <div class="circleButton" onclick="{app.goToImageGalleryPage}" style="font-size: 20px; text-align: center">Create new narration</div>
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
                            <div if="{narration.title}" style="font-family: RobotoCR" id="userAreaNarrationTitleDiv" contenteditable="true" onblur="{onNarrationTitleInputUserAreaPage}">{narration.title}</div>
                            <div if="{!narration.title}" style="font-family: RobotoCR" id="userAreaNarrationTitleDiv" contenteditable="true" onblur="{onNarrationTitleInputUserAreaPage}">Enter title</div>
                            <div if="{(!narration.title || narration.title == "Enter Title") && (app.publishNarrationButtonClicked==true && narration.isChecked)}" style="font-family: RobotoCR; color: purple">Enter title before publishing</div>
                            <div if="{narration.published}"  class="checkMark">
                                <img src="images\checkMark.png" width="20px" height="20px"/>
                            </div>
                        </div>
                        
                        
                    </div>
                    <!--
                    <div each="{publishedNarration, i in app.publishedNarrationObjects}">
                        <div if="{publishedNarration.published && app.narrationSelected}" class="checkMark">
                            <img src="images\checkMark.png" width="20px" height="20px"/>
                        </div>
                    </div>
                    -->
                      
                        
                        
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
        app.ipAddress = "192.168.1.51";
        
        
        login(){
             $.post(
                app.rootUrlWithSlashAtEnd + "login",
                {
                    username: app.username,
                    password: app.password
                },
                function( data ) {
                    //console.log("data.narrations after login is " + JSON.stringify(data.narrations));
                    if(data == "Invalid username or password" && app.username && app.password){
                        app.invalidUsernameOrPasswordForLogin = true;
                        app.emptyUsernameOrPassword = false;
                        app.update();
                    }
                    if(data != "Invalid username or password"){
                        console.log("Inside ELSE VALID USERNAME AND PASSWORD");
                        if(data.narrations && data.galleryItems){
                            app.switchPageAndAddToHistory('userAreaPage');
                            app.images = data.galleryItems;
                            app.narrations = data.narrations;
                            //app.slideSwitches = data.slideSwitches;
                            app.update();
                        }
                        else if(data.galleryItems && !data.narrations){
                            app.switchPageAndAddToHistory('chooseImagesFromImageGalleryPage');
                            console.log("DATA.GALLERYITEMS ARE " + JSON.stringify(data.galleryItems));
                            app.images = data.galleryItems;
                            app.update();
                        }
                        else if(!data.galleryItems && !data.narrations){
                            app.switchPageAndAddToHistory('newUserWithoutAnyImagesOrNarrationsSavedPage');
                            app.update();    
                        }
                        //$("#userAreaWelcomeMessageParagraph").html(app.welcomeParagraph);
                        //console.log("userAreaWelcomeMessageParagraph " + $("#userAreaWelcomeMessageParagraph") + app.welcomeParagraph);
                        //document.getElementById("userAreaNarrationTitleDiv").innerHTML = narration.title;
                    }   
                }
            );
            if(!app.username || !app.password){
                app.emptyUsernameOrPassword = true;
                app.invalidUsernameOrPasswordForLogin = false;
            }
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
            app.smallnarrationgallery = false;
            /*
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
            */
        }
        
        rotateImageRight(e){
            app.deg = app.deg + 90;
            rotateImage();
        }
        rotateImageLeft(e){
            app.deg = app.deg - 90;
            rotateImage();
        }
        
        function rotateImage(){
            $(":image.galleryImage,.highlight").css({
                "-webkit-transform": "rotate(" + app.deg + "deg)",
                "-moz-transform": "rotate(" + app.deg + "deg)",
                transform: "rotate(" + app.deg + "deg)"
            }); 
            console.log("Degrees rotated are " + app.deg);
            app.update();      
        }
        
        saveImageRotation(e){
            //var imageSrcs = [];
            var galleryItemIds = [];
            var imageUrls = [];
            app.chosenImages = app.images.filter(
                galleryItem=>galleryItem.selected
            );
            galleryItemIds = app.chosenImages.map(galleryItem=>galleryItem._id);
            imageUrls = app.chosenImages.map(galleryItem=>galleryItem.url);
            /*
            app.chosenImages.forEach(function(chosenImage){
                console.log("Chosen Image id is " + chosenImage._id);
                console.log("Chosen Image url is " + chosenImage.url);
                galleryItemIds.push(chosenImage._id);
                imageUrls.push(chosenImage.url);

            });
            */
            console.log("IMAGE IDS ARE " + galleryItemIds);
            console.log("IMAGE URLS ARE " + imageUrls);
            //console.log("IMAGE URLS ARE " + imageUrls);
            $.post(
                app.rootUrlWithSlashAtEnd + "saveRotatedImages",
                {
                    urls: imageUrls,
                    degrees: app.deg
                },
                function( data ) {
                    app.chosenImages = data;
                    console.log("data VARIABLE CONTAINING chosen Images is " + JSON.stringify(data));
                    app.update();
                    app.imagesRotated = true;

                }
            );
            /*
            $(":image.galleryImage,.highlight").each(function(){
                console.log("IMAGE URL " + $(this).attr("src"));
                imageSrcs.push($(this).attr("src"));
            });
            console.log("URL Array is " + imageSrcs);
            */

        }
        
        narrationsSearchInput(e){
            app.searchNarrationsInput = $('#inputSearch').val();
            console.log("Search input is " + app.searchNarrationsInput);
            $.post(
                app.rootUrlWithSlashAtEnd + "getNarrationsMatchingSearchInput",
                {
                    searchInput: app.searchNarrationsInput
                },
                function( data ) {
                    app.searchedNarrations = data;
                    console.log("data VARIABLE CONTAINING SEARCHED NARRATIONS FROM SERVER IS " + JSON.stringify(data));
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
        linkToForgotUsernameOrPasswordPageClicked(e){
            app.switchPageAndAddToHistory('enterEmailForResettingPasswordPage');

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
        /*
        if(app.pageName=='chooseImagesFromImageGalleryPage'){
                var options = {
                        beforeSubmit: showRequest
                }
        }       
        

        var form = document.getElementById('frmUploader');
        $(function(){
            $('form[name=new_post]').submit(function(){
                var formData = new FormData(form);

                formData.append('file', file);

                var xhr = new XMLHttpRequest();
                // Add any event handlers here...
                xhr.open('POST', form.getAttribute('action'), true);
                xhr.send(formData);

                return false; // To avoid actual submission of the form
            });
        });
        */
        /*
        $(function(){
            let myFileInput = document.getElementById('fileUpload');
            myFileInput.addEventListener("change", handleFiles, false);
        });
        function handleFiles() {
            app.fileList = this.files;  now you can work with the file list 
        
        */
        
        fileInputClick(e){
            document.getElementById('fileInput').click();
        }
        submitImageFile(e){
            console.log("Inside submit image file");
            //var form = document.getElementById('frmUploader');
            //parse meta data
            /*
            loadImage(
                    e.target.files[0],
                    function(canvas) {
                        //here's the base64 data result
                        var base64data = canvas.toDataURL('image/jpeg');
                        //here's example to show it as on imae preview
                        var img_src = base64data.replace(/^data\:image\/\w+\;base64\,/, '');
                        $('#result-preview').attr('src', base64data);
                    }, {
                        //should be set to canvas : true to activate auto fix orientation
                        canvas: true,
                        orientation: true
                    }
                );
            */
            /*
            var fileInputResult = document.getElementById("fileInput");
            console.log("File name is " + fileInputResult.value)
            const
                url = fileInputResult.value,
                galleryItem = {url: url}
            ;
            */
            /*
            var correctedImage = loadImage.parseMetaData(
                e.target.files[0],
                function(data){
                    //document.body.appendChild(img);
                    app.orientationExif = data.exif.get("Orientation");
                    console.log("ORIENTATION IS " + JSON.stringify(app.orientationExif));
                },
                {
                    orientation: true,
                    maxWidth: 600
                }
            );
            */

            //console.log("rotated image is " + correctRotationImage);
            //console.log("CORRECTED IMAGE IS " + JSON.stringify(correctedImage));
            //console.log("Original image before correction is " + $('#fileInput')[0].files[0]);
            
            var formData = new FormData();
            formData.append('file', $('#fileInput')[0].files[0]);
            //formData.append('orientation', app.orientationExif);
            formData.append('username', app.username);
            formData.append('password', app.password);
            for (var [key, value] of formData.entries()) { 
                console.log(key, value);
            }
            console.log("FormData is " + JSON.stringify(formData));
            $.ajax({
                url : app.rootUrlWithSlashAtEnd + "uploadImages",
                type : 'POST',
                data : formData,
                processData: false,  // tell jQuery not to process the data
                contentType: false,  // tell jQuery not to set contentType
                success : function(data) {
                    //Say done or something
                    console.log(data);
                    //var path2 = data.replace(/\\/g, "/");
                    //console.log(path2);
                    app.galleryItem = {
                        _id: data.imageId,
                        url: "http://localhost:3700/Images/" + data.fileName
                    };
                    app.images.push(app.galleryItem);
                    app.update();
                    //document.getElementById("imageGalleryImage").src = "http://localhost:3700/Images/" + data.fileName;
                    /*
                    setTimeout(()=>
                        {
                            app.update();
                        },
                        10000
                    );
                    */
                    
                    /*
                    var correctedImageAfterSavingOrientationDataToDatabase = loadImage(
                        "http://localhost:3700/Images/" + data.fileName,
                        function(){
                            app.images.push(app.galleryItem);    
                        },
                        {
                            orientation: true
                        }
                    );
                    */
                    /*
                    loadImage.parseMetaData($('#fileInput')[0].files[0], function(data) {
    //default image orientation
                        var orientation = 0;
                        //if exif data available, update orientation
                        if (data.exif) {
                            orientation = data.exif.get('Orientation');
                        }
                        var loadingImage = loadImage(
                            $('#fileInput')[0].files[0],
                            function(canvas) {
                                //here's the base64 data result
                                //var base64data = canvas.toDataURL('image/jpeg');
                                //here's example to show it as on imae preview
                                //var img_src = base64data.replace(/^data\:image\/\w+\;base64\,/, '');
                                var base64data = canvas.toDataURL($('#fileInput')[0].files[0]);
                                var img_src = base64data.replace(/^data\:image\/\w+\;base64\,/, '');
                                galleryItem.url = "http://localhost:3700/Images/" + base64data;
                                app.images.push(galleryItem);
                                //$('#result-preview').attr('src', base64data);
                            }, {
                                //should be set to canvas : true to activate auto fix orientation
                                canvas: true,
                                orientation: orientation
                            }
                        );
                    });
                    */
                }
            });
        }
        
        /*
        $(function(){
            $('form[name=new_post]').submit(function(){
                console.log("Inside form submit function");
                $.post(
                    app.rootUrlWithSlashAtEnd + $(this).attr('action'), JSON.stringify(formData), function(data) 
                    {
                        console.log(data);
                        alert(json);
                    }, 
                        
                );
                return false;
            });
        });
        */
        /*
        $(function(){
            $('form[name=new_post]').submit(function(){
                console.log("Inside form submit function");
               // var files = $('#fileUpload').get(0).files,
                    formData = new FormData();
                    formData.append('file', $('#fileInput')[0].files[0]);               
                var myFileInput = document.getElementById('fileUpload');
                
                for (var i=0; i < files.length; i++) {
                    var file = files[i];
                    formData.append('images[]', file, file.name);
                }
                formData.append('uploadedFiles', app.fileList);
                formData.append('username', app.username);
                formData.append('password', app.password);
                
                console.log("FORMDATA IS " + JSON.stringify(formData));
                $.post(
                    app.rootUrlWithSlashAtEnd + $(this).attr('action'), JSON.stringify(formData), function(data) 
                    {
                        console.log(data);
                        alert(json);
                    }, 
                        
                );
                return false;
                
                
            });
        });
        */
        
    
                
                
                
                //$(this).serialize()
                
                
            
        
        /*
        $.post(app.rootUrlWithSlashAtEnd + $(this).attr('action'), $(this).serialize(), function(json) {
            alert(json);
            }, 
            'json');
        return false;
        
        });
                   
        
        
        $('#btnSubmit').click(function(e){
            $('#frmUploader').submit();
        });
            var formElement = document.querySelector("form");
            var formData = new formData(formElement);
            var files = $("#fileUpload")[0].files;

            for (var i = 0; i < files.length; i++)
            {
                formData.append(files[i]);
                //alert(files[i].name);
            }
            var obj = {
                formData : formData,
                username : app.username,
                password: app.password
            };
            var request = new XMLHttpRequest();
            request.open("POST", app.rootUrlWithSlashAtEnd + "uploadImages");
            request.send(obj);
            });
            
            
            $.post(
                app.rootUrlWithSlashAtEnd + "uploadImages",
                {
                    username: app.username,
                    password: app.password
                },
                function( data ) {
                    console.log("Uploaded Images add response: " + JSON.stringify(data));
                    galleryItem._id = data.galleryItemId;
                    //app.blockMouseForGallery = false;
                    app.update();
                }
            );
            
        
        
                
                
                const files = new Array(document.querySelector('input[type=file]').files);
                files.forEach(function(file){
                        const
                            url = file,
                            galleryItem = {url: url}
                        ;
                        app.images.push(galleryItem);

                        console.log("Image add");
                        console.log("Uploaded image file name is " + file.name);
                    }
                );
                
                
                
                console.log("Inside first line of code for uploading images");
                app.input = $(".inputfile");
                app.label = app.input.next('label');
                app.labelVal = app.label.html();

                var files = document.querySelector('input[type=file]').files;
                
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
                            app.blockMouseForGallery = true;
                
                            const
                                url = image.src,
                                galleryItem = {url: url}
                            ;


                            app.images.push(galleryItem);

                            console.log("Image add");
                            console.log("Uploaded image file name is " + file.name);
                            
                            //TODO: save to server under current user
                        
                            $.post(
                                app.rootUrlWithSlashAtEnd + "addUploadedImage",
                                {
                                    username: app.username,
                                    password: app.password,
                                    url: url
                                },
                                function( data ) {
                                    console.log("Add uploaded image response: " + JSON.stringify(data));
                                    galleryItem._id = data.galleryItemId;
                                    app.blockMouseForGallery = false;
                                    app.update();
                                }
                            );
                            
                            
                            //console.log("Images uploaded are " + image.src);
                        }, false);

                        reader.readAsDataURL(file);
                    
                        var fileName = '';
            
                        if( files && files.length > 1 ){
                            app.numberOfFilesChosen = files.length;
                            fileName = app.numberOfFilesChosen + " files selected";
                        }
                        else if(e.target.value){
                            fileName = e.target.value.split( '\\' ).pop();
                        }
                        console.log("FILENAMES ARE " + fileName);
                        app.label.find('span').html(fileName);
                    }
                
                
                console.log("app.images array after adding uploaded image files urls is " + JSON.stringify(app.images));
                
                function imageIsLoaded(){
                    $('#uploadedImage').src = app.reader.result;
                }
                

                //Firefox bug fix
                app.input
                .on( 'focus', function(){ app.input.addClass( 'has-focus' ); })
                .on( 'blur', function(){ app.input.removeClass( 'has-focus' ); });
            */


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
            app.email = $("#emailInput").val();
            app.password = $("#passwordInputFirst").val();
            app.passwordSecond = $("#passwordInputSecond").val();

            var regularExpressionEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            
            if(!regularExpressionEmail.test(app.email)){
                console.log(app.email);
                app.wrongEmail = true;
            }
            else{
                app.wrongEmail = false;
                console.log(app.email);
            }
            /*
            if(!app.email){
                app.wrongEmail = false;
            }
            */
            
            //TODO: Message to request user to enter password with letters and numbers of 8 characters minimum
            var regularExpressionPassword = /^.{6,}$/
            //var regularExpressionPassword = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{8,20})/;
            if(!regularExpressionPassword.test(app.password)){
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

            if(app.username && app.password && app.passwordSecond && app.passwordsMatching && !app.wrongPassword && app.email && !app.wrongEmail){
                console.log("I have reached where post is");
                $.post(
                    app.rootUrlWithSlashAtEnd + "register",
                    {
                        username: app.username,
                        password: app.password,
                        email: app.email
                    },
                    function(data) {
                        console.log("Inside funtion(data)");
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
                        app.emailTaken = data.includes("Email");
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
        /*
        app.emailValidTest = function(emailEntered){
                var regularExpressionEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                if(!regularExpressionEmail.test(emailEntered)){
                    console.log(emailEntered);
                    app.wrongEmailEnterEmailForResettingPasswordPage = true;
                }
                else{
                    app.wrongEmailEnterEmailForResettingPasswordPage = false;
                    console.log(emailEntered);
                }
        }
        */
        submitClickedEnterEmailForResettingPasswordPage(e){
            app.emailForPasswordReset = $("#emailInputResetPassword").val();
            app.emailReenterForPasswordReset = $("#emailInputResetPassword2").val();
            if(app.emailForPasswordReset != app.emailReenterForPasswordReset){
                app.emailsMatching = false;
            }
            else{
                app.emailsMatching = true;
            }
            var regularExpressionEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if(!regularExpressionEmail.test(app.emailForPasswordReset)){
                console.log("Wrong format for 1st inputted email");
                app.wrongEmailFirstInputEnterEmailForResettingPasswordPage = true;
            }
            else{
                app.wrongEmailFirstInputEnterEmailForResettingPasswordPage = false;
                console.log("Correct email format for 1st input");
            }

            if(!regularExpressionEmail.test(app.emailReenterForPasswordReset)){
                console.log("Wrong format for 2nd inputted email");
                app.wrongEmailSecondInputEnterEmailForResettingPasswordPage = true;
            }
            else{
                app.wrongEmailSecondInputEnterEmailForResettingPasswordPage = false;
                console.log("Correct email format for 2nd input");
            }
            /*
            app.emailValidTest(app.emailForPasswordReset);
            app.emailValidTest(app.emailReenterForPasswordReset);
            if(app.emailValidTest(app.emailForPasswordReset) == !app.wrongEmailEnterEmailForResettingPasswordPage && app.emailValidTest(app.emailReenterForPasswordReset) == !app.wrongEmailEnterEmailForResettingPasswordPage){
                app.correctEmailFormatEnteredInBothInputs = true;
                console.log("app.correctEmailFormatEnteredInBothInputs");
            } 
            */
            

            if(app.emailForPasswordReset && app.emailReenterForPasswordReset && app.emailsMatching && !app.wrongEmailFirstInputEnterEmailForResettingPasswordPage && !app.wrongEmailSecondInputEnterEmailForResettingPasswordPage){
                console.log("I have reached where post checkEmailExists is");
                $.post(
                        app.rootUrlWithSlashAtEnd + "checkEmailExists",
                        {
                            email: app.emailForPasswordReset
                        },
                        function(data) {
                            console.log("Inside function data enter email page for password reset");
                            console.log(data);
                            app.emailDoesNotExistInRecords = data.includes("exist");
                            if(data.includes("link")){
                                document.getElementById('submitButton').style.pointerEvents = 'none';
                                //$('#submitButton').attr('disabled', true);
                                $('#divReplacingSubmitButton').css({'width': '100px', 'height': '100px'});
                            }
                            app.update();
                        }
                );
            }
        }
        divReplacingSubmitButtonClicked(e){
            document.getElementById('divReplacingSubmitButton').style.pointerEvents = 'none';
            app.divReplacingSubmitButtonDisabled = true;
            //$('#divForReplacingSubmitButton').attr('disabled', true);
        }

        pushPageNameToHistory(){
            history.pushState(app.pageName, null, app.pageName);
        }

        nextButtonClicked(e){
            if(app.imagesRotated == false){
                app.chosenImages = app.images.filter(
                    galleryItem=>galleryItem.selected
                );
            }
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
                                title: app.narrationTitle,
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
                            echoCancellation: false,
                            autoGainControl: true,
                            noiseSuppression: true,
                        },
                        video: false    
                };
                /*
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
                */

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
                        app.narrationSelected.published = false;
                        app.publishButtonVisible = true;

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
            //console.log("setTimeoutIDArray is " + JSON.stringify(app.setTimeoutIDArray));
            /*
            app.setTimeoutIDArray.forEach(
                function(setTimeoutID){
                    clearInterval(setTimeoutID);
                }
            );
            app.setTimeoutIDArray.length = 0;
            */
            clearTimeout(app.setIntervalSlideSwitches);
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
                if(app.narrationSelected.published == true){
                    console.log("Inside app.narrationSelected.published == true. Narration selected publish status is " + app.narrationSelected.published);
                    app.publishButtonVisible = false;
                    app.update();
                }
                if(app.narrationSelected.published == false){
                    console.log("Inside app.narrationSelected.published == false. Narration selected publish status is " + app.narrationSelected.published);
                    app.publishButtonVisible = true;
                    app.update();
                }
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
        app.narrationsIdsToPublish = [];
        publishButtonClicked(e){
            app.publishNarrationButtonClicked = true;
            //var page = "";
            //app.narrationSelected.published = true;
            console.log("app.username is " + app.username + " app.password is " + app.password);
            console.log('RECENT NARRATION TAKES IS NOW ' + JSON.stringify(app.recentNarrationTakes));
            if(app.pageName == 'userAreaPage'){
                console.log("Narrations in user area app.narrations are " + JSON.stringify(app.narrations));
                //page= userArea;
                app.narrationsIdsToPublish =
                    app.narrations
                        .filter(
                            narration=>narration && narration.isChecked && narration.title && narration.title != "Enter Title"//Fix narrations sometimes being null
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
                console.log("Narration title is " + app.narrationTitle);
                console.log("Narration ids to publish are " + app.narrationsIdsToPublish);
            }
            if(app.pageName == "recordNarrationPage"){
                //page =  recordNarration;
                app.narrationsIdsToPublish =
                    app.recentNarrationTakes
                        .filter(
                            narration=>narration 
                            
                            && 

                            app.narrationSelected == narration

                            &&
                            
                            narration.title 
                            
                            && 
                            
                            narration.title != "Enter Title"
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
                console.log("Narration ids to publish are " + app.narrationsIdsToPublish);
                console.log("Narration selected title is " + app.narrationSelected.title + " " + app.narrationTitle);
            }
            console.log("Narration ids to publish are " + app.narrationsIdsToPublish);
            if(app.narrationsIdsToPublish){
                $.post(
                    app.rootUrlWithSlashAtEnd + "publishNarrations",
                    {
                        username: app.username,
                        password: app.password,
                        narrationIds: app.narrationsIdsToPublish,
                        pageName: app.pageName
                    },
                    function( data ) {
                        //console.log("RESPONSE FROM SERVER, NARRATION OBJECT AFTER SAVING PUBLISHED = TRUE TO DATABASE " + JSON.stringify(data));
                        if(app.pageName == "userAreaPage"){
                            app.narrations = data;
                            app.update();
                            console.log("User narrations are " + JSON.stringify(data));
                        }
                        if(app.pageName == "recordNarrationPage"){
                            console.log("published narrations are " + JSON.stringify(data));
                            console.log("recent narration takes before updation are " + JSON.stringify(app.recentNarrationTakes));
                            /*
                            app.publishedNarrations.forEach(function(publishedNarration){

                                app.recentNarrationTakes.forEach(function(narration){
                                    app.recentNarrationTakes
                                        .filter(
                                            narration=>narration._id = publishedNarration._id
                                        )
                                        .published = true;    
                                });
                            });
                            */
                            if(data){
                                app.narrationSelected.published = true;
                                app.publishButtonVisible = false;
                                console.log("Recent narration takes before updation are " + JSON.stringify(app.recentNarrationTakes));
                                /*
                                app.recentNarrationTakes
                                    .filter(
                                        narration=>app.narrationSelected == narration
                                    )
                                    .published = true
                                ;
                                */
                                app.update();
                                console.log("Recent narration takes is now " + JSON.stringify(app.recentNarrationTakes));
                                
                            }
                            
                        }
                        
                        /*
                        if(data.published){
                            app.narrationSelected.published = true;
                            console.log('RECENT NARRATION TAKES IS NOW ' + JSON.stringify(app.recentNarrationTakes));
                        */
                        /*
                            app.recentNarrationTakes
                                .filter(
                                    narration=>narration=app.narrationSelected
                                )
                                .published = true; 
                        */
                    }
                );
            }   
        }
        app.narrationsIdsToUnpublish = [];
        unpublishButtonClicked(e){
            if(app.pageName == 'userAreaPage'){
                console.log("Narrations in user area app.narrations are " + JSON.stringify(app.narrations));
                app.narrationsIdsToUnpublish =
                    app.narrations
                        .filter(
                            narration=>narration && narration.isChecked //Fix narrations sometimes being null
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
            }
            if(app.pageName=="recordNarrationPage"){
                app.narrationsIdsToUnpublish =
                    app.recentNarrationTakes
                        .filter(
                            narration=>narration && app.narrationSelected == narration
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
            }
            $.post(
                app.rootUrlWithSlashAtEnd + "unpublishNarrations",
                {
                    username: app.username,
                    password: app.password,
                    narrationIds: app.narrationsIdsToUnpublish,
                    pageName: app.pageName
                },
                function( data ) {
                    console.log("RESPONSE FROM SERVER, NARRATION OBJECT AFTER SAVING PUBLISHED = FALSE TO DATABASE " + JSON.stringify(data));
                    if(app.pageName == "userAreaPage"){
                        app.narrations = data;
                        app.update();
                    }
                    if(app.pageName == "recordNarrationPage"){
                        if(data){
                            app.narrationSelected.published = false;
                            app.publishButtonVisible = true;
                            /*
                            app.recentNarrationTakes
                                    .filter(
                                        narration=>app.narrationSelected == narration
                                    )
                                    .published = false
                            ;
                            */
                            app.update();
                            console.log("Recent narration takes is now " + JSON.stringify(app.recentNarrationTakes));           
                        }
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
                    app.setIntervalSlideSwitches = 
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
                    app.images.push(galleryItem);
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
                console.log("NARRATIONS IDS TO DELETE USER AREA PAGE ARE " + app.narrationsIdsToDelete);
            }

            if(app.pageName=="recordNarrationPage"){
                app.narrationsIdsToDelete =
                    app.recentNarrationTakes
                        .filter(
                            narration=>narration == app.narrationSelected
                        )
                        .map(
                            narration=>narration._id
                        )
                ;
                console.log("NARRATIONS IDs TO DELETE RECORD NARRATION PAGE ARE " + app.narrationsIdsToDelete);
            }

            $.post(
                app.rootUrlWithSlashAtEnd + "deleteNarrationsFromDatabase",
                {
                    narrationIds: app.narrationsIdsToDelete
                },
                data=>{
                    if(data){
                        console.log("Inside function data returned after deletion of narration from database is confirmation deleted " + data)
                        if(app.pageName == "userAreaPage"){
                            app.narrations = 
                                app.narrations
                                    .filter(
                                        narration=>narration && !narration.isChecked
                                    )
                            ;
                        }
                        if(app.pageName == "recordNarrationPage"){
                            app.recentNarrationTakes = 
                                app.recentNarrationTakes
                                    .filter(
                                        narration=>narration != app.narrationSelected
                                    )
                            ;
                        }
                        app.update();
                    }
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
        app.narrationsIdsOfNarrationsToUpdateTitle = [];
        onNarrationTitleInputRecordNarrationPage(e){
            console.log('NEW VALUE IS ' + e.currentTarget.textContent);
            app.narrationTitle = e.currentTarget.textContent;
            
            /*
            app.recentNarrationTakes
                .filter(
                    narration => narration.published == false    
                )
                .map(
                    narration=>narration.title = e.currentTarget.textContent;
                )
            ;
            
            narrationsToUpdateTitleWhichHaveNotBeenPublished
                .forEach(
                    narration => app.narrationTitle = e.currentTarget.textContent
                )
            ;
            */

            app.recentNarrationTakes.length
            &&
            (
            app.narrationsIdsOfNarrationsToUpdateTitle =
                app.recentNarrationTakes
                    .filter(
                        narration=>!narration.published
                    )
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
                function(data) {
                    console.log("Update narrations title call returned data from server Record Narration Page" + JSON.stringify(data));
                    for(var i in app.recentNarrationTakes){
                        for(var j in data){
                            if(app.recentNarrationTakes[i]._id == data[j]._id){
                                app.recentNarrationTakes[i].title = app.narrationTitle;
                            }
                        }
                    }
                    app.update();
                }
            );
            console.log("Narration ids of narrations to update title are " + app.narrationsIdsOfNarrationsToUpdateTitle);
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
            );
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
/*
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
*/


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
                app.deg = 0;
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
                            arrayClone.splice(startIndex, 1);
                            arrayClone.splice(stopIndex, 0, app.images[startIndex]);
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
                                    //alert( "Data Loaded: " + JSON.stringify(data) );
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
            <div if="{parent.opts.smallnarrationgallery}" class="thumbnailTitle">{narration.title}</div>
            <div if="{!parent.opts.smallnarrationgallery}" class="thumbnailTitle">{narration.title}</div>
            <img src="{narration.slideSwitches[0].imageUrl}"  id="narrationImage" class="{ galleryImage : parent.opts.smallnarrationgallery==true, narrationImage : parent.opts.smallnarrationgallery==false, selectedThumbnail: narration==app.narrationSelected }"
            onclick="{parent.opts.smallnarrationgallery ? app.thumbnailClicked : app.largethumbnailclickedonpublicarea}"/>
        </div>
        <div if="{app.publishNarrationButtonClicked==true && (!app.narrationTitle || app.narrationTitle == "Enter Title")}">Please enter title before publishing</div>
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



