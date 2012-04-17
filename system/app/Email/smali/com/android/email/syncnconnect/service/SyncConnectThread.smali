.class public Lcom/android/email/syncnconnect/service/SyncConnectThread;
.super Ljava/lang/Thread;
.source "SyncConnectThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/syncnconnect/service/SyncConnectThread$1;
    }
.end annotation


# static fields
.field private static CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

.field private mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

.field private mRetryCount:I

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    .line 73
    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    .line 79
    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into SyncConnectThread Constructor"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getInstance()Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    .line 88
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->setHttpClient()V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    .line 96
    invoke-static {}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    .line 97
    return-void
.end method

.method private addEndpoint(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const v11, 0x7f080587

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1061
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Into addEndpoint() method"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-wide/16 v8, -0x1

    .line 1069
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "MDN is NULL or empty"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080581

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    if-nez v0, :cond_2

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1084
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 1087
    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    .line 1089
    if-nez v0, :cond_3

    .line 1090
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Error in getting userInfo"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1093
    const-string v5, "cancelOperation"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1094
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1096
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080582

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto :goto_0

    .line 1102
    :cond_3
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v7

    .line 1105
    if-nez v7, :cond_4

    .line 1106
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Endpoint does not exists"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1112
    :cond_4
    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    .line 1114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" email=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" password=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" accountName=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" displayName=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\">"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "</ns2:sncEndpoint>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1122
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1123
    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sncBasic3 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    :try_start_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v11, "/snc/user/authThree/endpoints"

    invoke-virtual {v5, v7, v11, v10}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v10

    .line 1129
    if-eqz v10, :cond_e

    .line 1130
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1131
    :try_start_1
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 1133
    :try_start_2
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "cancelOperation"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    .line 1138
    :try_start_3
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_d

    .line 1140
    new-instance v6, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    invoke-direct {v6}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;-><init>()V

    .line 1141
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    invoke-static {v10, v6}, Lcom/android/email/syncnconnect/xml/ParserUtil;->endpointResponseXML([BLcom/android/email/syncnconnect/vo/EndpointResponseVO;)Z

    move-result v10

    .line 1144
    if-nez v10, :cond_6

    .line 1145
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080588

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    move-object v0, v6

    move v6, v7

    .line 1185
    :goto_1
    const/16 v7, 0x191

    if-ne v6, v7, :cond_a

    :try_start_4
    iget v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v7, :cond_a

    .line 1187
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1192
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1195
    new-instance v7, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v7}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 1196
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1197
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1201
    :goto_2
    invoke-virtual {v7, p1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    .line 1202
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 1203
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v7, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1205
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1219
    :cond_5
    :goto_3
    if-nez v1, :cond_0

    .line 1220
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1224
    :goto_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1146
    :cond_6
    const/16 v10, 0xc9

    if-ne v7, v10, :cond_c

    .line 1150
    :try_start_5
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getSncUserEndpoint()Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v7

    .line 1151
    if-nez v7, :cond_7

    .line 1152
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Error in getting userEndpoint Info"

    invoke-static {v0, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v10, 0x7f080587

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1219
    if-nez v1, :cond_0

    .line 1220
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 1162
    :cond_7
    :try_start_6
    iget-object v8, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v8

    .line 1164
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    .line 1166
    if-nez v1, :cond_8

    .line 1168
    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J

    move-result-wide v3

    .line 1175
    invoke-direct {p0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    move-object v0, v6

    move v6, v2

    goto/16 :goto_1

    .line 1177
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1178
    const-string v8, "UserInfo"

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteEndpoint(Landroid/os/Bundle;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v0, v6

    move v6, v2

    goto/16 :goto_1

    .line 1199
    :cond_9
    :try_start_7
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v0

    .line 1219
    if-nez v1, :cond_0

    .line 1220
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 1206
    :cond_a
    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1207
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1209
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "error_text"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v5

    goto/16 :goto_3

    .line 1215
    :catch_1
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    .line 1216
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1217
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "Error in sending Request"

    invoke-static {v0, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1219
    if-nez v1, :cond_0

    .line 1220
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 1219
    :catchall_0
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    :goto_7
    if-nez v1, :cond_b

    .line 1220
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1222
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1223
    const-string v3, "cancelOperation"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1224
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1219
    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    move v1, v2

    move v6, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    move v6, v7

    goto :goto_7

    :catchall_4
    move-exception v0

    move v6, v2

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    .line 1215
    :catch_2
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move v1, v2

    move v6, v7

    goto :goto_6

    :catch_4
    move-exception v0

    move v6, v7

    goto :goto_6

    :catch_5
    move-exception v0

    move v6, v2

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    .line 1213
    :catch_7
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move v1, v2

    move v6, v7

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move v6, v7

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move v6, v2

    goto/16 :goto_5

    :cond_c
    move-object v0, v6

    move v6, v7

    goto/16 :goto_1

    :cond_d
    move-object v0, v6

    move v6, v7

    goto/16 :goto_1

    :cond_e
    move-object v5, v6

    move v6, v1

    move v1, v2

    goto/16 :goto_3
.end method

.method private addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_accounts_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1233
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1235
    return-void
.end method

.method private addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1241
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1242
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v3, "sncUserAccounts.xml"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1243
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1245
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1247
    if-nez v1, :cond_3

    .line 1248
    const-string v1, "ns2:sncUserEndpoints"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v3, v1

    .line 1251
    :goto_0
    const-string v1, "sncUserEndpoint"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 1253
    const-string v1, "userName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v1, "userEndpointId"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v1, "endpointId"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v1, "displayOrder"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v1, "accountName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v1, "displayName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v1, "defaultFlag"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDefaultFlag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v6

    .line 1264
    const-string v1, "provider"

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v1, "sncServices"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 1268
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v8

    .line 1269
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v2, v0

    .line 1270
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1271
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncService;

    .line 1272
    const-string v1, "sncService"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1273
    const-string v1, "serviceId"

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    .line 1276
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    const-string v0, "name"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_0
    const-string v0, "isNotified"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getIsNotified()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_1
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1270
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1284
    :cond_2
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1285
    invoke-interface {v3, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1287
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 1288
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sncUserAccounts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1290
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1291
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1292
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1326
    :goto_2
    return-void

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Local XML File not found, so calling VZW Server"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :try_start_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "sncUserAccounts.xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1301
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>"

    .line 1302
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1303
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 1304
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1311
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 1312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    goto :goto_2

    .line 1306
    :catch_1
    move-exception v0

    .line 1307
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1308
    :catch_2
    move-exception v0

    .line 1309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1313
    :catch_3
    move-exception v0

    .line 1314
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 1315
    :catch_4
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 1317
    :catch_5
    move-exception v0

    .line 1318
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1319
    :catch_6
    move-exception v0

    .line 1320
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 1321
    :catch_7
    move-exception v0

    .line 1322
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_2

    .line 1323
    :catch_8
    move-exception v0

    .line 1324
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private checkToken()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 452
    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "Into checkToken() method"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "validateToken"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 455
    .local v6, validateToken:Z
    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is ValidateToken :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz v6, :cond_0

    .line 458
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const/4 v5, 0x0

    .line 465
    .local v5, username:Ljava/lang/String;
    const/4 v2, 0x0

    .line 467
    .local v2, password:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncHostAuth(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 468
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v1, :cond_2

    .line 469
    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 470
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 472
    :cond_2
    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring Token with Username :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 475
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v4

    .line 478
    .local v4, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-eqz v4, :cond_3

    .line 479
    new-instance v3, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    .line 480
    .local v3, userCredentials:Lcom/android/email/syncnconnect/utils/SncUserInfo;
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v3, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "UserInfo"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 488
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    .line 490
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #userCredentials:Lcom/android/email/syncnconnect/utils/SncUserInfo;
    :cond_3
    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 491
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080582

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v4           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 496
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080584

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private convertBoolToString(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1982
    if-eqz p1, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method private convertIntToTime(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xa

    .line 1987
    div-int/lit16 v1, p1, 0xe10

    .line 1988
    rem-int/lit16 v0, p1, 0xe10

    .line 1989
    div-int/lit8 v2, v0, 0x3c

    .line 1990
    rem-int/lit8 v3, v0, 0x3c

    .line 1992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v5, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1993
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v2, v5, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v5, :cond_2

    const-string v0, "0"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1992
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1993
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 1994
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private deactivateSnc()V
    .locals 5

    .prologue
    .line 2146
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into deactivateSnc() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "ProvisioningState"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2150
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2153
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2155
    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting Account with userEndpointID :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)J

    goto :goto_0

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sncAvailableAccounts.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2164
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sncUserAccounts.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2166
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_accounts_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2172
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2176
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeactivateSncCallback()V

    .line 2177
    return-void
.end method

.method private deleteEndpoint(Landroid/os/Bundle;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1431
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into deleteEndpoint() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/4 v2, -0x1

    .line 1436
    const-wide/16 v3, -0x1

    .line 1438
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080581

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    const-string v5, "UserInfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1449
    if-nez v5, :cond_2

    .line 1450
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    if-nez p2, :cond_0

    .line 1452
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080582

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto :goto_0

    .line 1458
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/snc/user/authThree/endpoints/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1464
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1465
    const-string v8, "Authorization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sncBasic3 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v2

    .line 1474
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 1477
    new-instance v6, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    invoke-direct {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;-><init>()V

    .line 1478
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/email/syncnconnect/xml/ParserUtil;->deleteEndpointResponseXML([BLcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;)Z

    move-result v7

    .line 1481
    if-nez v7, :cond_5

    .line 1482
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v7, 0x7f080589

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1492
    :cond_3
    :goto_1
    const/16 v0, 0x191

    if-ne v2, v0, :cond_6

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_6

    .line 1494
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1495
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1499
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1513
    :cond_4
    :goto_2
    if-nez p2, :cond_0

    .line 1514
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1483
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_3

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1486
    const/4 v2, 0x0

    .line 1489
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v0

    sget-object v7, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    :try_start_2
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1513
    if-nez p2, :cond_0

    .line 1514
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1500
    :cond_6
    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1501
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "error_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1503
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "error_text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_2

    .line 1509
    :catch_1
    move-exception v0

    .line 1510
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1511
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Error in sending Request"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1513
    if-nez p2, :cond_0

    .line 1514
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    .line 1513
    :catchall_0
    move-exception v0

    if-nez p2, :cond_7

    .line 1514
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    .line 1513
    :cond_7
    throw v0
.end method

.method private deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;",
            "Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1034
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1035
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account UUID :: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const/4 v2, 0x0

    .line 1038
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 1039
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v1

    .line 1040
    sget-object v5, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserEndpointId :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    const/4 v1, 0x1

    .line 1046
    :goto_1
    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)J

    .line 1051
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->removeFromUserEndpointXML(Ljava/lang/String;)V

    .line 1052
    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {p2, v1}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountFromPortalCallback(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1058
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private flushPendingRequestQueue()V
    .locals 5

    .prologue
    .line 1767
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into flushPendingRequestQueue() method with queueLength :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v1

    .line 1770
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1771
    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting the Request :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->get()Lcom/android/email/syncnconnect/service/Request;

    move-result-object v2

    .line 1773
    if-eqz v2, :cond_0

    .line 1774
    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v3

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v3, v4, :cond_1

    .line 1775
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    .line 1776
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1770
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1778
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->processRequest(Lcom/android/email/syncnconnect/service/Request;)V

    .line 1779
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    goto :goto_1

    .line 1783
    :cond_2
    return-void
.end method

.method private getBytesFromStream(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    .line 503
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 504
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x100

    new-array v0, v4, [B

    .line 506
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 508
    .local v2, len:I
    :goto_0
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v4, v2, :cond_0

    .line 509
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

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

    .line 518
    .end local v1           #ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 512
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 513
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getEndpoints()V
    .locals 17

    .prologue
    .line 726
    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "Into getEndpoints() method"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v9, -0x1

    .line 729
    .local v9, responseStatus:I
    const/4 v10, 0x0

    .line 730
    .local v10, responseString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 732
    .local v4, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 733
    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "MDN is NULL or empty"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v16, 0x7f080581

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v9, v15, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 807
    :goto_0
    return-void

    .line 739
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v15, "AUTH_TOKEN"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 742
    .local v13, token:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 743
    .local v6, mdnToken:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, encodeMDN:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v5, hMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sncBasic3 "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v15, "/snc/user/authThree/masterEndpoints"

    invoke-virtual {v14, v15, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v8

    .line 752
    .local v8, response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    if-eqz v8, :cond_2

    .line 753
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v9

    .line 754
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    .line 756
    const/4 v11, 0x0

    .line 757
    .local v11, responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_1

    .line 759
    new-instance v11, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    .end local v11           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    invoke-direct {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 760
    .restart local v11       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v1

    .line 763
    .local v1, bRet:Z
    if-nez v1, :cond_4

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v15, 0x7f080587

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 779
    .end local v1           #bRet:Z
    :cond_1
    :goto_1
    const/16 v14, 0x191

    if-ne v9, v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v14, :cond_5

    .line 781
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    .line 784
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v14

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v14, v15}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 786
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 800
    .end local v11           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 801
    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 804
    :cond_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    .end local v8           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    :goto_3
    invoke-virtual {v14, v9, v10, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 765
    .restart local v1       #bRet:Z
    .restart local v8       #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .restart local v11       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :cond_4
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_1

    .line 767
    const/4 v9, 0x0

    .line 770
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v15, "sncAvailableAccounts.xml"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 772
    .local v7, os:Ljava/io/OutputStream;
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 773
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 774
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 776
    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 787
    .end local v1           #bRet:Z
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_5
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 788
    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "error_code"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 790
    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "error_text"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_2

    .line 794
    .end local v8           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .end local v11           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :catch_0
    move-exception v12

    .line 795
    .local v12, ste:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 800
    if-eqz v4, :cond_6

    .line 801
    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 804
    :cond_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    goto :goto_3

    .line 796
    .end local v12           #ste:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 797
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 798
    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "Error in sending Request"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    if-eqz v4, :cond_7

    .line 801
    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 804
    :cond_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    goto :goto_3

    .line 800
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v4, :cond_8

    .line 801
    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 804
    :cond_8
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v15

    invoke-virtual {v15, v9, v10, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 800
    throw v14
.end method

.method private getServiceList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, sncServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    const-string v2, ""

    .line 524
    .local v2, serviceString:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    .line 526
    .local v1, service:Lcom/android/email/syncnconnect/utils/SncService;
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding Service :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<sncService serviceId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 530
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #service:Lcom/android/email/syncnconnect/utils/SncService;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<sncServices>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</sncServices>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getToken(Landroid/os/Bundle;)V
    .locals 36
    .parameter "data"

    .prologue
    .line 540
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Into getToken() method"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/16 v23, -0x1

    .line 543
    .local v23, responseStatus:I
    const/4 v14, -0x1

    .line 544
    .local v14, getTokenResponseStatus:I
    const/16 v24, 0x0

    .line 546
    .local v24, responseString:Ljava/lang/String;
    const-wide/16 v3, -0x1

    .line 548
    .local v3, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 551
    .local v17, isValidateToken:Z
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 553
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "MDN is NULL or empty"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-nez v17, :cond_0

    .line 555
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f080581

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "PIN_KEY"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 564
    .local v20, pin:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ":"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 565
    .local v19, mdnPIN:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, encodeMDN:Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v15, hMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v31, "Authorization"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sncBasic2 "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v31, "UserInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    .line 573
    .local v29, userInfo:Lcom/android/email/syncnconnect/utils/SncUserInfo;
    if-nez v29, :cond_2

    .line 574
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Error in getting the UserInfo"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f080582

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getProvider()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v12

    .line 584
    .local v12, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    if-nez v12, :cond_3

    .line 585
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Endpoint does not exists"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    const/16 v32, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f080587

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, -0x1

    invoke-virtual/range {v31 .. v35}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 591
    :cond_3
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    .line 595
    const/16 v28, 0x0

    .line 597
    .local v28, userEndpointId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "sncAvailableAccounts.xml"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v13

    .line 598
    .local v13, fs:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v7

    .line 600
    .local v7, byteXML:[B
    new-instance v21, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 601
    .local v21, respVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    .line 603
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v18

    .line 604
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_5

    .line 605
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 606
    .local v27, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    invoke-virtual/range {v27 .. v27}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 607
    invoke-virtual/range {v27 .. v27}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 616
    .end local v7           #byteXML:[B
    .end local v13           #fs:Ljava/io/FileInputStream;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    .end local v21           #respVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .end local v27           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_5
    :goto_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<sncGetToken xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 620
    .local v30, xmlData:Ljava/lang/String;
    if-eqz v28, :cond_6

    .line 621
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" userEndpointId=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 624
    :cond_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" email=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" password=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" accountName=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" displayName=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "</sncGetToken>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 630
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const-string v33, "/snc/user/authTwo/getToken"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v22

    .line 632
    .local v22, response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    if-eqz v22, :cond_9

    .line 633
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v23

    .line 634
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v24

    .line 636
    move/from16 v14, v23

    .line 637
    const/16 v25, 0x0

    .line 638
    .local v25, responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_7

    .line 640
    new-instance v25, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;

    .end local v25           #responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    invoke-direct/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;-><init>()V

    .line 641
    .restart local v25       #responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTokenResponseXML([BLcom/android/email/syncnconnect/vo/GetTokenResponseVO;)Z

    move-result v6

    .line 644
    .local v6, bRet:Z
    if-nez v6, :cond_a

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f080583

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 676
    .end local v6           #bRet:Z
    :cond_7
    :goto_2
    const/16 v31, 0x191

    move/from16 v0, v31

    if-ne v14, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-lez v31, :cond_c

    .line 678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 682
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v31

    sget-object v32, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    .line 686
    :cond_8
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 701
    .end local v25           #responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 703
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-nez v17, :cond_19

    .line 706
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    .end local v22           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    :goto_4
    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 612
    .end local v30           #xmlData:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 613
    .local v9, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 646
    .end local v9           #e1:Ljava/io/FileNotFoundException;
    .restart local v6       #bRet:Z
    .restart local v22       #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .restart local v25       #responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    .restart local v30       #xmlData:Ljava/lang/String;
    :cond_a
    const/16 v31, 0xc9

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 648
    const/16 v23, 0x0

    .line 649
    :try_start_2
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Token :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Expiry Date :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->updateSncHostAuthEntries(Landroid/content/Context;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 656
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string v31, "AUTH_TOKEN"

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v31, "EXPIRY_DATE"

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v31, "ProvisioningState"

    const/16 v32, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    move-result-object v5

    .line 667
    .local v5, b:Landroid/os/Bundle;
    if-eqz v5, :cond_b

    .line 668
    const-string v31, "status_code"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 669
    const-string v31, "status_text"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 672
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromEmailId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    goto/16 :goto_2

    .line 688
    .end local v5           #b:Landroid/os/Bundle;
    .end local v6           #bRet:Z
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_c
    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_9

    .line 689
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "error_code"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 691
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "error_text"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    goto/16 :goto_3

    .line 695
    .end local v22           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .end local v25           #responseVO:Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
    :catch_1
    move-exception v26

    .line 696
    .local v26, ste:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v24

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 703
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-nez v17, :cond_11

    .line 706
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_4

    .line 697
    .end local v26           #ste:Lcom/android/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v8

    .line 698
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 699
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Error in sending Request"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 703
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-nez v17, :cond_15

    .line 706
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_4

    .line 701
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "validateToken"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 703
    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Is ValidateToken :: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Retry Count :: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-nez v17, :cond_d

    .line 706
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 701
    :goto_5
    throw v31

    .line 709
    :cond_d
    const/16 v32, 0xc9

    move/from16 v0, v32

    if-ne v14, v0, :cond_f

    .line 710
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    .line 719
    :cond_e
    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto :goto_5

    .line 712
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v32, v0

    if-ltz v32, :cond_10

    const/16 v32, 0x191

    move/from16 v0, v32

    if-eq v14, v0, :cond_e

    if-eqz v23, :cond_e

    .line 714
    :cond_10
    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v33, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 716
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_6

    .line 709
    .restart local v26       #ste:Lcom/android/emailcommon/mail/MessagingException;
    :cond_11
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_13

    .line 710
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    .line 719
    :cond_12
    :goto_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    .end local v26           #ste:Lcom/android/emailcommon/mail/MessagingException;
    :goto_8
    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 712
    .restart local v26       #ste:Lcom/android/emailcommon/mail/MessagingException;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_14

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_12

    if-eqz v23, :cond_12

    .line 714
    :cond_14
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 716
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_7

    .line 709
    .end local v26           #ste:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v8       #e:Ljava/lang/Exception;
    :cond_15
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_17

    .line 710
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    .line 719
    :cond_16
    :goto_9
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto :goto_8

    .line 712
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_18

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_16

    if-eqz v23, :cond_16

    .line 714
    :cond_18
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 716
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_9

    .line 709
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v22       #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    :cond_19
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_1b

    .line 710
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    .line 719
    :cond_1a
    :goto_a
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_8

    .line 712
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_1c

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_1a

    if-eqz v23, :cond_1a

    .line 714
    :cond_1c
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 716
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_a
.end method

.method private getUserEndpoints(Z)Landroid/os/Bundle;
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 810
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserEndpoints() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const/4 v2, -0x1

    .line 816
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 903
    :goto_0
    return-object v0

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 829
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 830
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sncBasic3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v5, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v5, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    .line 836
    if-eqz v1, :cond_9

    .line 837
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 838
    :try_start_1
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 841
    :try_start_2
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_8

    .line 843
    new-instance v5, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 844
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v6

    .line 847
    if-nez v6, :cond_2

    .line 848
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080587

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    move-object v1, v0

    move-object v0, v5

    .line 866
    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_4

    :try_start_3
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_4

    .line 868
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 871
    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    .line 872
    if-eqz p1, :cond_3

    .line 873
    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 879
    :goto_2
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    .line 881
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v0, v2

    move-object v2, v1

    move v1, v3

    .line 895
    :goto_3
    if-nez p1, :cond_1

    .line 896
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    :goto_4
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 900
    :cond_1
    :goto_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 901
    const-string v3, "status_code"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v1, "status_text"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 903
    goto/16 :goto_0

    .line 849
    :cond_2
    const/16 v6, 0xc8

    if-ne v3, v6, :cond_7

    .line 854
    :try_start_4
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v6, "sncUserAccounts.xml"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 856
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 857
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 858
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 860
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 863
    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v5

    move v3, v4

    goto :goto_1

    .line 875
    :cond_3
    :try_start_6
    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 876
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 889
    :catch_0
    move-exception v0

    move-object v8, v1

    move v1, v3

    move-object v3, v2

    move-object v2, v8

    .line 890
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result-object v0

    .line 895
    if-nez p1, :cond_1

    .line 896
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    goto :goto_4

    .line 882
    :cond_4
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 883
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 885
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move v1, v3

    goto :goto_3

    .line 891
    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    .line 892
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 893
    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 895
    if-nez p1, :cond_1

    .line 896
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_5

    .line 895
    :catchall_0
    move-exception v1

    move v3, v2

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_8
    if-nez p1, :cond_5

    .line 896
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 895
    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_8

    :catchall_3
    move-exception v1

    move v3, v4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_8

    :catchall_4
    move-exception v0

    move v3, v4

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v8

    goto :goto_8

    :catchall_7
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move v3, v1

    move-object v1, v9

    goto :goto_8

    .line 891
    :catch_2
    move-exception v1

    move-object v2, v1

    move v1, v3

    move-object v3, v0

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v4

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v1

    move v1, v4

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    .line 889
    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_6

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v8, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_9
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_a
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v4

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto/16 :goto_6

    :cond_6
    move-object v0, v2

    move-object v2, v1

    move v1, v3

    goto/16 :goto_3

    :cond_7
    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move v1, v2

    move-object v2, v0

    goto/16 :goto_3
.end method

.method private getUserProfile()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1889
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserProfile() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v2, -0x1

    .line 1895
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 1971
    :goto_0
    return-void

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1906
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1908
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1910
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/provisioning/profile"

    invoke-virtual {v0, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    .line 1916
    if-eqz v4, :cond_8

    .line 1917
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v2

    .line 1918
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1921
    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_7

    .line 1923
    new-instance v0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;-><init>()V

    .line 1924
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getProfileResponseXML([BLcom/android/email/syncnconnect/vo/GetProfileResponseVO;)Z

    move-result v5

    .line 1927
    if-nez v5, :cond_2

    .line 1928
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    .line 1947
    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_4

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_4

    .line 1949
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1951
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    .line 1952
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1954
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1968
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    .line 1929
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_6

    .line 1931
    const/4 v4, 0x0

    .line 1933
    :try_start_4
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getSncProfile()Lcom/android/email/syncnconnect/utils/SncProfile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    .line 1938
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move-object v2, v3

    move v3, v4

    .line 1943
    goto :goto_1

    .line 1955
    :cond_4
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1956
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1958
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    goto :goto_2

    .line 1962
    :catch_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    .line 1963
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v0

    .line 1968
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    .line 1964
    :catch_1
    move-exception v0

    move-object v3, v1

    .line 1965
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1966
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1968
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move v2, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    goto :goto_5

    .line 1964
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move v2, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    goto :goto_4

    .line 1962
    :catch_6
    move-exception v0

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v3

    move v3, v4

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move v3, v4

    goto/16 :goto_1

    :cond_6
    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto/16 :goto_1

    :cond_8
    move v3, v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, bRet:Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1976
    :cond_0
    const/4 v0, 0x1

    .line 1978
    :cond_1
    return v0
.end method

.method private modifyEndpoint(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1329
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into modifyEndpoint() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const/4 v3, -0x1

    .line 1334
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    .line 1428
    :goto_0
    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_TOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 1347
    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    .line 1349
    if-nez v0, :cond_1

    .line 1350
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080582

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" email=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" userEndpointId=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1361
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" password=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" modifyPassword=\"true"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1364
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" accountName=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" displayName=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " >"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</ns2:sncEndpoint>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1370
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :try_start_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v6, "/snc/user/authThree/endpoints"

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v5

    .line 1376
    if-eqz v5, :cond_9

    .line 1377
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v3

    .line 1378
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1381
    :try_start_1
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_8

    .line 1383
    new-instance v4, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;-><init>()V

    .line 1384
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->endpointResponseXML([BLcom/android/email/syncnconnect/vo/EndpointResponseVO;)Z

    move-result v2

    .line 1387
    if-nez v2, :cond_4

    .line 1388
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f08058a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move v2, v3

    move-object v3, v4

    .line 1405
    :goto_1
    const/16 v4, 0x191

    if-ne v2, v4, :cond_6

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_6

    .line 1407
    iget v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1408
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    .line 1409
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v3}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1411
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1425
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :cond_4
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_7

    .line 1391
    const/4 v2, 0x0

    .line 1393
    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getSncUserEndpoint()Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    .line 1395
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->removeFromUserEndpointXML(Ljava/lang/String;)V

    .line 1396
    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 1399
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1400
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v3, v4

    goto :goto_1

    .line 1412
    :cond_6
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1413
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1415
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_2

    .line 1419
    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    .line 1420
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 1425
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v3

    .line 1422
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1423
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in sending Request"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1425
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 1421
    :catch_2
    move-exception v0

    move v2, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    .line 1419
    :catch_4
    move-exception v0

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_7
    move v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_8
    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method private modifyProfile(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2000
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into modifyProfile() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    .line 2133
    :goto_0
    return-void

    .line 2012
    :cond_0
    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    .line 2014
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2019
    :cond_1
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080582

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 2026
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<sncUpdateProfile><sncProfile><firstName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</firstName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<lastName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</lastName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<sncPushNotification "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2031
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "startDate=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" endDate=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2039
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/><sncSyncNotification "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2041
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationStartTime()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationEndTime()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 2043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "startTime=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationStartTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertIntToTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" endTime=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationEndTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertIntToTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2049
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/><sncExchangeInfo><exchangeDomain>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDomain>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeUser>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeUser>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeServer>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeServer>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeNickName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeNickName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMailSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMailSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMailSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeABSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeABSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeABSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeCalSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeCalSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeCalSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeSecureFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeSecureFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeSecureFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeVerifyCertFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeVerifyCertFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeVerifyCertFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeDaysToSync>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDaysToSync()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDaysToSync>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeFetchFreq>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeFetchFreq()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeFetchFreq>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMailSize>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMailSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMailSize>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMessageFormat>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMessageFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMessageFormat>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeUpdateSchedule>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUpdateSchedule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeUpdateSchedule>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeDownloadPastEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDownloadPastEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDownloadPastEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeIncludeFileAttachment>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeIncludeFileAttachment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeIncludeFileAttachment>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncExchangeInfo>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<sncOutOfOffice/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncProfile>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncUpdateProfile>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2079
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2082
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2083
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 2085
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2086
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    :try_start_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v6, "/snc/user/authThree/provisioning/profile"

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    .line 2092
    if-eqz v4, :cond_9

    .line 2093
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v3

    .line 2094
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2097
    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_8

    .line 2099
    new-instance v2, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;-><init>()V

    .line 2100
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/email/syncnconnect/xml/ParserUtil;->modifyProfileResponseXML([BLcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;)Z

    move-result v4

    .line 2103
    if-nez v4, :cond_6

    .line 2104
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    .line 2109
    :goto_1
    const/16 v4, 0x191

    if-ne v2, v4, :cond_7

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_7

    .line 2111
    iget v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 2113
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 2114
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v3}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 2116
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2130
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2106
    :cond_6
    const/4 v3, 0x0

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto :goto_1

    .line 2117
    :cond_7
    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2118
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2120
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_2

    .line 2124
    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    .line 2125
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 2130
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2126
    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v3

    .line 2127
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2128
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in sending Request"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2130
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 2126
    :catch_2
    move-exception v0

    move v2, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    .line 2124
    :catch_4
    move-exception v0

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_8
    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private processRequest(Lcom/android/email/syncnconnect/service/Request;)V
    .locals 4
    .parameter "req"

    .prologue
    const/4 v3, 0x0

    .line 129
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into ProcessRequest with request :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v0

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v0

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v0, v1, :cond_0

    .line 133
    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 136
    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread$1;->$SwitchMap$com$android$email$syncnconnect$utils$SyncConnectConstants$APIRequestType:[I

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 138
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 143
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->verifyDevice()V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    .line 149
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getEndpoints()V

    goto :goto_0

    .line 152
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    goto :goto_0

    .line 155
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addEndpoint(Landroid/os/Bundle;)V

    goto :goto_0

    .line 158
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->modifyEndpoint(Landroid/os/Bundle;)V

    goto :goto_0

    .line 161
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteEndpoint(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 164
    :pswitch_9
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->refreshToken()V

    goto :goto_0

    .line 167
    :pswitch_a
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getTags(Landroid/os/Bundle;)V

    goto :goto_0

    .line 170
    :pswitch_b
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->syncAll()V

    goto :goto_0

    .line 173
    :pswitch_c
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->syncUserAccount(Landroid/os/Bundle;)V

    goto :goto_0

    .line 176
    :pswitch_d
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserProfile()V

    goto :goto_0

    .line 179
    :pswitch_e
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->modifyProfile(Landroid/os/Bundle;)V

    goto :goto_0

    .line 182
    :pswitch_f
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateEndpointsDb(Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :pswitch_10
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    goto :goto_0

    .line 188
    :pswitch_11
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private refreshToken()V
    .locals 5

    .prologue
    .line 1566
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into refreshToken() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1579
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1580
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sncBasic3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v2, "/snc/user/authThree/refreshToken"

    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 1589
    new-instance v1, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;-><init>()V

    .line 1590
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTokenResponseXML([BLcom/android/email/syncnconnect/vo/GetTokenResponseVO;)Z

    move-result v0

    .line 1593
    if-eqz v0, :cond_0

    .line 1594
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expiry Date :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1598
    const-string v2, "AUTH_TOKEN"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1599
    const-string v2, "EXPIRY_DATE"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1610
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1603
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_0

    .line 1605
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1606
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    .line 1608
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1611
    :catch_1
    move-exception v0

    .line 1612
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1613
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in sending Request"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removeFromUserEndpointXML(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1521
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1524
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1525
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v2, "sncUserAccounts.xml"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1526
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 1528
    const-string v0, "sncUserEndpoint"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1529
    if-nez v3, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1533
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1534
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1535
    const-string v4, "userEndpointId"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1537
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1542
    :cond_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 1543
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sncUserAccounts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1545
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1546
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1547
    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 1533
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1551
    :catch_1
    move-exception v0

    .line 1552
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 1553
    :catch_2
    move-exception v0

    .line 1554
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1555
    :catch_3
    move-exception v0

    .line 1556
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 1557
    :catch_4
    move-exception v0

    .line 1558
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 1559
    :catch_5
    move-exception v0

    .line 1560
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestPIN()V
    .locals 14

    .prologue
    const/16 v13, 0xc8

    .line 267
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Into requestPIN() method"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v6, -0x1

    .line 270
    .local v6, responseStatus:I
    const/4 v7, 0x0

    .line 272
    .local v7, responseString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 273
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "MDN is NULL or empty"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v11, 0x7f080581

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v6, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, encodeMDN:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v4, hMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sncBasic1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :try_start_0
    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v11, "/snc/user/authOne/getPIN"

    invoke-virtual {v10, v11, v4}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v5

    .line 288
    .local v5, response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    if-eqz v5, :cond_5

    .line 289
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v6

    .line 290
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_3

    .line 294
    new-instance v8, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;

    invoke-direct {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;-><init>()V

    .line 295
    .local v8, responseVO:Lcom/android/email/syncnconnect/vo/GetPINResponseVO;
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getPINResponseXML([BLcom/android/email/syncnconnect/vo/GetPINResponseVO;)Z

    move-result v0

    .line 298
    .local v0, bRet:Z
    if-nez v0, :cond_2

    .line 299
    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v11, 0x7f080583

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    :cond_2
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Encrypted PIN :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v10

    if-ne v10, v13, :cond_4

    .line 307
    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 308
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "isSMSExpected"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    sget-boolean v10, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-eqz v10, :cond_3

    .line 313
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 314
    const-string v10, "PIN_KEY"

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v10, "ProvisioningState"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->verifyDevice()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    .end local v0           #bRet:Z
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #responseVO:Lcom/android/email/syncnconnect/vo/GetPINResponseVO;
    :cond_3
    :goto_1
    if-eq v6, v13, :cond_0

    .line 339
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .restart local v0       #bRet:Z
    .restart local v8       #responseVO:Lcom/android/email/syncnconnect/vo/GetPINResponseVO;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 323
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "error_code"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "error_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 330
    .end local v0           #bRet:Z
    .end local v8           #responseVO:Lcom/android/email/syncnconnect/vo/GetPINResponseVO;
    :cond_5
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Response is NULL"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 332
    .end local v5           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    :catch_0
    move-exception v9

    .line 333
    .local v9, ste:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 338
    if-eq v6, v13, :cond_0

    .line 339
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v9           #ste:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Error in sending Request"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    if-eq v6, v13, :cond_0

    .line 339
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 338
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eq v6, v13, :cond_6

    .line 339
    sget-object v11, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v12, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    :cond_6
    throw v10
.end method

.method private sendErrorCallback(ILjava/lang/String;)V
    .locals 9
    .parameter "statusCode"
    .parameter "statusString"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 196
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into sendErrorCallback with statusCode :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and statusString :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v6

    .line 201
    .local v6, queueLength:I
    sget-object v8, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    .line 202
    .local v8, type:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->get(I)Lcom/android/email/syncnconnect/service/Request;

    move-result-object v7

    .line 203
    .local v7, req:Lcom/android/email/syncnconnect/service/Request;
    if-nez v7, :cond_2

    .line 204
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "No request left in the PendingQueue"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    .line 214
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ErrorCallback for RequestType :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread$1;->$SwitchMap$com$android$email$syncnconnect$utils$SyncConnectConstants$APIRequestType:[I

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_1
    :pswitch_0
    if-eqz v7, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 264
    :cond_1
    return-void

    .line 207
    :cond_2
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ErrorCallback for RequestType :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    .line 209
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v8, v0, :cond_3

    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v8, v0, :cond_0

    .line 210
    :cond_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 221
    :pswitch_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 225
    :pswitch_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto :goto_1

    .line 229
    :pswitch_4
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto :goto_1

    .line 233
    :pswitch_5
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto :goto_1

    .line 237
    :pswitch_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    goto :goto_1

    .line 241
    :pswitch_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 245
    :pswitch_8
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_1

    .line 249
    :pswitch_9
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_1

    .line 253
    :pswitch_a
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :pswitch_b
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private setValidateToken(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "validateToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    return-void
.end method

.method private final stopService()V
    .locals 2

    .prologue
    .line 2238
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Stopping the Service"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->stopHttpClient()V

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 2244
    return-void
.end method

.method private syncAll()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1692
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into syncAll() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const/4 v2, -0x1

    .line 1699
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 1764
    :goto_0
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1712
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1714
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/syncAll"

    invoke-virtual {v0, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    .line 1720
    if-eqz v4, :cond_6

    .line 1721
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1722
    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1725
    :try_start_2
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1727
    new-instance v0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;-><init>()V

    .line 1728
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->syncAllResponseXML([BLcom/android/email/syncnconnect/vo/SyncAllResponseVO;)Z

    move-result v5

    .line 1731
    if-nez v5, :cond_3

    .line 1732
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1748
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1749
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1751
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 1761
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1733
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 1735
    const/4 v3, 0x0

    .line 1736
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 1738
    :cond_4
    const/16 v4, 0x191

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_1

    .line 1740
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1742
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAllRequestOnQueue(Landroid/content/Context;)V

    .line 1743
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1745
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 1761
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1757
    :catch_1
    move-exception v0

    move v3, v2

    move-object v2, v1

    .line 1758
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1761
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 1757
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    .line 1755
    :catch_4
    move-exception v0

    move v3, v2

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move v3, v2

    move-object v2, v1

    goto :goto_2
.end method

.method private syncUserAccount(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1786
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into syncUserAccount() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const/4 v2, -0x1

    .line 1793
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    .line 1886
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1806
    const-string v3, "UserInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1808
    if-nez v6, :cond_1

    .line 1809
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in getting userInfo"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080582

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_0

    .line 1816
    :cond_1
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    .line 1819
    if-nez v3, :cond_2

    .line 1820
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    :cond_2
    new-instance v5, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    .line 1825
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserEndpointId(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    .line 1830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" email=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" userEndpointId=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</ns2:sncEndpoint>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1836
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1837
    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sncBasic3 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v7, "/snc/user/authThree/syncAll"

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    .line 1843
    if-eqz v0, :cond_8

    .line 1844
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1845
    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1848
    :try_start_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_7

    .line 1850
    new-instance v5, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;-><init>()V

    .line 1851
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/email/syncnconnect/xml/ParserUtil;->syncAllResponseXML([BLcom/android/email/syncnconnect/vo/SyncAllResponseVO;)Z

    move-result v7

    .line 1854
    if-nez v7, :cond_4

    .line 1855
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080583

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v5

    .line 1862
    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_5

    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_5

    .line 1864
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1866
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v6}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 1867
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1869
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1883
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto/16 :goto_0

    .line 1856
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_6

    .line 1859
    :try_start_4
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v0

    move v3, v4

    move-object v0, v5

    goto :goto_1

    .line 1870
    :cond_5
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1871
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1873
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    goto :goto_2

    .line 1877
    :catch_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    .line 1878
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 1883
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto/16 :goto_0

    .line 1879
    :catch_1
    move-exception v0

    move v3, v2

    move-object v2, v1

    .line 1880
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1881
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1883
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move v3, v4

    goto :goto_6

    .line 1879
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move v3, v4

    goto :goto_5

    .line 1877
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move v3, v4

    goto :goto_4

    :cond_6
    move-object v0, v5

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move v3, v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method private updateAccountDatabase(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    .local p1, userEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 910
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 912
    .local v2, userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 913
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 917
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    .line 919
    .local v0, endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V

    .line 921
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J

    .line 908
    .end local v0           #endpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    .end local v2           #userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    :cond_1
    return-void
.end method

.method private updateEndpointsDb(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 930
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into updateEndpointsDb() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v1, "UserInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 934
    if-nez v2, :cond_1

    .line 935
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Endpoint Operation is NULL"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_2
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 953
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 954
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v3

    .line 960
    if-eqz v3, :cond_0

    .line 961
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v1

    .line 964
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_6

    .line 966
    new-instance v4, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    .line 967
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v5

    .line 970
    if-eqz v5, :cond_6

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_6

    .line 975
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v5, "sncUserAccounts.xml"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 977
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 978
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 979
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 981
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v1

    .line 983
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v3, "ADD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 986
    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V

    .line 993
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "Account added from web"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    .line 1007
    :cond_3
    :goto_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_0

    .line 1009
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1010
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V

    goto/16 :goto_0

    .line 1015
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 996
    :cond_4
    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 997
    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v1, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1016
    :catch_1
    move-exception v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1018
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in sending Request"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 999
    :cond_5
    :try_start_1
    const-string v3, "MODIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1000
    const-string v3, "REFRESH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1001
    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V

    .line 1002
    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v1, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private validateToken()V
    .locals 2

    .prologue
    .line 2139
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into validateToken() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    .line 2142
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    .line 2143
    return-void
.end method

.method private verifyDevice()V
    .locals 21

    .prologue
    .line 346
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Into verifyDevice() method"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v13, -0x1

    .line 349
    .local v13, responseStatus:I
    const/4 v14, 0x0

    .line 350
    .local v14, responseString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 352
    .local v6, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "validateToken"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 355
    .local v8, isValidateToken:Z
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Is ValidateToken :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 357
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "MDN is NULL or empty"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-nez v8, :cond_0

    .line 360
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080581

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PIN_KEY"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 369
    .local v11, pin:Ljava/lang/String;
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PIN :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, mdnPIN:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, encodedMDN:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v7, hMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sncBasic2 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const/4 v15, 0x0

    .line 380
    .local v15, responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-object/from16 v18, v0

    const-string v19, "/snc/user/authTwo/verifyDevice"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v12

    .line 382
    .local v12, response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    if-eqz v12, :cond_3

    .line 383
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v13

    .line 384
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    .line 386
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 388
    new-instance v16, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    .end local v15           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .local v16, responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :try_start_1
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v2

    .line 392
    .local v2, bRet:Z
    if-nez v2, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f080583

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    move-object/from16 v15, v16

    .line 418
    .end local v2           #bRet:Z
    .end local v16           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v15       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :cond_2
    :goto_1
    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 435
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 436
    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 439
    :cond_4
    if-nez v8, :cond_8

    .line 440
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 394
    .end local v15           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v2       #bRet:Z
    .restart local v16       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :cond_5
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v13, v0, :cond_6

    .line 396
    const/4 v13, 0x0

    .line 397
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v6

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 400
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v18, "ProvisioningState"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v18, "isRegistered"

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->isRegistered()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sncAvailableAccounts.xml"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 409
    .local v10, os:Ljava/io/OutputStream;
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 410
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->checkToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #os:Ljava/io/OutputStream;
    :cond_6
    move-object/from16 v15, v16

    .end local v16           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v15       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    goto/16 :goto_1

    .line 422
    .end local v2           #bRet:Z
    :cond_7
    if-eqz v15, :cond_3

    :try_start_4
    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 423
    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "error_code"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 425
    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "error_text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    goto/16 :goto_2

    .line 442
    :cond_8
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    .line 444
    :cond_9
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    .line 429
    .end local v12           #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    :catch_0
    move-exception v17

    .line 430
    .local v17, ste:Lcom/android/emailcommon/mail/MessagingException;
    :goto_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 435
    if-eqz v6, :cond_a

    .line 436
    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 439
    :cond_a
    if-nez v8, :cond_b

    .line 440
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 442
    :cond_b
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    .line 444
    :cond_c
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    .line 431
    .end local v17           #ste:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v3

    .line 432
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Error in sending Request"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    if-eqz v6, :cond_d

    .line 436
    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 439
    :cond_d
    if-nez v8, :cond_e

    .line 440
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 442
    :cond_e
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    .line 444
    :cond_f
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    .line 435
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v6, :cond_10

    .line 436
    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    .line 439
    :cond_10
    if-nez v8, :cond_12

    .line 440
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 446
    :cond_11
    :goto_6
    throw v18

    .line 442
    :cond_12
    if-eqz v13, :cond_11

    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v13, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v19, v0

    if-gez v19, :cond_11

    .line 444
    :cond_13
    sget-object v19, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v20, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    .line 446
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_6

    .line 435
    .end local v15           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v12       #response:Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .restart local v16       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :catchall_1
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v15       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    goto :goto_5

    .line 431
    .end local v15           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v16       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :catch_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v15       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    goto/16 :goto_4

    .line 429
    .end local v15           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v16       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    :catch_3
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    .restart local v15       #responseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;
    goto/16 :goto_3
.end method


# virtual methods
.method public getMDN()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2180
    .line 2182
    sget-boolean v0, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-eqz v0, :cond_1

    .line 2183
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getTestMDN()Ljava/lang/String;

    move-result-object v0

    .line 2212
    :cond_0
    :goto_0
    return-object v0

    .line 2185
    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2187
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2189
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "MDN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cached MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2194
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2196
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SIM Card is Changed"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    move-object v0, v1

    .line 2198
    goto :goto_0

    .line 2200
    :cond_2
    if-nez v0, :cond_3

    .line 2202
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2203
    const-string v1, "MDN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    .line 2205
    goto :goto_0

    .line 2207
    :cond_3
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SIM Card is removed"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    move-object v0, v1

    .line 2209
    goto :goto_0
.end method

.method public getTags(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1618
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into getTags() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/4 v1, -0x1

    .line 1624
    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1626
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "MDN is NULL or empty"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v6, 0x7f080581

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    .line 1689
    :goto_0
    return-void

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "AUTH_TOKEN"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1637
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1639
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1640
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v6, "/snc/user/authThree/tags"

    invoke-virtual {v0, v6, v2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v6

    .line 1646
    if-eqz v6, :cond_6

    .line 1647
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1648
    :try_start_1
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 1651
    :try_start_2
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1653
    new-instance v0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;-><init>()V

    .line 1654
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTagsResponseXML([BLcom/android/email/syncnconnect/vo/GetTagsResponseVO;)Z

    move-result v7

    .line 1657
    if-nez v7, :cond_2

    .line 1658
    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v7, 0x7f080583

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1665
    :cond_1
    :goto_1
    const/16 v6, 0x191

    if-ne v2, v6, :cond_3

    iget v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v6, :cond_3

    .line 1667
    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 1669
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    .line 1670
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v6, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v6}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 1672
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    .line 1686
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    goto/16 :goto_0

    .line 1659
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 1661
    const/4 v2, 0x0

    .line 1662
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getTagList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 1673
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1674
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1676
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "error_text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_2

    .line 1680
    :catch_0
    move-exception v0

    move-object v2, v5

    .line 1681
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    .line 1686
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    .line 1682
    :catch_1
    move-exception v0

    move-object v2, v5

    .line 1683
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1684
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Error in sending Request"

    invoke-static {v0, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1686
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v2, v5

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    throw v6

    :catchall_1
    move-exception v0

    move-object v6, v0

    move v1, v2

    move-object v2, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v0

    goto :goto_6

    .line 1682
    :catch_2
    move-exception v0

    move v1, v2

    move-object v2, v5

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_5

    .line 1680
    :catch_4
    move-exception v0

    move v1, v2

    move-object v2, v5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_4

    :cond_4
    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto/16 :goto_2

    :cond_5
    move-object v0, v5

    goto/16 :goto_1

    :cond_6
    move-object v2, v5

    goto/16 :goto_2
.end method

.method public final getTestMDN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "MDN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    if-nez v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2221
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2223
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2224
    const-string v2, "MDN"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2228
    :cond_0
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test MDN :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 101
    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Request Queue Thread started"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v1

    .line 104
    .local v1, reqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;
    :goto_0
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->get()Lcom/android/email/syncnconnect/service/Request;

    move-result-object v0

    .line 105
    .local v0, req:Lcom/android/email/syncnconnect/service/Request;
    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->stopService()V

    .line 120
    return-void

    .line 108
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    .line 112
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v2, v3, :cond_1

    .line 113
    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    .line 116
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->processRequest(Lcom/android/email/syncnconnect/service/Request;)V

    goto :goto_0
.end method
