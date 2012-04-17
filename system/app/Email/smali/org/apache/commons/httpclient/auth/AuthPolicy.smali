.class public abstract Lorg/apache/commons/httpclient/auth/AuthPolicy;
.super Ljava/lang/Object;
.source "AuthPolicy.java"


# static fields
.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field private static final SCHEMES:Ljava/util/HashMap;

.field private static final SCHEME_LIST:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    .line 137
    const-string v0, "NTLM"

    const-class v1, Lorg/apache/commons/httpclient/auth/NTLMScheme;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 139
    const-string v0, "Digest"

    const-class v1, Lorg/apache/commons/httpclient/auth/DigestScheme;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 141
    const-string v0, "Basic"

    const-class v1, Lorg/apache/commons/httpclient/auth/BasicScheme;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    const-class v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .parameter "id"
    .parameter "clazz"

    .prologue
    .line 169
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 171
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 177
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authentication scheme class may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit v1

    return-void
.end method
