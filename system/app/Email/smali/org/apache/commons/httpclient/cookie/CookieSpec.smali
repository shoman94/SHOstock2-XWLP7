.class public interface abstract Lorg/apache/commons/httpclient/cookie/CookieSpec;
.super Ljava/lang/Object;
.source "CookieSpec.java"


# static fields
.field public static final PATH_DELIM_CHAR:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "/"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lorg/apache/commons/httpclient/cookie/CookieSpec;->PATH_DELIM_CHAR:C

    return-void
.end method


# virtual methods
.method public abstract formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
.end method
