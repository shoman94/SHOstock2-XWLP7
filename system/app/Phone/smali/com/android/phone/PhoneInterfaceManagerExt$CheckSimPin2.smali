.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPin2"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 473
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mDone:Z

    .line 474
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mResult:Z

    .line 483
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 484
    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mResult:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPin2(Ljava/lang/String;)Z
    .locals 4
    .parameter "pin2"

    .prologue
    .line 515
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 517
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 515
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 522
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 526
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 528
    :try_start_4
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 530
    :catch_1
    move-exception v1

    .line 532
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 535
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mHandler:Landroid/os/Handler;

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 509
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
