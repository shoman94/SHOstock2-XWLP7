.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String;

.field private static mToastHandler:Landroid/os/Handler;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 132
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    .line 155
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 157
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    .line 183
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 185
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 79
    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 2
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "accumulateNotificationInfo()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 352
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 339
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotifications()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p0, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 342
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 343
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 344
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingUpdateNewMessageIndicator(),isNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isStatusMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 245
    new-instance v2, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 247
    invoke-static {p0, v2, v6}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    .line 248
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v4

    .line 249
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    .line 251
    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->getAllMessagesCount(Landroid/content/Context;ZLjava/util/Set;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v0

    .line 253
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 257
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 262
    :cond_0
    if-eqz p1, :cond_1

    .line 263
    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const-string v2, "TTS_INFO"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "sendBroadcast(intentForVlingo): "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 770
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 772
    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    const v4, 0x7f090123

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 780
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 785
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 786
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 787
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 792
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 793
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 797
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 800
    return-object v3

    .line 776
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_3
    const-string v4, "Push message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    const v4, 0x7f09019f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_4
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 597
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 600
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 602
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification(),notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V
    .locals 16
    .parameter "context"
    .parameter "sp"
    .parameter "notification"

    .prologue
    .line 705
    invoke-static {}, Lcom/android/mms/MmsConfig;->getScreenOnOffOption()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 706
    const-string v13, "pref_key_backlight"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 707
    .local v4, backlight:Z
    if-eqz v4, :cond_0

    .line 709
    const-string v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 710
    .local v6, pm:Landroid/os/PowerManager;
    const v13, 0x1000001a

    const-string v14, "New message notification LCD on"

    invoke-virtual {v6, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 712
    .local v12, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 713
    const-wide/16 v13, 0x1388

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 725
    .end local v4           #backlight:Z
    .end local v6           #pm:Landroid/os/PowerManager;
    .end local v12           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getVibrationOption()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 727
    const-string v13, "pref_key_vibrateWhen"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 728
    const-string v13, "pref_key_vibrateWhen"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 738
    .local v11, vibrateWhen:Ljava/lang/String;
    :goto_1
    const-string v13, "always"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 739
    .local v8, vibrateAlways:Z
    const-string v13, "silent"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 740
    .local v10, vibrateSilent:Z
    const-string v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 742
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v5, 0x1

    .line 745
    .local v5, nowSilent:Z
    :goto_2
    if-nez v8, :cond_1

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    .line 746
    :cond_1
    move-object/from16 v0, p2

    iget v13, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/app/Notification;->defaults:I

    .line 763
    .end local v5           #nowSilent:Z
    .end local v8           #vibrateAlways:Z
    .end local v10           #vibrateSilent:Z
    .end local v11           #vibrateWhen:Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v13, "pref_key_ringtone"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, ringtoneStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 765
    return-void

    .line 717
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v7           #ringtoneStr:Ljava/lang/String;
    :cond_3
    const-string v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 718
    .restart local v6       #pm:Landroid/os/PowerManager;
    const v13, 0x1000001a

    const-string v14, "New message notification LCD on"

    invoke-virtual {v6, v13, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 720
    .restart local v12       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 721
    const-wide/16 v13, 0x1388

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 730
    .end local v6           #pm:Landroid/os/PowerManager;
    .end local v12           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_4
    const-string v13, "pref_key_vibrate"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 731
    const-string v13, "pref_key_vibrate"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_5

    const v13, 0x7f0902a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #vibrateWhen:Ljava/lang/String;
    :goto_5
    goto/16 :goto_1

    .end local v11           #vibrateWhen:Ljava/lang/String;
    :cond_5
    const v13, 0x7f0902a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 735
    :cond_6
    const v13, 0x7f0902a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #vibrateWhen:Ljava/lang/String;
    goto/16 :goto_1

    .line 742
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v8       #vibrateAlways:Z
    .restart local v10       #vibrateSilent:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 750
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v8           #vibrateAlways:Z
    .end local v10           #vibrateSilent:Z
    .end local v11           #vibrateWhen:Ljava/lang/String;
    :cond_8
    const-string v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 751
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    .line 752
    .local v9, vibrateSetting:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "vibrate_in_silent"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v3, 0x1

    .line 754
    .local v3, bVibrateSilent:Z
    :goto_6
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_c

    const/4 v2, 0x1

    .line 756
    .local v2, bNowSilent:Z
    :goto_7
    if-eqz v2, :cond_9

    if-nez v3, :cond_a

    :cond_9
    if-nez v2, :cond_2

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    .line 759
    :cond_a
    const/16 v13, 0x11

    move-object/from16 v0, p2

    iput v13, v0, Landroid/app/Notification;->haptic:I

    goto/16 :goto_3

    .line 752
    .end local v2           #bNowSilent:Z
    .end local v3           #bVibrateSilent:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .line 754
    .restart local v3       #bVibrateSilent:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 764
    .end local v3           #bVibrateSilent:Z
    .end local v9           #vibrateSetting:I
    .restart local v7       #ringtoneStr:Ljava/lang/String;
    :cond_d
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_4
.end method

.method private static getAllMessagesCount(Landroid/content/Context;ZLjava/util/Set;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 5
    .parameter "context"
    .parameter "isNew"
    .parameter
    .parameter "infoMms"
    .parameter "infoSms"
    .parameter "infoWpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 279
    new-instance v0, Ljava/util/TreeSet;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 280
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    const/4 v1, 0x0

    .line 281
    .local v1, count:I
    invoke-static {v0, p3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    .line 282
    invoke-static {v0, p4}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    .line 283
    invoke-static {v0, p5}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v2

    add-int/2addr v1, v2

    .line 285
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, p0, p1, v1, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 293
    :goto_0
    return v1

    .line 290
    :cond_0
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "blockingUpdateNewMessageIndicator: new message cancelNotification"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/16 v2, 0x7b

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1001
    .line 1004
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1013
    if-nez v1, :cond_1

    .line 1014
    const/4 v0, 0x0

    .line 1018
    if-eqz v1, :cond_0

    .line 1019
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_0
    :goto_0
    return v0

    .line 1016
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1018
    if-eqz v1, :cond_0

    .line 1019
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_2

    .line 1019
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_2
    throw v0

    .line 1018
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1128
    packed-switch p1, :pswitch_data_0

    .line 1137
    :pswitch_0
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1131
    :pswitch_1
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1133
    :pswitch_2
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1135
    :pswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 22
    .parameter "context"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 425
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 428
    .local v15, cursor:Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 429
    const/16 v16, 0x0

    .line 469
    :goto_0
    return-object v16

    .line 433
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 434
    const/16 v16, 0x0

    .line 468
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v15, 0x0

    goto :goto_0

    .line 437
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 438
    .local v17, msgId:J
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 439
    .local v19, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, address:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, subject:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 443
    .local v10, threadId:J
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v20, 0x3e8

    mul-long v12, v7, v20

    .line 445
    .local v12, timeMillis:J
    const-string v3, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMmsNewMessageNotificationInfo: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v3, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v3, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v3, "com.android.mms.MMS_BR_FOR_VLINGO"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v3, "Mms/MessagingNotification"

    const-string v7, "Broadcast message for Vlingo: "

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const v8, 0x7f020134

    const/4 v9, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v7, p0

    invoke-static/range {v5 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v16

    .line 458
    .local v16, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v3, "200"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 461
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "200"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v3, v9}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 468
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #subject:Ljava/lang/String;
    .end local v10           #threadId:J
    .end local v12           #timeMillis:J
    .end local v16           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v17           #msgId:J
    .end local v19           #msgUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v15, 0x0

    throw v3

    .line 468
    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #subject:Ljava/lang/String;
    .restart local v10       #threadId:J
    .restart local v12       #timeMillis:J
    .restart local v16       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .restart local v17       #msgId:J
    .restart local v19       #msgUri:Landroid/net/Uri;
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1148
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1144
    :pswitch_0
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1146
    :pswitch_1
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 804
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 12
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 583
    move-wide/from16 v0, p5

    invoke-static {p2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 584
    .local v3, clickIntent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 587
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p0, v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, senderInfo:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 589
    .local v9, senderInfoName:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {p2, p0, v0, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 591
    .local v6, ticker:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v4, p1

    move v5, p3

    move-wide/from16 v7, p7

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v2
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1107
    sparse-switch p1, :sswitch_data_0

    .line 1123
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1109
    :sswitch_0
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1111
    :sswitch_1
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1113
    :sswitch_2
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1118
    :sswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 475
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 478
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 493
    :goto_0
    return-object v5

    .line 482
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 492
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v8, 0x0

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, address:Ljava/lang/String;
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getSmsNewDeliveryInfo: address="

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0900d0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-direct {v5, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v8, 0x0

    goto :goto_0

    .line 492
    .end local v7           #address:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 493
    const/4 v8, 0x0

    throw v0
.end method

.method private static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 19
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 542
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(type = 1 AND read = 0)"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 545
    .local v15, cursor:Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 546
    const/16 v16, 0x0

    .line 576
    :goto_0
    return-object v16

    .line 550
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 551
    const/16 v16, 0x0

    .line 576
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 554
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 555
    .local v17, msgId:J
    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, address:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, body:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 558
    .local v10, threadId:J
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 561
    .local v12, timeMillis:J
    const-string v3, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmsNewMessageNotificationInfo: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const v8, 0x7f020134

    const/4 v9, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v7, p0

    invoke-static/range {v5 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v16

    .line 567
    .local v16, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    const-string v3, "300"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 569
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "300"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v3, v9}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 576
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v10           #threadId:J
    .end local v12           #timeMillis:J
    .end local v16           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v17           #msgId:J
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v10       #threadId:J
    .restart local v12       #timeMillis:J
    .restart local v16       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .restart local v17       #msgId:J
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 911
    if-nez v3, :cond_0

    move v0, v7

    .line 951
    :goto_0
    return v0

    .line 914
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 917
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 918
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 919
    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 920
    const/4 v4, 0x0

    aput-wide v1, p1, v4

    .line 933
    :cond_1
    :goto_1
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 935
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    .line 936
    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v0, :cond_6

    .line 937
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 938
    invoke-static {p0, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v6

    if-nez v6, :cond_5

    .line 939
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 922
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 923
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 924
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 925
    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 926
    const/4 v4, 0x0

    aput-wide v1, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 949
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 929
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 940
    :cond_5
    cmp-long v4, v4, v1

    if-eqz v4, :cond_2

    .line 941
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 945
    :cond_6
    const/4 v4, 0x1

    :try_start_1
    aput-wide v1, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static final getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 500
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 504
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 534
    :goto_0
    return-object v5

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 534
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 514
    :cond_1
    :try_start_1
    const-string v2, "Push message"

    .line 515
    .local v2, address:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, body:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 517
    .local v7, threadId:J
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 519
    .local v9, timeMillis:J
    const-string v0, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWpmNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const v5, 0x7f020134

    const/4 v6, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v13

    .line 525
    .local v13, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 534
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v13           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v13       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v5, v13

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 195
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, cancelIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1161
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1165
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 955
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "context"
    .parameter "infoMms"
    .parameter "infoSms"

    .prologue
    const/16 v6, 0x2c

    const/4 v5, 0x1

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, readOutNewMessageNotification:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    .local v1, ttsInfo:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_message_notification"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 302
    if-eqz p1, :cond_1

    .line 303
    if-ne v0, v5, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    iget-object v2, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_0
    :goto_0
    return-object v1

    .line 313
    :cond_1
    if-eqz p2, :cond_0

    .line 314
    if-ne v0, v5, :cond_2

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    iget-object v2, p2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 325
    :cond_2
    if-ne v0, v5, :cond_0

    .line 326
    const v2, 0x7f090188

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"

    .prologue
    .line 219
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 809
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 810
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFailed(),isDownload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",noisy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 828
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 829
    if-nez v2, :cond_0

    .line 899
    :goto_0
    return-void

    .line 833
    :cond_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 843
    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    .line 846
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v5

    .line 849
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 852
    const/4 v3, 0x1

    if-le v5, v3, :cond_2

    .line 853
    const v3, 0x7f0900d3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 855
    const v4, 0x7f0900d4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 857
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    :goto_1
    const-string v6, "isFailedNoti"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 881
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 884
    const v6, 0x7f020136

    iput v6, v9, Landroid/app/Notification;->icon:I

    .line 886
    iput-object v4, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 888
    invoke-virtual {v9, p0, v4, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 890
    if-eqz p4, :cond_1

    .line 891
    invoke-static {p0, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    .line 894
    :cond_1
    if-eqz p1, :cond_7

    .line 895
    const/16 v3, 0x213

    invoke-virtual {v2, v3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 859
    :cond_2
    if-eqz p1, :cond_3

    const v3, 0x7f0900e7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 862
    :goto_2
    const v6, 0x7f0900e9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 863
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 864
    if-eqz p1, :cond_4

    .line 866
    const-string v4, "failed_download_flag"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 876
    :goto_3
    const-string v4, "thread_id"

    move-wide/from16 v0, p2

    invoke-virtual {v7, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v4, v3

    move-object v5, v7

    move-object v3, v6

    goto :goto_1

    .line 859
    :cond_3
    const v3, 0x7f0900e8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 868
    :cond_4
    if-gtz v5, :cond_5

    .line 869
    const/16 v2, 0x315

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 872
    :cond_5
    const/4 v5, 0x0

    aget-wide v10, v4, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    .line 873
    :goto_4
    const-string v10, "undelivered_flag"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-wide/from16 p2, v4

    goto :goto_3

    .line 872
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 897
    :cond_7
    const/16 v3, 0x315

    invoke-virtual {v2, v3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 843
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 813
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 814
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 817
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 818
    return-void
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1175
    :try_start_0
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1176
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBadgeCount(),count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "BadgeProvider wasn\'t installed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    const-string v1, "logtype=? OR logtype=?"

    .line 1323
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "200"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "300"

    aput-object v4, v2, v3

    .line 1327
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1328
    const-string v4, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1331
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateAllHistoryAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1027
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1028
    .local v1, notification:Landroid/app/Notification;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1030
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1031
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_enable_notifications"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    .line 1035
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 3
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 607
    if-nez p1, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1154
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1155
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1158
    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1243
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "date"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "msg_box"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "sub"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "sub_cs"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-string v3, "read"

    aput-object v3, v5, v2

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    const/4 v2, 0x0

    .line 1316
    :goto_0
    return v2

    .line 1256
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1257
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1259
    if-nez v7, :cond_1

    .line 1260
    const/4 v2, 0x0

    goto :goto_0

    .line 1264
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1265
    const/4 v2, 0x0

    .line 1314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1267
    :cond_2
    const-wide/16 v4, 0x0

    .line 1268
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1269
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 1270
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1271
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v13, v2

    .line 1272
    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1277
    const-wide/16 v16, 0x1

    cmp-long v2, v13, v16

    if-nez v2, :cond_4

    .line 1278
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1287
    :goto_1
    if-eqz p2, :cond_3

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1291
    :cond_3
    const-string v2, "logtype=? AND ( messageid=? OR messageid=?)"

    .line 1292
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "200"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v17

    .line 1296
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1300
    array-length v5, v6

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v16, v6, v4

    .line 1301
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1303
    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1304
    const-string v18, "type"

    const-wide/16 v19, 0x1

    cmp-long v2, v13, v19

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    const-string v2, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v2, "messageid"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    const-string v2, "m_subject"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v16, "new"

    if-nez v15, :cond_7

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    const-string v2, "content://logs/mms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1311
    const-string v2, "Mms/MessagingNotification"

    const-string v16, "updateHistoryForMms(),address="

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 1279
    :cond_4
    const-wide/16 v16, 0x2

    cmp-long v2, v13, v16

    if-nez v2, :cond_5

    .line 1280
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_1

    .line 1282
    :cond_5
    const/4 v2, 0x0

    .line 1314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1304
    :cond_6
    const/4 v2, 0x2

    goto :goto_3

    .line 1308
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 1314
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1314
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1184
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "read"

    aput-object v1, v3, v0

    .line 1193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1194
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1196
    if-nez v3, :cond_0

    .line 1197
    const/4 v0, 0x0

    .line 1238
    :goto_0
    return v0

    .line 1201
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    const/4 v0, 0x0

    .line 1236
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1205
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1206
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1207
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1208
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1209
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    .line 1210
    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1212
    if-eqz v0, :cond_4

    .line 1213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v12, 0x32

    if-le v2, v12, :cond_4

    .line 1214
    const/4 v2, 0x0

    const/16 v12, 0x32

    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1217
    :goto_1
    const-string v0, "logtype=? AND messageid=?"

    .line 1218
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "300"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1222
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v13, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1224
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    const-string v0, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1227
    const-string v6, "type"

    const-wide/16 v13, 0x1

    cmp-long v0, v9, v13

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    const-string v0, "number"

    invoke-virtual {v12, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v0, "messageid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1230
    const-string v0, "m_content"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v2, "new"

    if-nez v11, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1233
    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1234
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateHistoryForSms(),address="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1236
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1227
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 1231
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 1236
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1338
    const-string v3, "logtype=? AND messageid=?"

    .line 1339
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1343
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    const-string v6, "new"

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1346
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHistoryReadFlag(),messageid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    return-void

    :cond_0
    move v0, v1

    .line 1344
    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 10
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"

    .prologue
    .line 629
    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification(),isNew="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 632
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_enable_notifications"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 700
    :goto_0
    return-void

    .line 636
    :cond_0
    new-instance v3, Landroid/app/Notification;

    move-wide/from16 v0, p6

    invoke-direct {v3, p3, p5, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 637
    .local v3, notification:Landroid/app/Notification;
    move-object/from16 v0, p8

    iput-object v0, v3, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 638
    move/from16 v0, p9

    iput v0, v3, Landroid/app/Notification;->missedCount:I

    .line 644
    const/4 v6, 0x1

    move/from16 v0, p10

    if-le v0, v6, :cond_1

    .line 645
    const v6, 0x7f0900d2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    .line 646
    new-instance p1, Landroid/content/Intent;

    .end local p1
    const-string v6, "android.intent.action.MAIN"

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local p1
    const/high16 v6, 0x3400

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    :cond_1
    const/4 v6, 0x1

    move/from16 v0, p9

    if-le v0, v6, :cond_2

    .line 658
    const v6, 0x7f0900d1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 663
    :cond_2
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, p1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 667
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p8

    invoke-virtual {v3, p0, v0, p2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 669
    if-eqz p4, :cond_5

    .line 670
    invoke-static {p0, v5, v3}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    .line 673
    iget-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 674
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 675
    const-string v6, "GATE"

    const-string v7, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_3
    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New message, updateNotification() sound path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_1
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 685
    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 688
    const/4 v6, 0x0

    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 691
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 694
    .local v2, nm:Landroid/app/NotificationManager;
    iget-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_4

    .line 695
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 696
    const-string v6, "GATE"

    const-string v7, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_4
    const/16 v6, 0x7b

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 680
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_5
    const-string v6, "Mms/MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification() sound path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0900c6

    const v3, 0x7f020133

    const/16 v8, 0x378

    const/4 v7, 0x1

    .line 1040
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1041
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "updateReportNotification,type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",threadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1045
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1050
    packed-switch p1, :pswitch_data_0

    .line 1067
    const-string v0, ""

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1052
    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1053
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1054
    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 1071
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1074
    const-string v3, ""

    .line 1076
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1077
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 1078
    invoke-static {p5, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1081
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    invoke-static {p0, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 1084
    const/high16 v5, 0x3400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1090
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1091
    const-string v6, "pref_key_enable_notifications"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1095
    invoke-static {p0, v8}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1097
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1099
    invoke-virtual {v4, p0, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1101
    invoke-static {p0, v5, v4}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;)V

    .line 1103
    invoke-virtual {v0, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1057
    :pswitch_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1059
    iput v3, v4, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 1062
    :pswitch_2
    const v1, 0x7f0900c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1063
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1064
    const v3, 0x7f020137

    iput v3, v4, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 973
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 976
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 987
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 990
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 992
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 994
    :cond_0
    return-void

    .line 987
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
