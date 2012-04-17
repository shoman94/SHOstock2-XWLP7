.class public Lcom/android/mms/ui/ConfirmRateLimitActivity;
.super Landroid/app/Activity;
.source "ConfirmRateLimitActivity.java"


# instance fields
.field private mCreateTime:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConfirmRateLimitActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    return-void
.end method

.method private doAnswer(Z)V
    .locals 2
    .parameter "answer"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "answer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->finish()V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->requestWindowFeature(I)Z

    .line 51
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->setContentView(I)V

    .line 53
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Lcom/android/mms/ui/ConfirmRateLimitActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$1;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 61
    .restart local v0       #button:Landroid/widget/Button;
    new-instance v1, Lcom/android/mms/ui/ConfirmRateLimitActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$2;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v1, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mCreateTime:J

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-wide v2, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mCreateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4c2c

    add-long v0, v2, v4

    .line 85
    .local v0, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 86
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
