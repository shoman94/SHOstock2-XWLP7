.class public Lcom/android/email/syncnconnect/utils/SncServerSettings;
.super Ljava/lang/Object;
.source "SncServerSettings.java"


# static fields
.field public static final IMAP_PORT:I

.field public static final IMAP_VIP:Ljava/lang/String;

.field public static final SMTP_AUTH_FLAGS:Ljava/lang/String;

.field public static final SMTP_VIP:Ljava/lang/String;

.field public static final useTestServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    sput-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    .line 18
    sget-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    if-eqz v0, :cond_0

    const-string v0, "162.115.235.241"

    :goto_0
    sput-object v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_VIP:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e1

    :goto_1
    sput v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_PORT:I

    .line 29
    sget-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    if-eqz v0, :cond_2

    const-string v0, "162.115.235.244"

    :goto_2
    sput-object v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_VIP:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_3
    sput-object v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_AUTH_FLAGS:Ljava/lang/String;

    return-void

    .line 18
    :cond_0
    const-string v0, "Imap.vzw.net"

    goto :goto_0

    .line 25
    :cond_1
    const/16 v0, 0xa7a

    goto :goto_1

    .line 29
    :cond_2
    const-string v0, "Smtp.vzw.net"

    goto :goto_2

    .line 31
    :cond_3
    const-string v0, "+ssl+trustallcerts"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpStatus()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "\nSNC Statistics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Http Server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n SMTP Server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->getSenderUri(Landroid/content/Context;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n IMAP Server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/SncServerSettings;->getStoreUri(Landroid/content/Context;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "\n SMS Timeout: 70000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "SncServerSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->dumpStats()V

    .line 81
    return-void
.end method

.method public static getSenderUri(Landroid/content/Context;)Ljava/net/URI;
    .locals 10
    .parameter "context"

    .prologue
    .line 57
    const/4 v9, 0x0

    .line 59
    .local v9, uri:Ljava/net/URI;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smtp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_AUTH_FLAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/email/syncnconnect/utils/SncServerSettings;->SMTP_VIP:Ljava/lang/String;

    const/16 v4, 0x24b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    :goto_0
    return-object v0

    .line 62
    .end local v0           #uri:Ljava/net/URI;
    .restart local v9       #uri:Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 63
    .local v8, e:Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 64
    const-string v1, "SncServerSettings"

    const-string v2, "Unable to get the Sender Uri"

    invoke-static {v1, v8, v2}, Lcom/android/email/EmailLog;->assertException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v0, v9

    .end local v9           #uri:Ljava/net/URI;
    .restart local v0       #uri:Ljava/net/URI;
    goto :goto_0
.end method

.method public static getStoreUri(Landroid/content/Context;)Ljava/net/URI;
    .locals 10
    .parameter "context"

    .prologue
    .line 44
    const/4 v9, 0x0

    .line 46
    .local v9, uri:Ljava/net/URI;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "snc+ssl+trustallcerts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_VIP:Ljava/lang/String;

    sget v4, Lcom/android/email/syncnconnect/utils/SncServerSettings;->IMAP_PORT:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    :goto_0
    return-object v0

    .line 49
    .end local v0           #uri:Ljava/net/URI;
    .restart local v9       #uri:Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 50
    .local v8, e:Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v9

    .end local v9           #uri:Ljava/net/URI;
    .restart local v0       #uri:Ljava/net/URI;
    goto :goto_0
.end method
