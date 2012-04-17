.class public Lcom/android/email/variant/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private alertOnCallMode:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mGenericSenderIcon:Landroid/graphics/Bitmap;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private ringtoneUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/email/variant/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 2
    .parameter "context"
    .parameter "clock"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    .line 107
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 109
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020196

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/variant/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    .line 112
    iput-object p2, p0, Lcom/android/email/variant/NotificationController;->mClock:Lcom/android/email/Clock;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/variant/NotificationController;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/variant/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/variant/NotificationController;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getSendingFailNotificationId(J)I

    move-result v0

    return v0
.end method

.method private getLoginFailedNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 521
    const/high16 v0, 0x2000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getNewMessageNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 199
    const-wide/32 v0, 0x10000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 263
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v2

    .line 266
    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/activity/ContactStatusLoader;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getSendingFailNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 203
    const-wide/32 v0, 0x30000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private isOnCall()Z
    .locals 5

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 589
    .local v1, isOnCall:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 591
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 593
    const-string v3, "Email::NotificationController"

    const-string v4, "Null Pointer Exception set isOnCall as false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    .line 604
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v1

    .line 597
    .restart local v2       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 599
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 601
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeAlertSoundOnCall()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    .local v1, messageSoundUri:Landroid/net/Uri;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 547
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 550
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 552
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 554
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 555
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 556
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v2}, Lcom/android/email/variant/NotificationController;->setVolume(Landroid/media/MediaPlayer;)V

    .line 557
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_1
    :goto_1
    return-void

    .line 543
    .end local v1           #messageSoundUri:Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 559
    .restart local v1       #messageSoundUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Email::NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlertSound() cated Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "original"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 292
    :goto_0
    return-object p0

    .line 284
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 285
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 286
    const-string v1, "email-dummy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 287
    sget-object v1, Lcom/android/email/variant/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setVolume(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 570
    .local v0, am:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 571
    const/high16 v1, -0x4080

    .line 572
    .local v1, volume:F
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v1, v2

    .line 574
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 578
    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    .line 580
    const-string v2, "Email::NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlertSoundOnCall() - am.getStreamVolume() volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 540
    return-void
.end method

.method public cancelNewMessageNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 212
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/android/email/variant/NotificationController$1;

    iget-object v1, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/email/variant/NotificationController$1;-><init>(Lcom/android/email/variant/NotificationController;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/variant/NotificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 222
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getSendingFailNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public cancelNotification(I)V
    .locals 1
    .parameter "notificationId"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 192
    return-void
.end method

.method createNewMessageNotification(JI)Landroid/app/Notification;
    .locals 12
    .parameter "accountId"
    .parameter "unseenMessageCount"

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 300
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v4

    .line 304
    :cond_1
    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->getLatestIncomingMessage(Landroid/content/Context;Ljava/lang/Long;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 305
    .local v3, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v3, :cond_0

    .line 309
    iget-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, senderName:Ljava/lang/String;
    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 311
    .local v7, subject:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/email/variant/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 314
    .local v6, senderPhoto:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    long-to-int v9, p1

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x800

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 318
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0202aa

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/variant/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v9}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v6, :cond_3

    .end local v6           #senderPhoto:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/email/variant/NotificationController;->getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 323
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    if-le p3, v8, :cond_2

    .line 324
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 327
    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 329
    .local v4, notification:Landroid/app/Notification;
    invoke-virtual {p0, v4, v0}, Lcom/android/email/variant/NotificationController;->setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 318
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v4           #notification:Landroid/app/Notification;
    .restart local v6       #senderPhoto:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v6, p0, Lcom/android/email/variant/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method createSendFailNotification(JJ)Landroid/app/Notification;
    .locals 26
    .parameter "accountId"
    .parameter "msgId"

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 338
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v5, :cond_0

    .line 339
    const/16 v16, 0x0

    .line 435
    :goto_0
    return-object v16

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 346
    .local v13, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v13, :cond_1

    .line 347
    const/16 v16, 0x0

    goto :goto_0

    .line 351
    :cond_1
    iget-object v8, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 352
    .local v8, bodyText:Ljava/lang/String;
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v18

    .line 353
    .local v18, senderName:Ljava/lang/String;
    if-nez v18, :cond_2

    .line 354
    const-string v18, ""

    .line 357
    :cond_2
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 359
    .local v19, subject:Ljava/lang/String;
    iget-wide v14, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 360
    .local v14, messageId:J
    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 362
    .local v6, accountKey:J
    iget-object v12, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 364
    .local v12, from:Ljava/lang/String;
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v17

    .line 366
    .local v17, sender:Lcom/android/emailcommon/mail/Address;
    const/16 v20, 0x0

    .line 368
    .local v20, to:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 369
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 374
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, cc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    move-wide/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/Welcome;->createOpenAccountMailboxIntent(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/email/variant/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 381
    .local v11, contentIntent:Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v9, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 383
    const v21, 0x7f0202aa

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f08050b

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 386
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f080554

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "(\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 420
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 422
    .local v16, notification:Landroid/app/Notification;
    move-object/from16 v0, v16

    iput-object v11, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/android/email/variant/NotificationController;->setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_0

    .line 371
    .end local v9           #builder:Landroid/app/Notification$Builder;
    .end local v10           #cc:Ljava/lang/String;
    .end local v11           #contentIntent:Landroid/app/PendingIntent;
    .end local v16           #notification:Landroid/app/Notification;
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8
    .parameter "sender"
    .parameter "receiverDisplayName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 444
    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 445
    .local v0, numAccounts:I
    if-ne v0, v6, :cond_0

    .line 446
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    :goto_0
    return-object v2

    .line 449
    :cond_0
    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080093

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, toAcccount:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 458
    .local v2, senderToAccount:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0007

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 460
    .local v1, secondarySpan:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method getRingerMode()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method isRingerModeSilent()Z
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/email/variant/NotificationController;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 13
    .parameter "account"
    .parameter "ticker"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, pending:Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    .line 140
    invoke-static/range {p5 .. p5}, Lcom/android/email/variant/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p5

    .line 141
    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p5

    invoke-static {v10, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, ringtoneString:Ljava/lang/String;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 148
    .local v6, ringTone:Landroid/net/Uri;
    :goto_0
    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    .line 149
    .local v8, vibrate:Z
    :goto_1
    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    .line 153
    .local v9, vibrateWhenSilent:Z
    :goto_2
    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v4, 0x1

    .line 155
    .local v4, nowSilent:Z
    :goto_3
    const/4 v1, 0x4

    .line 156
    .local v1, defaults:I
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    .line 157
    :cond_1
    or-int/lit8 v1, v1, 0x2

    .line 161
    :cond_2
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v2, nb:Landroid/app/Notification$Builder;
    const v10, 0x7f0202aa

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 174
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 175
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 176
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 177
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 178
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 179
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 180
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 182
    .local v3, notification:Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p6

    invoke-virtual {v10, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 183
    return-void

    .line 147
    .end local v1           #defaults:I
    .end local v2           #nb:Landroid/app/Notification$Builder;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #nowSilent:Z
    .end local v6           #ringTone:Landroid/net/Uri;
    .end local v8           #vibrate:Z
    .end local v9           #vibrateWhenSilent:Z
    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 148
    .restart local v6       #ringTone:Landroid/net/Uri;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 149
    .restart local v8       #vibrate:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 153
    .restart local v9       #vibrateWhenSilent:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6
    .parameter "notification"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 477
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 478
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    move v1, v3

    .line 479
    .local v1, vibrate:Z
    :goto_0
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_0

    move v2, v3

    .line 481
    .local v2, vibrateWhenSilent:Z
    :cond_0
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    .line 483
    iget-object v4, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alertoncall_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/email/variant/NotificationController;->alertOnCallMode:I

    .line 485
    invoke-direct {p0}, Lcom/android/email/variant/NotificationController;->isOnCall()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/email/variant/NotificationController;->alertOnCallMode:I

    if-ne v4, v3, :cond_4

    .line 486
    invoke-direct {p0}, Lcom/android/email/variant/NotificationController;->makeAlertSoundOnCall()V

    .line 491
    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/email/variant/NotificationController;->isRingerModeSilent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    :cond_1
    iget v3, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/app/Notification;->defaults:I

    .line 497
    :cond_2
    iget v3, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/app/Notification;->flags:I

    .line 499
    return-void

    .end local v1           #vibrate:Z
    .end local v2           #vibrateWhenSilent:Z
    :cond_3
    move v1, v2

    .line 478
    goto :goto_0

    .line 488
    .restart local v1       #vibrate:Z
    .restart local v2       #vibrateWhenSilent:Z
    :cond_4
    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    iput-object v3, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/email/variant/NotificationController;->ringtoneUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7
    .parameter "attachment"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 509
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800c7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 530
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ca

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/variant/NotificationController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v5}, Lcom/android/email/activity/setup/AccountSettingsXL;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showNewMessageNotification(JII)V
    .locals 1
    .parameter "accountId"
    .parameter "unseenMessageCount"
    .parameter "justFetchedCount"

    .prologue
    .line 231
    new-instance v0, Lcom/android/email/variant/NotificationController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/variant/NotificationController$2;-><init>(Lcom/android/email/variant/NotificationController;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method

.method public showSendFailedNotification(JJI)V
    .locals 6
    .parameter "accountId"
    .parameter "messageId"
    .parameter "FailType"

    .prologue
    .line 245
    new-instance v0, Lcom/android/email/variant/NotificationController$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/variant/NotificationController$3;-><init>(Lcom/android/email/variant/NotificationController;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method
