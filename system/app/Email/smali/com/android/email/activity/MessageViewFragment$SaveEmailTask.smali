.class Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveEmailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field file:Ljava/io/File;

.field filename:Ljava/lang/String;

.field fos:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1442
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1444
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1445
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    .line 1446
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/email/activity/MessageViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 13
    .parameter "arg0"

    .prologue
    const/4 v12, 0x0

    const/16 v4, 0x20

    .line 1450
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$900(Lcom/android/email/activity/MessageViewFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 1451
    .local v7, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v7, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return-object v12

    .line 1455
    :cond_1
    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1456
    .local v8, subject:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1459
    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageViewFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 1460
    .local v11, tempDate:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Saved Email/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1462
    .local v9, targetDir:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1464
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1465
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1468
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v10, targetDirectory:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1471
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 1473
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    .line 1474
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    .line 1476
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$900(Lcom/android/email/activity/MessageViewFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 1488
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08008f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1492
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1510
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1512
    .end local v10           #targetDirectory:Ljava/io/File;
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1494
    :catch_1
    move-exception v6

    .line 1495
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v0, "Email"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1498
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 1499
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    const-string v0, "Email"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1502
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1510
    :try_start_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1503
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 1504
    .local v6, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_6
    const-string v0, "Email"

    const-string v1, "MessagingException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1507
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1510
    :try_start_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1509
    .end local v6           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_0
    move-exception v0

    .line 1510
    :try_start_8
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    .line 1511
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1509
    :cond_4
    :goto_1
    throw v0

    .line 1512
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1442
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1521
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1522
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1442
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
