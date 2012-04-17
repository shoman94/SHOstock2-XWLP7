.class public Lcom/android/email/syncnconnect/SyncConnectImpl;
.super Ljava/lang/Object;
.source "SyncConnectImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    }
.end annotation


# static fields
.field private static CLASS_NAME:Ljava/lang/String;

.field private static mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

.field private mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    .line 48
    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    .line 50
    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    .line 68
    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into SyncConnectImpl Constructor"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    .line 71
    iput-object p1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    .line 79
    return-void
.end method

.method private addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 135
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    :cond_0
    return-void
.end method

.method private addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 159
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 160
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 163
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    :cond_0
    return-void
.end method

.method private addGetProfileRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 231
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 232
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 235
    :cond_0
    return-void
.end method

.method private addGetTagsRequestOnQueue(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 198
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 202
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    :cond_0
    return-void
.end method

.method private addGetTokenRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 123
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 127
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    :cond_0
    return-void
.end method

.method private addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 147
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    :cond_0
    return-void
.end method

.method private addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 219
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 223
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    :cond_0
    return-void
.end method

.method private addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 240
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 244
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    :cond_0
    return-void
.end method

.method private addValidateTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 265
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 266
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    :cond_0
    return-void
.end method

.method private getAvailableAccountsFromLocalStore(I)V
    .locals 9
    .parameter "provisioningState"

    .prologue
    const/4 v8, 0x0

    .line 348
    :try_start_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const-string v6, "sncAvailableAccounts.xml"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 349
    .local v3, fs:Ljava/io/FileInputStream;
    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 351
    .local v0, byteXML:[B
    new-instance v4, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 352
    .local v4, responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    invoke-static {v0, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    .line 354
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v2

    .line 356
    .local v2, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 358
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    .line 378
    .end local v0           #byteXML:[B
    .end local v2           #endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    .end local v3           #fs:Ljava/io/FileInputStream;
    .end local v4           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :goto_0
    return-void

    .line 360
    .restart local v0       #byteXML:[B
    .restart local v2       #endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v4       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :cond_0
    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 361
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "OK"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v0           #byteXML:[B
    .end local v2           #endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    .end local v3           #fs:Ljava/io/FileInputStream;
    .end local v4           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :catch_0
    move-exception v1

    .line 365
    .local v1, e1:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Local XML File not found, so calling VZW Server"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Token Expired, Refreshing the token"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 373
    :cond_1
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v8}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private getBytesFromStream(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    .line 281
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x100

    new-array v0, v4, [B

    .line 284
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 286
    .local v2, len:I
    :goto_0
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v4, v2, :cond_0

    .line 287
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getBytesFromStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 290
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 291
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/email/syncnconnect/SyncConnectImpl;

    invoke-direct {v0, p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    return-object v0
.end method

.method private getUserAccountsFromLocalStore(I)V
    .locals 9
    .parameter "provisioningState"

    .prologue
    .line 414
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    :try_start_0
    const-string v4, "sncAvailableAccounts.xml"

    .line 417
    .local v4, xmlFile:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 418
    .local v2, fs:Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 420
    .local v0, byteXML:[B
    new-instance v3, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 421
    .local v3, responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    invoke-static {v0, v3}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    .line 423
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "OK"

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 442
    .end local v0           #byteXML:[B
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v3           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .end local v4           #xmlFile:Ljava/lang/String;
    :goto_1
    return-void

    .line 414
    :cond_0
    const-string v4, "sncUserAccounts.xml"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, e1:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Local XML File not found, so calling VZW Server"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Token Expired, Refreshing the token"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 436
    :cond_1
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_1

    .line 438
    :cond_2
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 439
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private isTokenExpired()Z
    .locals 9

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, bRet:Z
    iget-object v6, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "EXPIRY_DATE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, expiryDate:Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 89
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 90
    .local v3, exDate:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    .line 92
    sget-object v6, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsTokenExpired :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v3           #exDate:Ljava/util/Date;
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addGetEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 171
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 172
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    :cond_0
    return-void
.end method

.method public addGetPINRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 102
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PIN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 103
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    :cond_0
    return-void
.end method

.method public addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 180
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 181
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    :cond_0
    return-void
.end method

.method public addProcessSMSRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 274
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 275
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 278
    :cond_0
    return-void
.end method

.method public addRefreshTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 189
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 190
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    :cond_0
    return-void
.end method

.method public addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 253
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 257
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    :cond_0
    return-void
.end method

.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "providerName"
    .parameter "userName"
    .parameter "password"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into addUserAccount() method with providerName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, provisioningState:I
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    .line 463
    .local v1, userCredentials:Lcom/android/email/syncnconnect/utils/SncUserInfo;
    invoke-virtual {v1, p2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1, p3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v1, p1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    .line 466
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setAccountName(Ljava/lang/String;)V

    .line 467
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setDisplayName(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, p4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    .line 470
    packed-switch v0, :pswitch_data_0

    .line 493
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 497
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 473
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetTokenRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    .line 482
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 111
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VERIFY_DEVICE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 115
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    :cond_0
    return-void
.end method

.method public deactivateSnCAccount(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    .line 852
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 853
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DEACTIVATE_SNC:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 854
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 855
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 857
    :cond_0
    return-void
.end method

.method public deleteUserAccount(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 590
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into deleteUserAccount() method with accountId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, userEndpointId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 599
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 618
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 622
    :goto_0
    return-void

    .line 602
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 603
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAvailableAccounts()V
    .locals 4

    .prologue
    .line 321
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getAvailableAccounts() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 339
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v1

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 340
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetPINRequestOnQueue(Landroid/content/Context;)V

    .line 343
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    goto :goto_0

    .line 333
    :pswitch_1
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Fetching from XML File"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getAvailableAccountsFromLocalStore(I)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTags(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 630
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Into getTags() method with accountId :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 635
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 654
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 655
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    .line 658
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 639
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    goto :goto_0

    .line 643
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUserConfiguredAccounts()V
    .locals 4

    .prologue
    .line 386
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserConfiguredAccounts() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 391
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 405
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 406
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    .line 409
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 394
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    .line 399
    :pswitch_1
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Fetching from XML File"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getUserAccountsFromLocalStore(I)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUserProfile()V
    .locals 4

    .prologue
    .line 737
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserprofile() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 760
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 764
    :goto_0
    return-void

    .line 745
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 746
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    .line 750
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isUserRegistered()Z
    .locals 4

    .prologue
    .line 306
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into isUserRegistered() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, isRegistered:Z
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isRegistered"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 311
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsUserRegistered :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return v0
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "accountId"
    .parameter "password"
    .parameter "accountName"
    .parameter "displayName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const/4 v7, -0x1

    .line 526
    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Into modifyUserAccount() method with accountId :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with accountName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with displayName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and password :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, userEndpointId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    .line 538
    .local v3, userInfo:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-nez v3, :cond_0

    .line 539
    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserEndpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f080587

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    .line 546
    .local v1, userCredentials:Lcom/android/email/syncnconnect/utils/SncUserInfo;
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1, p3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, p4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setAccountName(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1, p5}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setDisplayName(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserEndpointId(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1, p6}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    .line 555
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "ProvisioningState"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 558
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 577
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    goto :goto_0

    .line 561
    :pswitch_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 562
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    .line 566
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Token Expired, Refreshing the token"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onGetPinSMSTimeout()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 863
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Into onGetPinSMSTimeout() method"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 866
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isSMSExpected"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 867
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 869
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "validateToken"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 872
    .local v1, isValidateToken:Z
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is ValidateToken :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    if-nez v1, :cond_0

    .line 875
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f080586

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 879
    :cond_0
    return-void
.end method

.method public syncUserAccount(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 701
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into syncUserAccount() method with accountId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, userEndpointId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 709
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 727
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 731
    :goto_0
    return-void

    .line 712
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 713
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 4
    .parameter "profileInfo"

    .prologue
    .line 770
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into updateUserprofile() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 775
    .local v0, provisioningState:I
    packed-switch v0, :pswitch_data_0

    .line 793
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    .line 797
    :goto_0
    return-void

    .line 778
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    .line 779
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    .line 783
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public validateToken()V
    .locals 3

    .prologue
    .line 836
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into validateToken() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "validateToken"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 842
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addValidateTokenRequestOnQueue(Landroid/content/Context;)V

    .line 843
    return-void
.end method
