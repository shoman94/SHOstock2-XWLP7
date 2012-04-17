.class Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3574
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 21
    .parameter "attachments"

    .prologue
    .line 3584
    const/4 v3, 0x0

    .line 3587
    .local v3, cnt:I
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v16, v2, v6

    .line 3588
    .local v16, ref:Ljava/lang/String;
    const-string v14, "content://com.android.contacts/contacts/as_vcard/"

    .line 3590
    .local v14, prefixstr:Ljava/lang/String;
    new-instance v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 3593
    .local v8, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    :try_start_0
    const-string v18, "com.quickoffice.mx.samsung"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3594
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3597
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content://com.android.contacts/contacts/as_vcard/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v18 .. v19}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3600
    const/4 v15, 0x0

    .line 3601
    .local v15, previewIcon:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 3603
    .local v11, orgImage:Landroid/graphics/Bitmap;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    iget-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3605
    if-eqz v11, :cond_3

    .line 3607
    const/16 v17, 0x27

    .line 3608
    .local v17, width:I
    const/16 v5, 0x27

    .line 3609
    .local v5, height:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 3611
    .local v13, originalWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 3615
    .local v12, originalHeight:I
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    .line 3617
    move/from16 v17, v13

    .line 3619
    :cond_1
    if-le v5, v12, :cond_2

    .line 3621
    move v5, v12

    .line 3624
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v11, v1, v5}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v15

    .line 3649
    .end local v5           #height:I
    .end local v12           #originalHeight:I
    .end local v13           #originalWidth:I
    .end local v17           #width:I
    :cond_3
    :goto_1
    :try_start_2
    iput-object v15, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 3651
    const/4 v15, 0x0

    .line 3656
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->publishProgress([Ljava/lang/Object;)V

    .line 3587
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3627
    .restart local v11       #orgImage:Landroid/graphics/Bitmap;
    .restart local v15       #previewIcon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 3628
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground(),File not found \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3633
    const/4 v15, 0x0

    .line 3634
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3658
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v7

    .line 3659
    .local v7, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 3635
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v11       #orgImage:Landroid/graphics/Bitmap;
    .restart local v15       #previewIcon:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v10

    .line 3636
    .local v10, oe:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 3639
    const/4 v15, 0x0

    .line 3647
    goto :goto_1

    .line 3640
    .end local v10           #oe:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    .line 3641
    .restart local v7       #iae:Ljava/lang/IllegalArgumentException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3646
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 3663
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .end local v8           #info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v14           #prefixstr:Ljava/lang/String;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    .end local v16           #ref:Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    return-object v18
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3688
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3574
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3702
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3706
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    .line 3707
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 3668
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    .line 3669
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080504

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3670
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3671
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3678
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3679
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 3692
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    if-nez v0, :cond_0

    .line 3693
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    invoke-static {v1, v2, v4, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    .line 3695
    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v4

    .line 3696
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3574
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
