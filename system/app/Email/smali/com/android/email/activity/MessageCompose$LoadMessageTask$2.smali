.class Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field attachments_cnt:I

.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

.field final synthetic val$draft:Z

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;ZLcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3166
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$draft:Z

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3167
    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    .line 3168
    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3166
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 23
    .parameter "messageIds"

    .prologue
    .line 3206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$draft:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3215
    .local v17, sharedPref:Landroid/content/SharedPreferences;
    const-string v19, "forward_with_files"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_1

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 3217
    const/4 v5, 0x0

    .line 3317
    .end local v17           #sharedPref:Landroid/content/SharedPreferences;
    :cond_0
    return-object v5

    .line 3221
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3225
    .local v5, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v5, :cond_0

    .line 3226
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    #calls: Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I
    invoke-static/range {v19 .. v19}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)I

    move-result v12

    .line 3231
    .local v12, maxSize:I
    move-object v3, v5

    .local v3, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v4, v3, v8

    .line 3232
    .local v4, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 3234
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 3231
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3238
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 3244
    :cond_4
    new-instance v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 3246
    .local v10, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3247
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 3248
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 3250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 3251
    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v19, v0

    int-to-long v0, v12

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-gtz v19, :cond_7

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 3253
    const/4 v14, 0x0

    .line 3255
    .local v14, orgImage:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3259
    if-eqz v14, :cond_7

    .line 3262
    const/16 v18, 0x27

    .line 3263
    .local v18, width:I
    const/16 v7, 0x27

    .line 3264
    .local v7, height:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 3266
    .local v16, originalWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 3270
    .local v15, originalHeight:I
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    .line 3274
    move/from16 v18, v16

    .line 3278
    :cond_5
    if-le v7, v15, :cond_6

    .line 3282
    move v7, v15

    .line 3287
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v14, v1, v7}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3311
    .end local v7           #height:I
    .end local v14           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #originalHeight:I
    .end local v16           #originalWidth:I
    .end local v18           #width:I
    :cond_7
    :goto_2
    iput-object v4, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3313
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3291
    .restart local v14       #orgImage:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 3292
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    const-string v19, "Compose >>"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: doInBackground(),File not found \n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    goto :goto_2

    .line 3296
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v13

    .line 3297
    .local v13, oe:Ljava/lang/OutOfMemoryError;
    const-string v19, "Compose >>"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3300
    .end local v13           #oe:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v9

    .line 3301
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    const-string v19, "Compose >>"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3308
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    .end local v14           #orgImage:Landroid/graphics/Bitmap;
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3166
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 2
    .parameter "attachments"

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3350
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    .line 3351
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 3173
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    .line 3174
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f080190

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3175
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3176
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3177
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3182
    :goto_0
    return-void

    .line 3178
    :catch_0
    move-exception v0

    .line 3179
    .local v0, badex:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "Email"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 3324
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    if-nez v0, :cond_0

    .line 3325
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

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

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    .line 3328
    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v5

    .line 3329
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3166
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
