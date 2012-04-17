.class public Lcom/android/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/EmailConnectivityManager$ConnectivityNotifier;
    }
.end annotation


# static fields
.field private static mCellAvailable:Z

.field private static mIsAirPlaneModeON:Z

.field private static mIsWifiOnly:Z

.field private static mNetworkInfo:Landroid/net/NetworkInfo;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 81
    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    .line 82
    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 99
    iput-object p1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    .line 101
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 103
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public static canConnect(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 283
    invoke-static {p0}, Lcom/android/email/EmailConnectivityManager;->isDataConnectivityOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getActiveNetwork(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 215
    const-class v9, Lcom/android/email/EmailConnectivityManager;

    monitor-enter v9

    :try_start_0
    const-string v10, "EmailConnectivityManager"

    const-string v11, "In getActiveNetwork"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 219
    .local v3, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    sput-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 223
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    .line 224
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    .line 227
    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v10, :cond_0

    .line 228
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    .local v0, allNetwork:[Landroid/net/NetworkInfo;
    move-object v1, v0

    .local v1, arr$:[Landroid/net/NetworkInfo;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v5, v1, v4

    .line 230
    .local v5, info:Landroid/net/NetworkInfo;
    const-string v7, "EmailConnectivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Network Information [ State :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ Type :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ Type Name :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ SubType Name :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ IsAvailable :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ IsConnected :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 240
    .end local v0           #allNetwork:[Landroid/net/NetworkInfo;
    .end local v1           #arr$:[Landroid/net/NetworkInfo;
    .end local v4           #i$:I
    .end local v5           #info:Landroid/net/NetworkInfo;
    .end local v6           #len$:I
    :cond_0
    const/4 v2, 0x0

    .line 241
    .local v2, cellConnected:Z
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 242
    .restart local v5       #info:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    .line 243
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-nez v10, :cond_2

    .line 244
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_1

    .line 245
    const/4 v2, 0x1

    .line 247
    :cond_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    .line 250
    :cond_2
    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v7, :cond_3

    .line 251
    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v7, :cond_4

    if-nez v2, :cond_4

    :goto_1
    sput-boolean v7, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v2           #cellConnected:Z
    .end local v5           #info:Landroid/net/NetworkInfo;
    :cond_3
    monitor-exit v9

    return-void

    .restart local v2       #cellConnected:Z
    .restart local v5       #info:Landroid/net/NetworkInfo;
    :cond_4
    move v7, v8

    .line 251
    goto :goto_1

    .line 215
    .end local v2           #cellConnected:Z
    .end local v3           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 311
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .locals 2
    .parameter "cm"

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 318
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 319
    const/4 v1, -0x1

    .line 320
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method public static isDataConnectivityOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 269
    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 270
    invoke-static {p0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    .line 273
    :cond_0
    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileAvailable()Z
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    .line 210
    :cond_0
    sget-boolean v0, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    return v0
.end method

.method public static isWifiOnly()Z
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    .line 203
    :cond_0
    sget-boolean v0, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    return v0
.end method


# virtual methods
.method public IsThereActiveNetwork()Z
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 377
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 378
    const/4 v1, 0x0

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getActiveNetworkType()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public hasConnectivity()Z
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 298
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackgroundDataAllowed()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public onBackgroundDataChanged(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 146
    return-void
.end method

.method public onConnectivityLost(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 136
    return-void
.end method

.method public onConnectivityRestored(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 127
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 162
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 163
    const-string v5, "networkInfo"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 165
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 197
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 168
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_4

    .line 169
    iget-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_0
    iget-object v5, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    .line 184
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, airplaneMode:I
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    .line 187
    if-ne v0, v7, :cond_3

    .line 188
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .end local v0           #airplaneMode:I
    :cond_3
    :goto_2
    sget-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    if-nez v5, :cond_0

    .line 196
    invoke-static {p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    goto :goto_0

    .line 171
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 173
    :cond_4
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 174
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_1

    .line 177
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/email/EmailConnectivityManager;->isBackgroundDataAllowed()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onBackgroundDataChanged(Z)V

    goto :goto_1

    .line 190
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 156
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 154
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 325
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ConnectivityManager not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 329
    .local v1, waiting:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 331
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 333
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    if-nez v2, :cond_7

    .line 334
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 335
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    .line 337
    if-eqz v1, :cond_1

    .line 338
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 339
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    :cond_2
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 372
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_1
    return-void

    .line 344
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_3
    if-nez v1, :cond_5

    .line 345
    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 346
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_4
    const/4 v1, 0x1

    .line 352
    :cond_5
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    :try_start_2
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :try_start_3
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 362
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    .end local v0           #info:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    :cond_6
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    .line 367
    :cond_7
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 368
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    :cond_8
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_1

    .line 357
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_2
.end method
