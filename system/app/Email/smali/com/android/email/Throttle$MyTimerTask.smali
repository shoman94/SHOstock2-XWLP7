.class Lcom/android/email/Throttle$MyTimerTask;
.super Ljava/util/TimerTask;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Throttle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/email/Throttle;


# direct methods
.method private constructor <init>(Lcom/android/email/Throttle;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/email/Throttle$MyTimerTask;->this$0:Lcom/android/email/Throttle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Throttle;Lcom/android/email/Throttle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/email/Throttle$MyTimerTask;-><init>(Lcom/android/email/Throttle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/Throttle$MyTimerTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/email/Throttle$MyTimerTask;->mCanceled:Z

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/Throttle$MyTimerTask;->mCanceled:Z

    .line 166
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/email/Throttle$MyTimerTask;->this$0:Lcom/android/email/Throttle;

    #getter for: Lcom/android/email/Throttle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/Throttle;->access$200(Lcom/android/email/Throttle;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/android/email/Throttle$MyTimerTask;Lcom/android/email/Throttle$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method
