.class public Lcom/android/email/Throttle;
.super Ljava/lang/Object;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Throttle$1;,
        Lcom/android/email/Throttle$MyTimerTask;
    }
.end annotation


# static fields
.field private static TIMER:Ljava/util/Timer;


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mClock:Lcom/android/email/Clock;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEventTime:J

.field private final mMaxTimeout:I

.field private final mMinTimeout:I

.field private final mName:Ljava/lang/String;

.field private mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

.field private mTimeout:I

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/email/Throttle;->TIMER:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 6
    .parameter "name"
    .parameter "callback"
    .parameter "handler"

    .prologue
    .line 76
    const/16 v4, 0x96

    const/16 v5, 0x9c4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V
    .locals 8
    .parameter "name"
    .parameter "callback"
    .parameter "handler"
    .parameter "minTimeout"
    .parameter "maxTimeout"

    .prologue
    .line 81
    sget-object v6, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    sget-object v7, Lcom/android/email/Throttle;->TIMER:Ljava/util/Timer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/email/Clock;Ljava/util/Timer;)V

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/email/Clock;Ljava/util/Timer;)V
    .locals 1
    .parameter "name"
    .parameter "callback"
    .parameter "handler"
    .parameter "minTimeout"
    .parameter "maxTimeout"
    .parameter "clock"
    .parameter "timer"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-ge p5, p4, :cond_0

    .line 88
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/email/Throttle;->mName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/email/Throttle;->mCallback:Ljava/lang/Runnable;

    .line 92
    iput-object p6, p0, Lcom/android/email/Throttle;->mClock:Lcom/android/email/Clock;

    .line 93
    iput-object p7, p0, Lcom/android/email/Throttle;->mTimer:Ljava/util/Timer;

    .line 94
    iput-object p3, p0, Lcom/android/email/Throttle;->mHandler:Landroid/os/Handler;

    .line 95
    iput p4, p0, Lcom/android/email/Throttle;->mMinTimeout:I

    .line 96
    iput p5, p0, Lcom/android/email/Throttle;->mMaxTimeout:I

    .line 97
    iget v0, p0, Lcom/android/email/Throttle;->mMinTimeout:I

    iput v0, p0, Lcom/android/email/Throttle;->mTimeout:I

    .line 98
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/Throttle;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/Throttle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/Throttle;Lcom/android/email/Throttle$MyTimerTask;)Lcom/android/email/Throttle$MyTimerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/Throttle;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/Throttle;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isCallbackScheduled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelScheduledCallback()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    invoke-virtual {v0}, Lcom/android/email/Throttle$MyTimerTask;->cancel()Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    .line 115
    :cond_0
    return-void
.end method

.method getLastEventTimeForTest()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/android/email/Throttle;->mLastEventTime:J

    return-wide v0
.end method

.method getTimeoutForTest()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/email/Throttle;->mTimeout:I

    return v0
.end method

.method public onEvent()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/email/Throttle;->updateTimeout()V

    .line 141
    invoke-direct {p0}, Lcom/android/email/Throttle;->isCallbackScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/android/email/Throttle$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/Throttle$MyTimerTask;-><init>(Lcom/android/email/Throttle;Lcom/android/email/Throttle$1;)V

    iput-object v0, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    .line 148
    iget-object v0, p0, Lcom/android/email/Throttle;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/email/Throttle;->mRunningTimerTask:Lcom/android/email/Throttle$MyTimerTask;

    iget v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method updateTimeout()V
    .locals 6

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/email/Throttle;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v2}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    .line 119
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/email/Throttle;->mLastEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 120
    iget v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    .line 121
    iget v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    iget v3, p0, Lcom/android/email/Throttle;->mMaxTimeout:I

    if-lt v2, v3, :cond_0

    .line 122
    iget v2, p0, Lcom/android/email/Throttle;->mMaxTimeout:I

    iput v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    .line 132
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/android/email/Throttle;->mLastEventTime:J

    .line 133
    return-void

    .line 127
    :cond_1
    iget v2, p0, Lcom/android/email/Throttle;->mMinTimeout:I

    iput v2, p0, Lcom/android/email/Throttle;->mTimeout:I

    goto :goto_0
.end method
