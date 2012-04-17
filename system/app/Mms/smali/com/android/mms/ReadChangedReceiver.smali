.class public Lcom/android/mms/ReadChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReadChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ReadChangedReceiver$1;,
        Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;
    }
.end annotation


# static fields
.field private static final handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;-><init>(Lcom/android/mms/ReadChangedReceiver$1;)V

    sput-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 23
    const-string v0, "Mms/ReadChangedReceiver"

    const-string v1, "onReceive()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    invoke-virtual {v0, v3}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;->removeMessages(I)V

    .line 27
    sget-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    return-void
.end method
