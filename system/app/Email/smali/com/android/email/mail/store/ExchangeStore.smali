.class public Lcom/android/email/mail/store/ExchangeStore;
.super Lcom/android/email/mail/Store;
.source "ExchangeStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    }
.end annotation


# instance fields
.field private final mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

.field private final mUri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V
    .locals 3
    .parameter "_uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 78
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-static {v1, p2}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->getInstance(Ljava/net/URI;Landroid/content/Context;)Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Invalid uri for ExchangeStore"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/android/email/mail/store/ExchangeStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/mail/store/ExchangeStore;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->checkSettings(Ljava/net/URI;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .parameter "name"

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getExchangeSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 301
    return-void
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "orgName"
    .parameter "newName"

    .prologue
    .line 297
    return-void
.end method

.method public requireCopyMessageToSentFolder()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public requireStructurePrefetch()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
