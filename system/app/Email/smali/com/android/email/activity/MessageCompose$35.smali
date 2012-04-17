.class Lcom/android/email/activity/MessageCompose$35;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/os/Parcelable;",
        ">;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1
    .parameter

    .prologue
    .line 8451
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8452
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$35;->result:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 8457
    .local p1, lists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v8, 0x0

    .line 8458
    .local v8, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    #calls: Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I
    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)I

    move-result v9

    .line 8459
    .local v9, maxSize:I
    const/4 v15, 0x0

    .line 8461
    .local v15, total_size:I
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Parcelable;

    .local v14, parcelable:Landroid/os/Parcelable;
    move-object/from16 v16, v14

    .line 8462
    check-cast v16, Landroid/net/Uri;

    .line 8463
    .local v16, uri:Landroid/net/Uri;
    if-eqz v16, :cond_0

    .line 8464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 8466
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "background processing: attachment uri :  size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I
    invoke-static/range {v20 .. v20}, Lcom/android/email/activity/MessageCompose;->access$8200(Lcom/android/email/activity/MessageCompose;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", total size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8470
    :try_start_0
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 8474
    const-string v18, "file"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 8475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/email/activity/MessageCompose;->IsDRMFile(Ljava/lang/String;)Z
    invoke-static/range {v18 .. v19}, Lcom/android/email/activity/MessageCompose;->access$8300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 8476
    const-string v18, "Compose >>"

    const-string v19, "This attachment is DRM file, skiped"

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$35;->result:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$35;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8490
    :catch_0
    move-exception v3

    .line 8491
    .local v3, e:Ljava/lang/Exception;
    const-string v18, "Compose >>"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8494
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v18, v0

    int-to-long v0, v9

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    .line 8495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$35;->result:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$35;->result:I

    goto/16 :goto_0

    .line 8483
    :cond_2
    :try_start_1
    const-string v18, "application/vnd.oma.drm.content"

    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 8485
    const-string v18, "Compose >>"

    const-string v19, "This attachment is DRM file, skiped"

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$35;->result:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$35;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 8499
    :cond_3
    int-to-long v0, v15

    move-wide/from16 v18, v0

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 8501
    if-le v15, v9, :cond_4

    .line 8502
    int-to-long v0, v15

    move-wide/from16 v18, v0

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 8503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$35;->result:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$35;->result:I

    goto/16 :goto_0

    .line 8517
    :cond_4
    new-instance v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local v8           #info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 8519
    .restart local v8       #info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    iput-object v2, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 8520
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 8521
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 8524
    const/4 v11, 0x0

    .line 8526
    .local v11, orgImage:Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 8530
    if-eqz v11, :cond_7

    .line 8533
    const/16 v17, 0x27

    .line 8534
    .local v17, width:I
    const/16 v5, 0x27

    .line 8535
    .local v5, height:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 8537
    .local v13, originalWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 8541
    .local v12, originalHeight:I
    move/from16 v0, v17

    if-le v0, v13, :cond_5

    .line 8545
    move/from16 v17, v13

    .line 8549
    :cond_5
    if-le v5, v12, :cond_6

    .line 8553
    move v5, v12

    .line 8558
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v11, v1, v5}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 8576
    .end local v5           #height:I
    .end local v12           #originalHeight:I
    .end local v13           #originalWidth:I
    .end local v17           #width:I
    :cond_7
    :goto_1
    const/4 v11, 0x0

    .line 8581
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$35;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8562
    :catch_1
    move-exception v4

    .line 8563
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    :try_start_3
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

    .line 8566
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$35;->result:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 8576
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v18

    const/4 v11, 0x0

    throw v18

    .line 8567
    :catch_2
    move-exception v10

    .line 8568
    .local v10, oe:Ljava/lang/OutOfMemoryError;
    :try_start_4
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

    goto :goto_1

    .line 8571
    .end local v10           #oe:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    .line 8572
    .local v7, iae:Ljava/lang/IllegalArgumentException;
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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 8589
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v14           #parcelable:Landroid/os/Parcelable;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$35;->result:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    return-object v18
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8451
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$35;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg1"

    .prologue
    .line 8604
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$35;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    .line 8605
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8451
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$35;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 8595
    iget v0, p0, Lcom/android/email/activity/MessageCompose$35;->result:I

    if-nez v0, :cond_0

    .line 8596
    iget v0, p0, Lcom/android/email/activity/MessageCompose$35;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$35;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v5

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    aget-object v4, p1, v5

    iget-boolean v4, v4, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$35;->result:I

    .line 8599
    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v5

    .line 8600
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8451
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$35;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
