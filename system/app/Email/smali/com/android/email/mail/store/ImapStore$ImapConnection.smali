.class Lcom/android/email/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapConnection"
.end annotation


# instance fields
.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field private mTransport:Lcom/android/email/mail/Transport;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .locals 2
    .parameter

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2083
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    return-object v0
.end method

.method private createParser()V
    .locals 3

    .prologue
    .line 2179
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 2180
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 2181
    return-void
.end method

.method private doGetNamespace(Z)V
    .locals 11
    .parameter "hasNamespaceCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2335
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v7, v7, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 2339
    .local v6, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string v7, "NAMESPACE"

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2350
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2351
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v7, "NAMESPACE"

    invoke-virtual {v5, v9, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2352
    invoke-virtual {v5, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 2353
    .local v3, namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3, v9}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 2354
    .local v2, namespace:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v2, v9}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2355
    .local v4, namespaceString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2356
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 2357
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    goto :goto_1

    .line 2340
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #namespace:Lcom/android/email/mail/store/imap/ImapList;
    .end local v3           #namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #namespaceString:Ljava/lang/String;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 2342
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 2343
    const-string v7, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2362
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v6           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 2345
    .restart local v6       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private doGetPathSeparator()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2392
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v4, v4, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v4, v4, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2396
    .local v3, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 2407
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2408
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v4, 0x0

    const-string v5, "LIST"

    invoke-virtual {v2, v4, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2409
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    goto :goto_1

    .line 2397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 2399
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2400
    const-string v4, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2413
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v3           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 2402
    .restart local v3       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private doLogin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 2372
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/mail/store/ImapStore;->access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2382
    return-void

    .line 2373
    :catch_0
    move-exception v0

    .line 2374
    .local v0, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2375
    const-string v2, "Email"

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_0
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2379
    .end local v0           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v1

    .line 2380
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doSendId(ZLjava/lang/String;)V
    .locals 6
    .parameter "hasIdCapability"
    .parameter "capabilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2288
    if-nez p1, :cond_1

    .line 2324
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$300(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2293
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".secureserver.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2297
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$500(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/mail/store/ImapStore;->access$600(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, p2}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2299
    .local v2, mUserAgent:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2300
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/email/mail/store/ImapStore;->access$702(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2307
    :cond_2
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2309
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2310
    :catch_0
    move-exception v1

    .line 2312
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2313
    const-string v3, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2315
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 2
    .parameter "hasStartTlsCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2423
    if-eqz p1, :cond_0

    .line 2425
    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2427
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 2428
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 2429
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 2431
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2439
    :goto_0
    return-object v0

    .line 2433
    :cond_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2434
    const-string v0, "Email"

    const-string v1, "TLS not supported but required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 2439
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2266
    const/4 v0, 0x0

    .line 2267
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v3, "CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2268
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string v4, "CAPABILITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2269
    move-object v0, v2

    .line 2273
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    if-nez v0, :cond_2

    .line 2274
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2276
    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    .line 2166
    const-string v0, "Email:ImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT@CONN closed the connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 2168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 2170
    :cond_0
    return-void
.end method

.method public destroyResponses()V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 2187
    :cond_0
    return-void
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2241
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2242
    .local v3, tag:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2245
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2246
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 2251
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2253
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2254
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2255
    .local v4, toString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 2257
    new-instance v5, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v5, v4, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 2248
    .end local v0           #alert:Ljava/lang/String;
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v4           #toString:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .restart local v1       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_0

    .line 2259
    :cond_2
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logLastDiscourse()V
    .locals 3

    .prologue
    .line 2444
    const-string v0, "Email:ImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Most Recent commands of this connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 2446
    return-void
.end method

.method public open()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2087
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2093
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v8, :cond_1

    .line 2094
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;
    invoke-static {v8}, Lcom/android/email/mail/store/ImapStore;->access$300(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->newInstanceWithConfiguration()Lcom/android/email/mail/Transport;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 2097
    :cond_1
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->open()V

    .line 2098
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v9, 0xea60

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 2100
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 2103
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2104
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2110
    :goto_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2112
    .local v0, capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v8, "STARTTLS"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 2115
    .local v5, hasStartTlsCapability:Z
    invoke-direct {p0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v7

    .line 2116
    .local v7, newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    if-eqz v7, :cond_2

    .line 2117
    move-object v0, v7

    .line 2126
    :cond_2
    const-string v8, "ID"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 2127
    .local v3, hasIdCapability:Z
    const-string v8, "NAMESPACE"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 2128
    .local v4, hasNamespaceCapability:Z
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, capabilityString:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doSendId(ZLjava/lang/String;)V

    .line 2134
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doLogin()V

    .line 2137
    invoke-direct {p0, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doGetNamespace(Z)V

    .line 2140
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doGetPathSeparator()V

    .line 2142
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v8}, Lcom/android/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2160
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_0

    .line 2106
    .end local v0           #capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v1           #capabilityString:Ljava/lang/String;
    .end local v3           #hasIdCapability:Z
    .end local v4           #hasNamespaceCapability:Z
    .end local v5           #hasStartTlsCapability:Z
    .end local v7           #newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2143
    :catch_0
    move-exception v2

    .line 2144
    .local v2, e:Ljavax/net/ssl/SSLException;
    :try_start_2
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 2145
    const-string v8, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_4
    new-instance v8, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2160
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v8

    .line 2148
    :catch_1
    move-exception v6

    .line 2155
    .local v6, ioe:Ljava/io/IOException;
    :try_start_3
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 2156
    const-string v8, "Email"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_5
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 2218
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2219
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2220
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_1

    const-string v2, "[IMAP command redacted]"

    :goto_0
    invoke-interface {v3, v0, v2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 2222
    return-object v1

    .line 2220
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendContinuationCommand(Ljava/lang/String;Z)V
    .locals 2
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 2229
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_1

    const-string v0, "[IMAP command redacted]"

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string p1, "[IMAP command redacted]"

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 2231
    return-void

    .line 2229
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
