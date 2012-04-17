.class public Lcom/android/email/syncnconnect/service/PendingRequestQueue;
.super Ljava/lang/Object;
.source "PendingRequestQueue.java"


# static fields
.field private static mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;


# instance fields
.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/service/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    .line 28
    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/android/email/syncnconnect/service/Request;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 113
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 117
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    :cond_0
    return-void
.end method

.method public addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 137
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 141
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 142
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    :cond_0
    return-void
.end method

.method public addGetEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 150
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 151
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    :cond_0
    return-void
.end method

.method public addGetProfileRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 210
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 211
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    :cond_0
    return-void
.end method

.method public addGetTagsRequestOnQueue(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 177
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 181
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    :cond_0
    return-void
.end method

.method public addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 159
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 160
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    :cond_0
    return-void
.end method

.method public addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 125
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 129
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    :cond_0
    return-void
.end method

.method public addRefreshTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 168
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 169
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    :cond_0
    return-void
.end method

.method public addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 196
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 198
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 202
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    :cond_0
    return-void
.end method

.method public addSyncAllRequestOnQueue(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 189
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 190
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

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
    .line 230
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 232
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 236
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    :cond_0
    return-void
.end method

.method public addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 219
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 223
    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    :cond_0
    return-void
.end method

.method public final get()Lcom/android/email/syncnconnect/service/Request;
    .locals 5

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, req:Lcom/android/email/syncnconnect/service/Request;
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/syncnconnect/service/Request;

    move-object v1, v0

    .line 43
    :cond_0
    monitor-exit v3

    .line 44
    return-object v1

    .line 43
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final get(I)Lcom/android/email/syncnconnect/service/Request;
    .locals 4
    .parameter "position"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, req:Lcom/android/email/syncnconnect/service/Request;
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/syncnconnect/service/Request;

    move-object v1, v0

    .line 53
    :cond_0
    monitor-exit v3

    .line 54
    return-object v1

    .line 53
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final length()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, queueLength:I
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    :cond_0
    monitor-exit v2

    .line 77
    return v0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 58
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/service/Request;

    .line 61
    .local v1, req:Lcom/android/email/syncnconnect/service/Request;
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #req:Lcom/android/email/syncnconnect/service/Request;
    :cond_1
    monitor-exit v3

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
