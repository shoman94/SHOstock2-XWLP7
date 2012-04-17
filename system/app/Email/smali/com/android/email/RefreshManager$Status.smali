.class Lcom/android/email/RefreshManager$Status;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Status"
.end annotation


# instance fields
.field private mIsRefreshRequested:Z

.field private mIsRefreshing:Z

.field private mLastRefreshTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastRefreshTime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    return-wide v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V
    .locals 2
    .parameter "exception"
    .parameter "progress"
    .parameter "clock"

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 148
    :cond_2
    iput-boolean v1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 150
    invoke-virtual {p3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    goto :goto_0
.end method

.method public onRefreshRequested()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 136
    return-void
.end method
