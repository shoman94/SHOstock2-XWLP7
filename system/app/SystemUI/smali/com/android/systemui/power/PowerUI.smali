.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# instance fields
.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryStatus:I

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mIsPowerSavingModeEnabled:Z

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotChargeDialog:Landroid/app/AlertDialog;

.field mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeTask:Ljava/lang/Runnable;

.field mNotificationPlayer:Lcom/android/server/NotificationPlayer;

.field mPlugType:I

.field mPowerSavingModeDialog:Landroid/app/AlertDialog;

.field mPowerSavingModeLevel:I

.field mSentPowerSavingModeBroadcast:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 90
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 91
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 93
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 109
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSavingModeEnabled:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSentPowerSavingModeBroadcast:Z

    .line 171
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 156
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 157
    const/4 v2, 0x1

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 163
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 164
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 165
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 163
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 168
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 636
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 638
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 640
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 351
    :cond_0
    return-void
.end method

.method dismissNotChargeDialog()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    :cond_0
    return-void
.end method

.method dismissPowerSavingModeDialog()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 559
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 732
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 734
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method isOverCurrent()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 702
    const/16 v6, 0xa

    new-array v2, v6, [C

    .line 704
    .local v2, fileBuffer:[C
    const/4 v0, 0x1

    .line 707
    .local v0, currentAvg:I
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/sys/class/power_supply/battery/current_avg"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 708
    .local v3, fileReader:Ljava/io/FileReader;
    if-nez v3, :cond_0

    .line 709
    const-string v6, "PowerUI"

    const-string v7, "isOverCurrent : over current file is not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v3           #fileReader:Ljava/io/FileReader;
    :goto_0
    return v5

    .line 713
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :cond_0
    invoke-virtual {v3, v2}, Ljava/io/FileReader;->read([C)I

    .line 714
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v7, Ljava/lang/String;

    const-string v8, "\n"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, splitString:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 716
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 718
    if-ltz v0, :cond_1

    .line 719
    const-string v6, "PowerUI"

    const-string v7, "isOverCurrent : not overcurrent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v3           #fileReader:Ljava/io/FileReader;
    .end local v4           #splitString:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 726
    .local v1, exception:Ljava/lang/Exception;
    const-string v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOverCurrent : Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    .end local v1           #exception:Ljava/lang/Exception;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    .restart local v4       #splitString:[Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "PowerUI"

    const-string v7, "isOverCurrent : overcurrent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 723
    const/4 v5, 0x1

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 596
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 598
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 599
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f08009c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f08009d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 607
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 608
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f020071

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 609
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 610
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 611
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 614
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 617
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 619
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 621
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 622
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 623
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 628
    .local v0, fullBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    goto :goto_0
.end method

.method playSound(Landroid/net/Uri;)V
    .locals 8
    .parameter "soundUri"

    .prologue
    .line 643
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    if-nez v4, :cond_0

    .line 646
    const-string v4, "PowerUI"

    const-string v5, "playSound : NotificationPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v4, Lcom/android/server/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    .line 649
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    if-nez v4, :cond_0

    .line 650
    const-string v4, "PowerUI"

    const-string v5, "playSound : fail to new NotificationPlayer"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 658
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 665
    .local v2, ringerMode:I
    :goto_1
    const/4 v4, 0x2

    if-ne v4, v2, :cond_2

    .line 666
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 667
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_NORMAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, exception:Ljava/lang/Exception;
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSound : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v2           #ringerMode:I
    :cond_1
    const/4 v2, 0x2

    .restart local v2       #ringerMode:I
    goto :goto_1

    .line 668
    :cond_2
    const/4 v4, 0x1

    if-ne v4, v2, :cond_4

    .line 669
    :try_start_1
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 670
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_3

    .line 671
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 675
    :goto_2
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_VIBRATE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "playSound : fail to new Vibrator"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 676
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_4
    if-nez v2, :cond_5

    .line 677
    const-string v4, "PowerUI"

    const-string v5, "RINGER_MODE_SILENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_5
    const-string v4, "PowerUI"

    const-string v5, "unknown RINGER_MODE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method showLowBatteryWarning()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x7f0800a2

    const/4 v4, 0x0

    const/4 v12, -0x2

    const/4 v9, 0x1

    .line 354
    const-string v10, "PowerUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v8, :cond_1

    const-string v8, "showing"

    :goto_0
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " low battery warning: level="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v11}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v8, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v9, v8, :cond_0

    move v4, v9

    .line 363
    .local v4, isFactoryMode:Z
    :cond_0
    if-eqz v4, :cond_2

    .line 364
    const-string v8, "PowerUI"

    const-string v9, "don\'t show Low battery warning in Factory mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_1
    return-void

    .line 354
    .end local v4           #isFactoryMode:Z
    :cond_1
    const-string v8, "updating"

    goto :goto_0

    .line 368
    .restart local v4       #isFactoryMode:Z
    :cond_2
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v8}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v1

    .line 369
    .local v1, bucket:I
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, levelText:Ljava/lang/CharSequence;
    if-ne v12, v1, :cond_3

    .line 373
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a1

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, title:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 379
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v9, v8, :cond_4

    .line 380
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a3

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    .line 393
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    :goto_4
    const-string v8, "system/media/audio/ui/TW_Low_Battery.ogg"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/power/PowerUI;->playSound(Landroid/net/Uri;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1

    .line 375
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a0

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 382
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 385
    :cond_5
    if-ne v12, v1, :cond_6

    .line 386
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a5

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 388
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a4

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 396
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v10, 0x7f03

    invoke-static {v8, v10, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 397
    .local v7, v:Landroid/view/View;
    const/high16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 398
    const v8, 0x7f0e0001

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 400
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v8, 0x1010355

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 409
    const v8, 0x104000a

    invoke-virtual {v0, v8, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x5880

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 417
    const v8, 0x7f080014

    new-instance v9, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 427
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v8, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 433
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 434
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 435
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_4
.end method

.method showNotChargeDialog()V
    .locals 5

    .prologue
    .line 504
    const-string v3, "PowerUI"

    const-string v4, "showNotChargeDialog()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_0

    .line 508
    const v2, 0x7f080099

    .line 522
    .local v2, messageId:I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 524
    const v3, 0x7f080096

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 526
    const v3, 0x1010355

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 527
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 530
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 540
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 541
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 542
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    .line 544
    const-string v3, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->playSound(Landroid/net/Uri;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 547
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v2           #messageId:I
    :goto_1
    return-void

    .line 509
    :cond_0
    const/4 v3, 0x7

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_1

    .line 510
    const v2, 0x7f08009a

    .restart local v2       #messageId:I
    goto :goto_0

    .line 511
    .end local v2           #messageId:I
    :cond_1
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_2

    .line 514
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_3

    .line 515
    const v2, 0x7f08009b

    .restart local v2       #messageId:I
    goto :goto_0

    .line 513
    .end local v2           #messageId:I
    :cond_2
    const v2, 0x7f080097

    .restart local v2       #messageId:I
    goto :goto_0

    .line 517
    .end local v2           #messageId:I
    :cond_3
    const-string v3, "PowerUI"

    const-string v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method showPowerSavingModeDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 562
    const-string v2, "PowerUI"

    const-string v3, "showPowerSavingModeDialog()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 567
    const v2, 0x7f08009e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 568
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f08009f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingModeLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 569
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 570
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 584
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 590
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 591
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 592
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingModeDialog:Landroid/app/AlertDialog;

    .line 593
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 118
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v5, v4

    .line 120
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aput v6, v5, v3

    .line 123
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v5, "psm_battery_level"

    const/16 v6, 0x32

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingModeLevel:I

    .line 125
    const-string v5, "new_power_saving_mode"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSavingModeEnabled:Z

    .line 127
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 128
    .local v2, powerManager:Landroid/os/PowerManager;
    if-nez v2, :cond_1

    .line 129
    const-string v3, "PowerUI"

    const-string v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    new-instance v3, Lcom/android/server/NotificationPlayer;

    const-string v4, "PowerUI"

    invoke-direct {v3, v4}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    .line 135
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 143
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #powerManager:Landroid/os/PowerManager;
    :cond_0
    move v3, v4

    .line 125
    goto :goto_0

    .line 131
    .restart local v2       #powerManager:Landroid/os/PowerManager;
    :cond_1
    const/4 v3, 0x6

    const-string v4, "PowerUI"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1
.end method

.method turnOnScreen()V
    .locals 6

    .prologue
    .line 687
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 688
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 689
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, exception:Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
