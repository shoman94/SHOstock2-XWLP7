.class public Lcom/seven/Z7/app/AttachmentDetailsActivity;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "AttachmentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/AttachmentDetailsActivity$2;,
        Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;,
        Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;,
        Lcom/seven/Z7/app/AttachmentDetailsActivity$Extras;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field static final mDefaultPath:Ljava/lang/String;


# instance fields
.field private dlInProgress:Z

.field private mAccountId:I

.field private mAttachmentId:I

.field private mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

.field mCanceled:Z

.field private mCursor:Landroid/database/Cursor;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mListener:Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;

.field private mMessageId:I

.field private mPos:I

.field public offsetValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "file_name"

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "size"

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "est_size"

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "uri"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    .line 85
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "email_id"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "pos"

    aput-object v2, v0, v1

    .line 87
    sget-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "offset"

    aput-object v2, v0, v1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Attachments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mDefaultPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    .line 121
    new-instance v0, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;-><init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;Lcom/seven/Z7/app/AttachmentDetailsActivity$1;)V

    iput-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    .line 124
    iput-boolean v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->dlInProgress:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->offsetValue:J

    .line 463
    iput-boolean v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCanceled:Z

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->updateVisibleData()V

    return-void
.end method

.method static synthetic access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->dlInProgress:Z

    return v0
.end method

.method static synthetic access$400(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->downloadAttachment()V

    return-void
.end method

.method static synthetic access$500(Lcom/seven/Z7/app/AttachmentDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    return v0
.end method

.method static synthetic access$600(Lcom/seven/Z7/app/AttachmentDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/seven/Z7/app/AttachmentDetailsActivity;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->updateAttachment(JJ)V

    return-void
.end method

.method private cancelDownload()V
    .locals 6

    .prologue
    .line 470
    :try_start_0
    iget-boolean v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCanceled:Z

    if-nez v2, :cond_0

    .line 471
    const-string v2, "AttachmentDetailsActivity"

    const-string v3, "request cancel downloading..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAttachmentId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v2

    iget v3, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAccountId:I

    iget v4, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    iget v5, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/digc/seven/Z7MailHandler;->cancelDownloadMailAttachment(III)V

    .line 482
    invoke-direct {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->removeAttachmentNotification()V

    .line 484
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCanceled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "AttachmentDetailsActivity"

    const-string v3, "unregisterCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 493
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mListener:Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    :cond_1
    :goto_1
    return-void

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AttachmentDetailsActivity"

    const-string v3, "cancel downloading fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 496
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AttachmentDetailsActivity"

    const-string v3, "unregisterCallback() fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private downloadAttachment()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 282
    iput-boolean v9, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCanceled:Z

    .line 285
    :try_start_0
    iget-object v5, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    iget v5, v5, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAccountId:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v4

    .line 286
    .local v4, saveIn:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 287
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, downloadFile:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, fullOutputPath:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "uri"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v5, "status"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAttachmentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v5

    iget v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAccountId:I

    iget v7, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    iget v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/digc/seven/Z7MailHandler;->downloadMailAttachment(IIILjava/lang/String;)V

    .line 301
    const-string v5, "AttachmentDetailsActivity"

    const-string v6, "request attachment download."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #downloadFile:Ljava/io/File;
    .end local v3           #fullOutputPath:Ljava/lang/String;
    .end local v4           #saveIn:Ljava/io/File;
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "AttachmentDetailsActivity"

    const-string v6, "Not connected to service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p0, v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 305
    invoke-virtual {p0, v9}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto :goto_0
.end method

.method private getFileType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 447
    iget-object v4, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    iget-object v4, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, fileType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 452
    .local v3, pos:I
    if-ltz v3, :cond_0

    .line 453
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, extension:Ljava/lang/String;
    invoke-static {v0}, Lcom/seven/Z7/common/util/MIMETypeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .end local v0           #extension:Ljava/lang/String;
    .end local v3           #pos:I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_1
    return-object v2
.end method

.method private removeAttachmentNotification()V
    .locals 4

    .prologue
    .line 434
    :try_start_0
    const-string v1, "AttachmentDetailsActivity"

    const-string v2, "removeAtatchmentNotification: removing download notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    iget v3, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->clearDownloadNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private showDownloadViews()V
    .locals 19

    .prologue
    .line 359
    const v15, 0x7f1000db

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v15, 0x7f1000df

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const v15, 0x7f1000e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const-wide/16 v12, 0x0

    .line 364
    .local v12, size:J
    :goto_0
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-gtz v15, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    const-wide/16 v12, 0x0

    .line 367
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x9

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    const-wide/16 v8, 0x0

    .line 369
    .local v8, offset:J
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, fileSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x4

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, attachmentUri:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->getFileType()Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mFileName:Ljava/lang/String;

    if-nez v15, :cond_1

    .line 374
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mFileName:Ljava/lang/String;

    .line 376
    :cond_1
    const v15, 0x7f1000dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v15, 0x7f1000dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v15, 0x7f1000de

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x6

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->dlInProgress:Z

    .line 383
    const v15, 0x7f1000e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 384
    .local v2, cancelButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    const v15, 0x7f1000e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 390
    .local v3, closeButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x6

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v14, 0x0

    .line 396
    .local v14, status:I
    :goto_4
    :try_start_0
    const-string v15, "AttachmentDetailsActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v15, "AttachmentDetailsActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v15, "AttachmentDetailsActivity"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_5
    const/4 v15, 0x5

    if-ne v14, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->isFinishing()Z

    move-result v15

    if-nez v15, :cond_8

    .line 407
    move-wide v8, v12

    .line 409
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->removeAttachmentNotification()V

    .line 413
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v11, result:Landroid/content/Intent;
    const-string v15, "basic_attachmentId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAttachmentId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    .line 427
    .end local v11           #result:Landroid/content/Intent;
    :goto_6
    return-void

    .line 363
    .end local v1           #attachmentUri:Ljava/lang/String;
    .end local v2           #cancelButton:Landroid/widget/Button;
    .end local v3           #closeButton:Landroid/widget/Button;
    .end local v6           #fileSize:Ljava/lang/String;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #offset:J
    .end local v12           #size:J
    .end local v14           #status:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto/16 :goto_0

    .line 365
    .restart local v12       #size:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto/16 :goto_1

    .line 367
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x9

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto/16 :goto_2

    .line 380
    .restart local v1       #attachmentUri:Ljava/lang/String;
    .restart local v6       #fileSize:Ljava/lang/String;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v8       #offset:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x6

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 393
    .restart local v2       #cancelButton:Landroid/widget/Button;
    .restart local v3       #closeButton:Landroid/widget/Button;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x6

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto/16 :goto_4

    .line 399
    .restart local v14       #status:I
    :catch_0
    move-exception v4

    .line 400
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "AttachmentDetailsActivity"

    const-string v16, "Failed at logging"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 418
    .end local v4           #e:Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->dlInProgress:Z

    if-eqz v15, :cond_9

    .line 419
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :cond_9
    const v15, 0x7f1000df

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 424
    .local v10, pb:Landroid/widget/ProgressBar;
    long-to-int v15, v12

    invoke-virtual {v10, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 425
    long-to-int v15, v8

    invoke-virtual {v10, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 426
    const-string v15, "AttachmentDetailsActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DL progress bar: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private updateAttachment(JJ)V
    .locals 15
    .parameter "accountId"
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static/range {p1 .. p4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, contentUriString:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v6, downloadedFile:Ljava/io/File;
    iget-object v11, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    iget v11, v11, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAccountId:I

    int-to-long v11, v11

    iget-object v13, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    iget v13, v13, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAttachmentId:I

    int-to-long v13, v13

    invoke-static {p0, v11, v12, v13, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v9

    .line 343
    .local v9, saveAs:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 344
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 345
    .local v7, in:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v8, out:Ljava/io/FileOutputStream;
    invoke-static {v7, v8}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v11

    int-to-long v3, v11

    .line 347
    .local v3, copySize:J
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 348
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 351
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v5, cv:Landroid/content/ContentValues;
    const-string v11, "size"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    const-string v11, "contentUri"

    invoke-virtual {v5, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 355
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v5, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private updateVisibleData()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    invoke-direct {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->showDownloadViews()V

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 514
    :goto_0
    return-void

    .line 504
    :pswitch_0
    const-string v0, "AttachmentDetailsActivity"

    const-string v1, "Cancel clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 506
    invoke-direct {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->cancelDownload()V

    .line 507
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto :goto_0

    .line 510
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 511
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 325
    const v1, 0x7f1000df

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 326
    .local v0, pb:Landroid/widget/ProgressBar;
    iget-wide v1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->offsetValue:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 327
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 144
    .local v7, i:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 147
    .local v3, whereClause:Ljava/lang/String;
    :try_start_0
    const-string v0, "basic_messageId"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    const-string v1, "basic_messageId"

    const-wide/16 v4, -0x1

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAccountId:I

    .line 153
    const-string v0, "basic_attachmentId"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mBasic:Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;

    const-string v1, "basic_attachmentId"

    const-wide/16 v4, -0x1

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/seven/Z7/app/AttachmentDetailsActivity$BasicInfo;->mAttachmentId:I

    .line 159
    const-string v0, "account_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    const-string v0, "account_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAccountId:I

    .line 165
    const-string v0, "attachment_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    const-string v0, "attachment_id"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAttachmentId:I

    .line 167
    const-string v0, "AttachmentDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using aID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mAttachmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "message_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "attachment_pos"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    const-string v0, "attachment_pos"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    .line 175
    const-string v0, "message_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    .line 176
    const-string v0, "AttachmentDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using mID/pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mHandler:Landroid/os/Handler;

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v0, "AttachmentDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/seven/Z7/app/AttachmentDetailsActivity;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    .line 192
    const-string v1, "AttachmentDetailsActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    move-object v0, v8

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 194
    :cond_3
    const-string v0, "AttachmentDetailsActivity"

    const-string v1, "Cursor is null or could not move to first."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v6

    .line 209
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "AttachmentDetailsActivity"

    const-string v1, "exception"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-virtual {p0, v9}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto/16 :goto_0

    .line 150
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing message identification info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing attachment identification info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing attachment identification info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing attachment identification info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing attachment identification info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_a
    new-instance v0, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;

    iget-object v1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;-><init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mListener:Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->requestWindowFeature(I)Z

    .line 203
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setContentView(I)V

    .line 205
    iget-object v0, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 206
    const-string v0, "AttachmentDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor.getCount() != 1 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 585
    if-eqz p1, :cond_0

    const-string v0, "basic_messageId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "AttachmentDetailsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 223
    const-string v1, "AttachmentDetailsActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mListener:Lcom/seven/Z7/app/AttachmentDetailsActivity$AttachmentConnectionListener;

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 230
    const-string v1, "AttachmentDetailsActivity"

    const-string v2, "registerCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;-><init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 594
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStop()V

    .line 595
    return-void
.end method
