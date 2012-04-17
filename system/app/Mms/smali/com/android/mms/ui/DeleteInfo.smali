.class public Lcom/android/mms/ui/DeleteInfo;
.super Ljava/lang/Object;
.source "DeleteInfo.java"


# instance fields
.field public mLast:Z

.field public mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    .line 10
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .parameter "threadId"
    .parameter "last"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 14
    iput-boolean p3, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    .line 15
    return-void
.end method
