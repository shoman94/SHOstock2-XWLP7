.class Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;
.super Ljava/lang/Object;
.source "ProtocolAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/adapter/ProtocolAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field mProvider:I

.field mTransport:I

.field mType:I

.field mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/adapter/ProtocolAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter$AccountInfo;-><init>()V

    return-void
.end method
