.class Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
.super Landroid/os/HandlerThread;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UNCDocSaveHandler"
.end annotation


# instance fields
.field lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    .line 785
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    .line 787
    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->doFinishLoadAttachment(J)V

    return-void
.end method

.method private doFinishLoadAttachment(J)V
    .locals 18
    .parameter "attachmentId"

    .prologue
    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 807
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1500(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v13

    iget-wide v15, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v13 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 823
    .local v3, attachmentUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 824
    .local v6, in:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 827
    .local v9, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/download/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 829
    .local v11, targetDir:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v12, targetDirectory:Ljava/io/File;
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eq v13, v14, :cond_0

    .line 833
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 835
    :cond_0
    iget-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/email/activity/UNCSearchResultsList;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 838
    .local v5, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 839
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 840
    .end local v9           #out:Ljava/io/OutputStream;
    .local v10, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v6, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 841
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801a0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "/download"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(Ljava/lang/String;I)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1600(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V

    .line 857
    new-instance v13, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v13, v14, v5, v15}, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b

    .line 874
    if-eqz v6, :cond_1

    .line 876
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 880
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 882
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :cond_2
    :goto_1
    move-object v9, v10

    .line 888
    .end local v5           #file:Ljava/io/File;
    .end local v10           #out:Ljava/io/OutputStream;
    .end local v11           #targetDir:Ljava/lang/String;
    .end local v12           #targetDirectory:Ljava/io/File;
    .restart local v9       #out:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v14, 0x0

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mode:I
    invoke-static {v13, v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$702(Lcom/android/email/activity/UNCSearchResultsList;I)I

    .line 890
    return-void

    .line 861
    :catch_0
    move-exception v4

    .line 862
    .local v4, e:Landroid/content/ActivityNotFoundException;
    :goto_3
    :try_start_4
    const-string v13, "UNCSearchResultsList"

    const-string v14, "ActivityNotFoundException1"

    invoke-static {v13, v14}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    if-eqz v6, :cond_4

    .line 876
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 880
    :cond_4
    :goto_4
    if-eqz v9, :cond_3

    .line 882
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 883
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v13

    goto :goto_2

    .line 864
    :catch_2
    move-exception v7

    .line 865
    .local v7, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v14, 0x7f08008d

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 874
    if-eqz v6, :cond_5

    .line 876
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 880
    :cond_5
    :goto_6
    if-eqz v9, :cond_3

    .line 882
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 867
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 868
    .local v8, npe:Ljava/lang/NullPointerException;
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v14, 0x7f08008d

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 874
    if-eqz v6, :cond_6

    .line 876
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 880
    :cond_6
    :goto_8
    if-eqz v9, :cond_3

    .line 882
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    .line 874
    .end local v8           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v6, :cond_7

    .line 876
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 880
    :cond_7
    :goto_a
    if-eqz v9, :cond_8

    .line 882
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 874
    :cond_8
    :goto_b
    throw v13

    .line 877
    :catch_4
    move-exception v14

    goto :goto_a

    .line 883
    :catch_5
    move-exception v14

    goto :goto_b

    .line 877
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    :catch_6
    move-exception v13

    goto :goto_4

    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .restart local v7       #ioe:Ljava/io/IOException;
    :catch_7
    move-exception v13

    goto :goto_6

    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v8       #npe:Ljava/lang/NullPointerException;
    :catch_8
    move-exception v13

    goto :goto_8

    .end local v8           #npe:Ljava/lang/NullPointerException;
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v11       #targetDir:Ljava/lang/String;
    .restart local v12       #targetDirectory:Ljava/io/File;
    :catch_9
    move-exception v13

    goto :goto_0

    .line 883
    :catch_a
    move-exception v13

    goto :goto_1

    .line 874
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_9

    .line 867
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_b
    move-exception v8

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_7

    .line 864
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_c
    move-exception v7

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 861
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_d
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_3
.end method


# virtual methods
.method public finishLoadAttachment(J)V
    .locals 3
    .parameter "attachmentId"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 796
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 800
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 801
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    :cond_1
    return-void

    .line 800
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 797
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 773
    :try_start_0
    new-instance v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;-><init>(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;)V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    .line 780
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 781
    monitor-exit v1

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
