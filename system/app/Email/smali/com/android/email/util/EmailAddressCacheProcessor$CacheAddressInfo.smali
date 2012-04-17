.class public Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/util/EmailAddressCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheAddressInfo"
.end annotation


# instance fields
.field public mEmailAddress:Ljava/lang/String;

.field public mOperationType:I

.field public mSourceType:I

.field public mUsageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "email"
    .parameter "sourceType"
    .parameter "opType"
    .parameter "usageCount"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mEmailAddress:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mSourceType:I

    .line 62
    iput p3, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mOperationType:I

    .line 63
    iput p4, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    .line 65
    return-void
.end method
