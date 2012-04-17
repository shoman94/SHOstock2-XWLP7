.class public Lorg/apache/commons/httpclient/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 100
    const-class v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    .line 104
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 112
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java class path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operating system name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operating system architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 118
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operating system version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 122
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 124
    aget-object v2, v1, v0

    .line 133
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/Provider;->getVersion()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    sget-object v2, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 150
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v2, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 294
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 301
    new-instance v2, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 180
    if-nez p1, :cond_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Params may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 188
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerClass()Ljava/lang/Class;

    move-result-object v0

    .line 192
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/HttpConnectionManager;

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-nez v2, :cond_2

    .line 212
    new-instance v2, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 216
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v2, :cond_3

    .line 218
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 222
    :cond_3
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Error instantiating connection manager class, defaulting to SimpleHttpConnectionManager"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
