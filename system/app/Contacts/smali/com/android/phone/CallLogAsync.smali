.class public Lcom/android/phone/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLogAsync$1;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/phone/CallLogAsync$AddCallTask;,
        Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;,
        Lcom/android/phone/CallLogAsync$AddCallArgs;
    }
.end annotation


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallLogAsync;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/phone/CallLogAsync;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    return-void
.end method

.method private assertUiThread()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    return-void
.end method
