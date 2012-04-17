.class public Lcom/android/email/activity/MessageViewForSeven;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewForSeven$6;,
        Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;,
        Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;,
        Lcom/android/email/activity/MessageViewForSeven$Z7Handler;
    }
.end annotation


# static fields
.field private static final Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final Z7_OK_VALUE:I

.field protected static mClient:Lcom/seven/Z7/app/Z7ServiceClient;

.field public static mInit:Z

.field protected static zHandler:Lcom/digc/seven/Z7MailHandler;


# instance fields
.field protected mApp:Lcom/android/email/Email;

.field private mBodyDownloadTaskId:I

.field mBusyIndicator:Landroid/widget/ProgressBar;

.field mBusyIndicatorContainer:Landroid/view/View;

.field private mContentTypeForReadMore:Ljava/lang/String;

.field private mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

.field mEmbeddedAttachmentsDownloading:Z

.field mIsAttachmentDownloading:Z

.field private mIsDownloading:Z

.field private mLoadingScreenType:I

.field mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

.field mNeedReadMoreAction:Z

.field mReportDialogShowed:Z

.field private mZ7AttachmentInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-object v0, Lcom/seven/util/Z7Result;->Z7_OK:Lcom/seven/util/Z7Result;

    invoke-virtual {v0}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    .line 104
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_unread"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "delivery_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_attachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meet_state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "missing_body"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "html_body"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "missing_html_body"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "folder_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "unk_encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bcc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 152
    sput-boolean v3, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    .line 134
    iput v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    .line 511
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 625
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 691
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    .line 981
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 159
    return-void
.end method

.method private _canDownload(I)Z
    .locals 11
    .parameter "nZ7AttachmentId"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 373
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "can_download"

    aput-object v0, v2, v10

    .line 377
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 378
    .local v7, canDL:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 386
    .local v6, attachmentCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v7, v9

    .line 392
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    .line 398
    :cond_1
    :goto_1
    return v7

    :cond_2
    move v7, v10

    .line 387
    goto :goto_0

    .line 389
    :catch_0
    move-exception v8

    .line 390
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "_canDownload()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    if-eqz v6, :cond_1

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    goto :goto_1

    .line 392
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageViewForSeven;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageViewForSeven;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewForSeven;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewForSeven;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
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
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewForSeven;->updateAttachment(JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewForSeven;->showDialogExceptionOnThread(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewForSeven;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageViewForSeven;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return p1
.end method

.method private canDownloadEmbeddedImages()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelEmbeddedImagesDownload()V
    .locals 6

    .prologue
    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    if-nez v0, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1107
    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getStatus()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1110
    :goto_2
    if-eqz v1, :cond_2

    .line 1111
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1112
    const-string v1, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel download of embedded images: SevenMessageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getPosition()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/digc/seven/Z7MailHandler;->cancelDownloadMailAttachment(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1125
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList;

    invoke-static {v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1107
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private cancelReadMoreAction()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 531
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelReadMoreAction() started. task id=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    if-eq v1, v6, :cond_0

    .line 535
    :try_start_0
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel download of mail body: task id#="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SevenMessageKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v3, v3

    int-to-long v3, v3

    iget v5, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/digc/seven/Z7MailHandler;->cancelDownloadMailBody(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    :goto_0
    iput v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    .line 548
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 549
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 10
    .parameter "context"
    .parameter "z7messageKey"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    .line 944
    invoke-direct {p0, p4}, Lcom/android/email/activity/MessageViewForSeven;->getZ7AttachmentPos(Ljava/lang/String;)I

    move-result v9

    .line 946
    .local v9, pos:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 949
    .local v2, _PROJECTION:[Ljava/lang/String;
    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 950
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "pos"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 955
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 958
    .local v7, id:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v7, v0

    .line 962
    :cond_0
    if-eqz v6, :cond_1

    .line 963
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_1
    return-wide v7

    .line 962
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 963
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getZ7AttachmentPos(Ljava/lang/String;)I
    .locals 2
    .parameter "location"

    .prologue
    .line 926
    if-nez p1, :cond_0

    .line 927
    const/4 v0, 0x0

    .line 932
    .local v0, pos:I
    :goto_0
    return v0

    .line 929
    .end local v0           #pos:I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .restart local v0       #pos:I
    goto :goto_0
.end method

.method private readMoreAction(Ljava/lang/String;)V
    .locals 7
    .parameter "contentType"

    .prologue
    .line 557
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-nez v2, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 563
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    .line 568
    :cond_2
    const-string v2, "text/html"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 569
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    .line 570
    .local v1, missingHtmlBody:I
    const-string v2, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Readmore request, Missing HTML Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    .line 580
    .end local v1           #missingHtmlBody:I
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/email/activity/MessageViewForSeven$2;

    invoke-direct {v3, p0, p1}, Lcom/android/email/activity/MessageViewForSeven$2;-><init>(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)V

    const-string v4, "MailChunkBodyDownload"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 622
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    goto :goto_0

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    .line 575
    .local v0, missingBodyBytes:I
    const-string v2, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Readmore request, Missing Body bytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    goto/16 :goto_0
.end method

.method private showDialogExceptionOnThread(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList;

    .line 409
    .local v0, messageList:Lcom/android/email/activity/MessageList;
    new-instance v1, Lcom/android/email/activity/MessageViewForSeven$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/email/activity/MessageViewForSeven$1;-><init>(Lcom/android/email/activity/MessageViewForSeven;Lcom/android/email/activity/MessageList;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private showReportDialog(Landroid/os/Bundle;)V
    .locals 8
    .parameter "b"

    .prologue
    .line 634
    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    if-eqz v6, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string v6, "errorCode"

    sget v7, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 640
    .local v3, errorCode:I
    sget v6, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    if-eq v3, v6, :cond_7

    .line 641
    sget-object v6, Lcom/seven/util/Z7Result;->Z7_E_NOT_READY:Lcom/seven/util/Z7Result;

    invoke-virtual {v6}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v6

    if-ne v3, v6, :cond_6

    .line 645
    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SEND_TIMEDOUT:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v2

    .line 646
    .local v2, errCodeValue:I
    invoke-static {v2}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v4

    .line 662
    .end local v2           #errCodeValue:I
    .local v4, text:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08049a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 665
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 666
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080438

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 668
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 670
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 671
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 674
    const v6, 0x7f0804b1

    new-instance v7, Lcom/android/email/activity/MessageViewForSeven$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/MessageViewForSeven$3;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    new-instance v6, Lcom/android/email/activity/MessageViewForSeven$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewForSeven$4;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 648
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_6
    sget-object v6, Lcom/seven/util/Z7Result;->Z7_E_CANCELED:Lcom/seven/util/Z7Result;

    invoke-virtual {v6}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 654
    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5       #title:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 658
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_7
    const-string v6, "subject"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    .restart local v5       #title:Ljava/lang/CharSequence;
    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private updateAttachment(JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1209
    const-string v1, "size"

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J
    invoke-static {p3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1210
    const-string v1, "contentUri"

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1212
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1213
    return-void
.end method


# virtual methods
.method public canDownload(Lcom/android/email/AttachmentInfo;)Z
    .locals 6
    .parameter "a"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 354
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageViewForSeven;->findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 357
    .local v1, z7attachmentId:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 358
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewForSeven;->_canDownload(I)Z

    move-result v2

    .line 362
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #z7attachmentId:I
    :goto_0
    return v2

    :cond_0
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v4, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public doFinishLoadAttachment(J)V
    .locals 1
    .parameter "attachmentId"

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->doFinishLoadAttachment(J)V

    .line 1604
    :cond_0
    return-void
.end method

.method findAttachmentId(Landroid/content/Context;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;I)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1165
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1169
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v3

    if-nez v3, :cond_1

    if-ne p5, v5, :cond_1

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1180
    const-wide/16 v0, -0x1

    .line 1183
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 1190
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1193
    :goto_1
    return-wide v0

    .line 1176
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v2

    .line 1187
    :try_start_1
    const-string v4, "MessageViewForSeven >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getAccountId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getAttachmentContentUri(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1136
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "uri"

    aput-object v0, v2, v6

    .line 1139
    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1146
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1151
    :cond_0
    return-object v4
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getController()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getContoller()Lcom/android/email/Controller;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getMessageId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public isBodyDownloadInProgress()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return v0
.end method

.method public isPremiumUser(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 298
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    return v0
.end method

.method public isSecondLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadContentFromServer(Z)V
    .locals 1
    .parameter "loadAttachment"

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->loadContentFromServer(Z)V

    .line 1599
    :cond_0
    return-void
.end method

.method public makeAttachmentInfos(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "file_name"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "size"

    aput-object v1, v2, v0

    const-string v0, "est_size"

    aput-object v0, v2, v4

    const-string v0, "uri"

    aput-object v0, v2, v5

    const-string v0, "mime_type"

    aput-object v0, v2, v6

    const/4 v0, 0x6

    const-string v1, "pos"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "status"

    aput-object v1, v2, v0

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    const/4 v6, 0x0

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1061
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1064
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1065
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1066
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1067
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1068
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1071
    if-nez v0, :cond_3

    .line 1072
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;-><init>()V

    .line 1073
    iget-object v9, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_3
    int-to-long v9, v2

    invoke-virtual {v0, v9, v10}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setId(J)V

    .line 1077
    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setContentUri(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, v3, v4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setSize(J)V

    .line 1079
    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setMimeType(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0, v7}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setFileName(Ljava/lang/String;)V

    .line 1081
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setPosition(I)V

    .line 1082
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setContentId(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0, v8}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setStatus(I)V

    .line 1084
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 1089
    :cond_4
    if-eqz v1, :cond_0

    .line 1090
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1086
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1087
    :goto_1
    :try_start_2
    const-string v2, "MessageViewForSeven >>"

    const-string v3, "makeAttachmentInfos() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1089
    if-eqz v1, :cond_0

    .line 1090
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1089
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    .line 1090
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_5
    throw v0

    .line 1089
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1086
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 859
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 862
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 864
    if-eqz p3, :cond_0

    .line 865
    const-string v1, "basic_attachmentId"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 869
    .local v0, attachmentId:I
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btl : onActivityResult ACTIVITY_RESULT_ATTACHMENT_DETAILS attachmentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    if-eq v0, v4, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageViewForSeven$5;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MessageViewForSeven$5;-><init>(Lcom/android/email/activity/MessageViewForSeven;I)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 885
    .end local v0           #attachmentId:I
    :cond_0
    return-void
.end method

.method public onCancelAttachment(J)V
    .locals 1
    .parameter "attachmentId"

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->onCancelAttachment(J)V

    .line 1609
    :cond_0
    return-void
.end method

.method public onInit(Landroid/content/Context;Landroid/view/View;Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 2
    .parameter "c"
    .parameter "v"
    .parameter "messageView"

    .prologue
    .line 197
    invoke-virtual {p0, p1, p3}, Lcom/android/email/activity/MessageViewForSeven;->z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;-><init>(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->start()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 217
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->stop()V

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 499
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    if-eqz v0, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelEmbeddedImagesDownload()V

    .line 502
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 505
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;-><init>(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->start()V

    .line 469
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->setWaitForLoadMessageId(J)V

    .line 471
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    .line 477
    :cond_1
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 479
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadEmbeddedAttachments(JJ)V

    .line 487
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 418
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mIsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mEmbeddedAttachmentsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mIsAttachmentsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mLoadingScreenType"

    iget v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mContentTypeForReadMore"

    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v5, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 429
    .local v1, cols:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;>;"
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mZ7AttachmentInfo.size"

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, idx:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 433
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {v0, p1, v3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->writeToBundle(Landroid/os/Bundle;I)V

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 435
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    :cond_0
    return-void
.end method

.method public readMoreAction()V
    .locals 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "text/html"

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 522
    const-string v0, "text/plain"

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1594
    :cond_0
    return-void
.end method

.method public setBusyIndicator()V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 328
    return-void
.end method

.method public setBusyIndicator(Z)V
    .locals 4
    .parameter "onOff"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 336
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 337
    const/4 p1, 0x0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 339
    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicatorContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 339
    goto :goto_0

    :cond_4
    move v1, v2

    .line 341
    goto :goto_1
.end method

.method public setWaitForLoadMessageId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->setWaitForLoadMessageId(J)V

    .line 1564
    :cond_0
    return-void
.end method

.method public startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 894
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageViewForSeven;->findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 897
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->stop()V

    .line 900
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    const-string v3, "attachment_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    const-string v0, "account_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 903
    const-string v0, "message_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 904
    const-string v0, "attachment_pos"

    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewForSeven;->getZ7AttachmentPos(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v0, "basic_messageId"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 906
    const-string v0, "basic_attachmentId"

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 907
    const-string v3, "IsEmbeddedImage"

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    const/high16 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 911
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 914
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 915
    return-void

    .line 907
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDownloadEmbeddedAttachments(JJ)V
    .locals 6
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->canDownloadEmbeddedImages()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getController()Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->countIncompleteEmbeddedAttachments()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1013
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    long-to-int v2, p1

    long-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->downloadMailContentAttachments(II)V

    .line 1018
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1021
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1022
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MessageViewForSeven >>"

    const-string v2, "onMenuItemSelected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method updateMessageBody(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 784
    sget-object v2, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI:Landroid/net/Uri;

    .line 786
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 789
    .local v4, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/activity/MessageViewForSeven;->Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "delivery_time DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 793
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 794
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 795
    const/16 v1, 0xe

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 796
    const/16 v1, 0x12

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    .line 797
    const/16 v1, 0xb

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    .line 798
    const/16 v1, 0xf

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    .line 799
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 801
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 802
    .local v8, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    iput-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 803
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 804
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 806
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 809
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 811
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 814
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 815
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 816
    const-wide/16 v5, 0x0

    iput-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 817
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v11

    .line 820
    .local v11, facade:Lcom/android/email/combined/MessageFacade;
    invoke-virtual {v11}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v7

    .line 822
    .local v7, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MessageCB;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/email/combined/MessageBehavior;->toContentValuesSeven(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v3, v5, v6, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    long-to-int v5, v5

    invoke-virtual {v7, v8, v5}, Lcom/android/email/combined/MessageBehavior;->toContentValuesBody(Lcom/android/emailcommon/provider/EmailContent$Body;I)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-wide v14, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v3, v5, v6, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    .end local v7           #behavior:Lcom/android/email/combined/MessageBehavior;
    .end local v8           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v11           #facade:Lcom/android/email/combined/MessageFacade;
    :cond_2
    if-eqz v9, :cond_3

    .line 834
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 835
    const/4 v9, 0x0

    .line 842
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-void

    .line 833
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_4

    .line 834
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 835
    const/4 v9, 0x0

    :cond_4
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 839
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 840
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "MessageViewForSeven >>"

    const-string v3, "updateMessageBody(message)"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public z7StopDownloading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 273
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelEmbeddedImagesDownload()V

    .line 274
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 276
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x5d

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->unRegisterCallback(ILandroid/os/Handler;)V

    .line 278
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x44

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->unRegisterCallback(ILandroid/os/Handler;)V

    .line 281
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 282
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    .line 284
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "z7StopDownloading()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 2
    .parameter "ctx"
    .parameter "messageView"

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    if-nez v0, :cond_0

    .line 169
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "z7initInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p1}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    .line 171
    invoke-virtual {p2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/seven/Z7/app/Z7ServiceClient;->getInstance(Landroid/app/Activity;)Lcom/seven/Z7/app/Z7ServiceClient;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    .line 172
    invoke-static {p1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    .line 175
    :cond_0
    iput-object p2, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 176
    return-void
.end method
