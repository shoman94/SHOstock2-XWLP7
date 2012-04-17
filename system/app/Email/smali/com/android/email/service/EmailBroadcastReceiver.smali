.class public Lcom/android/email/service/EmailBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-static {p1, p2}, Lcom/android/email/service/EmailBroadcastProcessorService;->processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    return-void
.end method
