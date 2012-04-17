.class public Lorg/apache/harmony/misc/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static arc:I

.field private static os:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    .line 37
    sput v0, Lorg/apache/harmony/misc/SystemUtils;->arc:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOS()I
    .locals 4

    .prologue
    .line 45
    sget v1, Lorg/apache/harmony/misc/SystemUtils;->os:I

    if-nez v1, :cond_0

    .line 46
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, osname:Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 48
    const/4 v1, 0x1

    sput v1, Lorg/apache/harmony/misc/SystemUtils;->os:I

    .line 56
    :cond_0
    :goto_0
    sget v1, Lorg/apache/harmony/misc/SystemUtils;->os:I

    return v1

    .line 50
    :cond_1
    const-string v1, "lin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 51
    const/4 v1, 0x2

    sput v1, Lorg/apache/harmony/misc/SystemUtils;->os:I

    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, -0x1

    sput v1, Lorg/apache/harmony/misc/SystemUtils;->os:I

    goto :goto_0
.end method
