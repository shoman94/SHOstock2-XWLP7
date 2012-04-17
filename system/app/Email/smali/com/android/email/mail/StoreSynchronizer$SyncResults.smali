.class public Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.super Ljava/lang/Object;
.source "StoreSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/StoreSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResults"
.end annotation


# instance fields
.field public mMessageFetched:I

.field public mNewMessages:I

.field public mReSync:Z

.field public mTotalMessages:I

.field public mUpdateAccountList:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "totalMessages"
    .parameter "newMessages"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    .line 75
    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    .line 76
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "totalMessages"
    .parameter "newMessages"
    .parameter "fetchedMessages"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    .line 94
    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    .line 95
    iput p3, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    .line 96
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 0
    .parameter "totalMessages"
    .parameter "newMessages"
    .parameter "reSync"
    .parameter "updateAccountList"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    .line 87
    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    .line 88
    iput-boolean p3, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    .line 89
    iput-boolean p4, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mUpdateAccountList:Z

    .line 90
    return-void
.end method
