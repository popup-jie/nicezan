$(document).ready(function () {
    // Full featured editor
    $('#editor1').each(function (index, element) {
        $(element).wysiwyg({
            classes: 'some-more-classes',
            // 'selection'|'top'|'top-selection'|'bottom'|'bottom-selection'
            toolbar: index == 0 ? 'top-selection' : (index == 1 ? 'bottom' : 'selection'),
            buttons: {
                // Dummy-HTML-Plugin
                dummybutton1: index != 1 ? false : {
                    html: $('<input id="submit" type="button" value="bold" />').click(function () {
                        // We simply make 'bold'
                        if ($(element).wysiwyg('shell').getSelectedHTML())
                            $(element).wysiwyg('shell').bold();
                        else
                            alert('Please selection some text');
                    }),
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                // Dummy-Button-Plugin
                dummybutton2: index != 1 ? false : {
                    title: 'Dummy',
                    image: '\uf1e7',
                    click: function ($button) {
                        alert('Do something');
                    },
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                // Smiley plugin
                insertimage: {
                    title: '插入图片',
                    image: '\uf030', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    text: '&#xe629',
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection

                },
                fontsize: index == 1 ? false : {
                    title: '字号',
                    text: '&#xe625;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    popup: function ($popup, $button) {
                        var list_fontsizes = {
                            // Name : Size
                            '29px': 7,
                            '26px': 6,
                            '23px': 5,
                            '20px': 4,
                            '17px': 3,
                            '14px': 2,
                            '11px': 1
                        };
                        var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                                                   .attr('unselectable', 'on');
                        $.each(list_fontsizes, function (name, size) {
                            var $link = $('<a/>').attr('href', '#')
                                                    .css('font-size', (8 + (size * 3)) + 'px')
                                                    .html(name)
                                                    .click(function (event) {
                                                        $(element).wysiwyg('shell').fontSize(size).closePopup();
                                                        // prevent link-href-#
                                                        event.stopPropagation();
                                                        event.preventDefault();
                                                        return false;
                                                    });
                            $list.append($link);
                        });
                        $popup.append($list);
                    }
                    //showstatic: true,    // wanted on the toolbar
                    //showselection: true    // wanted on selection
                },
                bold: {
                    title: '加粗 (Ctrl+B)',
                    text: '&#xe622;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    hotkey: 'b'
                },
                underline: {
                    title: '下划线 (Ctrl+U)',
                    text: '&#xe623;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    hotkey: 'u'
                },
                alignleft: index != 0 ? false : {
                    title: '左对齐',
                    text: '&#xe627;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                aligncenter: index != 0 ? false : {
                    title: '居中',
                    text: '&#xe62a;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                alignright: index != 0 ? false : {
                    title: '右对齐',
                    text: '&#xe626;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                }
                //                AllSeat: index != 0 ? false : {
                //                    title: '全屏',
                //                    text: '&#xe626;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                //                    //showstatic: true,    // wanted on the toolbar
                //                    showselection: false    // wanted on selection
                //                }

            },
            // Submit-Button
            submit: {
                title: 'Submit',
                text: '&#xe620;'
                // image: '\uf00c' // <img src="path/to/image.png" width="16" height="16" alt="" />
            },
            // Other properties
            dropfileclick: '点击选择上传的图片',
            placeholderUrl: 'www.example.com',
            maxImageSize: [600, 200]
            /*
            onImageUpload: function( insert_image ) {
            // Used to insert an image without XMLHttpRequest 2
            // A bit tricky, because we can't easily upload a file
            // via '$.ajax()' on a legacy browser.
            // You have to submit the form into to a '<iframe/>' element.
            // Call 'insert_image(url)' as soon as the file is online
            // and the URL is available.
            // Best way to do: http://malsup.com/jquery/form/
            // For example:
            //$(this).parents('form')
            //       .attr('action','/path/to/file')
            //       .attr('method','POST')
            //       .attr('enctype','multipart/form-data')
            //       .ajaxSubmit({
            //          success: function(xhrdata,textStatus,jqXHR){
            //            var image_url = xhrdata;
            //            console.log( 'URL: ' + image_url );
            //            insert_image( image_url );
            //          }
            //        });
            },
            onKeyEnter: function() {
            return false; // swallow enter
            }
            */
        })
        /* .change(function(){
        if( typeof console != 'undefined' )
        console.log( 'change' );
        })
        .focus(function(){
        if( typeof console != 'undefined' )
        console.log( 'focus' );
        })
        .blur(function(){
        if( typeof console != 'undefined' )
        console.log( 'blur' );
        });*/
    });
    $('#editor2').each(function (index, element) {
        $(element).wysiwyg({
            classes: 'some-more-classes',
            // 'selection'|'top'|'top-selection'|'bottom'|'bottom-selection'
            toolbar: index == 0 ? 'top-selection' : (index == 1 ? 'bottom' : 'selection'),
            buttons: {
                // Dummy-HTML-Plugin
                dummybutton1: index != 1 ? false : {
                    html: $('<input id="submit" type="button" value="bold" />').click(function () {
                        // We simply make 'bold'
                        if ($(element).wysiwyg('shell').getSelectedHTML())
                            $(element).wysiwyg('shell').bold();
                        else
                            alert('Please selection some text');
                    }),
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                // Dummy-Button-Plugin
                dummybutton2: index != 1 ? false : {
                    title: 'Dummy',
                    image: '\uf1e7',
                    click: function ($button) {
                        alert('Do something');
                    },
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                // Smiley plugin
                insertimage: {
                    title: '插入图片',
                    image: '\uf030', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    text: '&#xe629',
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection

                },
                fontsize: index == 1 ? false : {
                    title: '字号',
                    text: '&#xe625;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    popup: function ($popup, $button) {
                        var list_fontsizes = {
                            // Name : Size
                            '29px': 7,
                            '26px': 6,
                            '23px': 5,
                            '20px': 4,
                            '17px': 3,
                            '14px': 2,
                            '11px': 1
                        };
                        var $list = $('<div/>').addClass('wysiwyg-toolbar-list')
                                                   .attr('unselectable', 'on');
                        $.each(list_fontsizes, function (name, size) {
                            var $link = $('<a/>').attr('href', '#')
                                                    .css('font-size', (8 + (size * 3)) + 'px')
                                                    .html(name)
                                                    .click(function (event) {
                                                        $(element).wysiwyg('shell').fontSize(size).closePopup();
                                                        // prevent link-href-#
                                                        event.stopPropagation();
                                                        event.preventDefault();
                                                        return false;
                                                    });
                            $list.append($link);
                        });
                        $popup.append($list);
                    }
                    //showstatic: true,    // wanted on the toolbar
                    //showselection: true    // wanted on selection
                },
                bold: {
                    title: '加粗 (Ctrl+B)',
                    text: '&#xe622;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    hotkey: 'b'
                },
                underline: {
                    title: '下划线 (Ctrl+U)',
                    text: '&#xe623;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    hotkey: 'u'
                },
                alignleft: index != 0 ? false : {
                    title: '左对齐',
                    text: '&#xe627;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                aligncenter: index != 0 ? false : {
                    title: '居中',
                    text: '&#xe62a;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                },
                alignright: index != 0 ? false : {
                    title: '右对齐',
                    text: '&#xe626;', // <img src="path/to/image.png" width="16" height="16" alt="" />
                    //showstatic: true,    // wanted on the toolbar
                    showselection: false    // wanted on selection
                }
            },
            // Submit-Button
            submit: {
                title: 'Submit',
                text: '&#xe620;'
                // image: '\uf00c' // <img src="path/to/image.png" width="16" height="16" alt="" />
            },
            // Other properties
            dropfileclick: '点击选择上传的图片',
            placeholderUrl: 'www.example.com',
            maxImageSize: [600, 200]
            /*
            onImageUpload: function( insert_image ) {
            // Used to insert an image without XMLHttpRequest 2
            // A bit tricky, because we can't easily upload a file
            // via '$.ajax()' on a legacy browser.
            // You have to submit the form into to a '<iframe/>' element.
            // Call 'insert_image(url)' as soon as the file is online
            // and the URL is available.
            // Best way to do: http://malsup.com/jquery/form/
            // For example:
            //$(this).parents('form')
            //       .attr('action','/path/to/file')
            //       .attr('method','POST')
            //       .attr('enctype','multipart/form-data')
            //       .ajaxSubmit({
            //          success: function(xhrdata,textStatus,jqXHR){
            //            var image_url = xhrdata;
            //            console.log( 'URL: ' + image_url );
            //            insert_image( image_url );
            //          }
            //        });
            },
            onKeyEnter: function() {
            return false; // swallow enter
            }
            */
        })
        /* .change(function(){
        if( typeof console != 'undefined' )
        console.log( 'change' );
        })
        .focus(function(){
        if( typeof console != 'undefined' )
        console.log( 'focus' );
        })
        .blur(function(){
        if( typeof console != 'undefined' )
        console.log( 'blur' );
        });*/
    });
    // Demo-Buttons
    /*
    $('#editor3-bold').click(function(){
    $('#editor3').wysiwyg('shell').bold();
    return false;
    });
    $('#editor3-red').click(function(){
    $('#editor3').wysiwyg('shell').highlight('#ff0000');
    return false;
    });
    $('#editor3-sethtml').click(function(){
    $('#editor3').wysiwyg('shell').setHTML('This is the new text.');
    return false;
    });
    $('#editor3-inserthtml').click(function(){
    $('#editor3').wysiwyg('shell').insertHTML('Insert some text.');
    return false;
    });
    */
    // Raw editor

    //wysiwygeditor.setHTML( '<html>' );
});
