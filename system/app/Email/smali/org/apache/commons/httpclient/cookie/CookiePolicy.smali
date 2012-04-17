.class public abstract Lorg/apache/commons/httpclient/cookie/CookiePolicy;
.super Ljava/lang/Object;
.source "CookiePolicy.java"


# static fields
.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field private static SPECS:Ljava/util/Map;

.field private static defaultPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    .line 147
    const-string v0, "default"

    const-class v1, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 149
    const-string v0, "rfc2109"

    const-class v1, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 151
    const-string v0, "rfc2965"

    const-class v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 153
    const-string v0, "compatibility"

    const-class v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 155
    const-string v0, "netscape"

    const-class v1, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 157
    const-string v0, "ignoreCookies"

    const-class v1, Lorg/apache/commons/httpclient/cookie/IgnoreCookiesSpec;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V

    .line 200
    const/4 v0, 0x2

    sput v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->defaultPolicy:I

    .line 204
    const-class v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Id may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 280
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 284
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/cookie/CookieSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 286
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error initializing cookie spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 290
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cookie spec implemented by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be initialized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported cookie spec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 378
    :try_start_0
    const-string v1, "default"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_0
    return-object v1

    .line 380
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 382
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Default cookie policy is not registered"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 384
    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    goto :goto_0
.end method

.method public static registerCookieSpec(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter "id"
    .parameter "clazz"

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie spec class may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->SPECS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method
