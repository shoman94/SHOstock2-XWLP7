.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"

# interfaces
.implements Lcom/android/email/mail/Transport;


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private mConnectionSecurity:I

.field private mDebugLabel:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mTrustCertificates:Z

.field private mUserInfoParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "debugLabel"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 273
    .local v1, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 276
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    .line 277
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_0
    sget-object v2, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return v0
.end method

.method public canTrySslSecurity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 328
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 329
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 330
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_2

    .line 319
    :catch_1
    move-exception v0

    goto :goto_1

    .line 314
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    const v1, 0xffff

    .line 138
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    if-le v0, v1, :cond_0

    .line 139
    iput v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 140
    :cond_0
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    return v0
.end method

.method public getUserInfoParts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstanceWithConfiguration()Lcom/android/email/mail/Transport;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, newObject:Lcom/android/email/mail/transport/MailTransport;
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 106
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 107
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 110
    :cond_0
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 111
    iget-boolean v1, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    iput-boolean v1, v0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 112
    return-object v0
.end method

.method public open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 169
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 170
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v3, socketAddress:Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 181
    :goto_0
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v6, 0x61a8

    invoke-virtual {v5, v3, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v5

    if-nez v5, :cond_1

    .line 185
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 187
    :cond_1
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 188
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x200

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 189
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v6, 0xea60

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 190
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open :: socket open"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 179
    :cond_2
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 192
    .end local v3           #socketAddress:Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 194
    const-string v5, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    new-instance v5, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 197
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v4

    .line 198
    .local v4, toe:Ljava/net/SocketTimeoutException;
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 199
    const-string v5, "Email"

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 202
    .end local v4           #toe:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 203
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 204
    const-string v5, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 209
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 210
    .local v2, npe:Ljava/lang/NullPointerException;
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 211
    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_6
    const-string v5, "Email"

    const-string v6, "socket open NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 364
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 367
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 391
    :cond_0
    :goto_0
    return-object v2

    .line 371
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v7, :cond_2

    .line 372
    int-to-char v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 374
    int-to-char v5, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 380
    :cond_2
    if-ne v0, v7, :cond_3

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 381
    const-string v5, "Email"

    const-string v6, "End of stream reached while trying to read line."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, ret:Ljava/lang/String;
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 385
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    .line 389
    goto :goto_0

    .line 377
    .end local v2           #ret:Ljava/lang/String;
    :cond_5
    int-to-char v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public reopenTls()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 229
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 230
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 231
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 238
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v2

    .line 239
    .local v2, toe:Ljava/net/SocketTimeoutException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 240
    const-string v3, "Email"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 243
    .end local v2           #toe:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 244
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 245
    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public setSecurity(IZ)V
    .locals 0
    .parameter "connectionSecurity"
    .parameter "trustAllCertificates"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 145
    iput-boolean p2, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 146
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 300
    return-void
.end method

.method public setUri(Ljava/net/URI;I)V
    .locals 3
    .parameter "uri"
    .parameter "defaultPort"

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 119
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 127
    :cond_1
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 345
    if-eqz p2, :cond_1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_1

    .line 346
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 353
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 354
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 355
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 356
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 357
    return-void

    .line 348
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
