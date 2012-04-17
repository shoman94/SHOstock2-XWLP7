.class Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SMSBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;

.field final synthetic val$newMailCount:I


# direct methods
.method constructor <init>(Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;->this$0:Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver;

    iput p2, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;->val$newMailCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget v1, p0, Lcom/android/email/syncnconnect/receiver/SMSBroadcastReceiver$1;->val$newMailCount:I

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendNewMailNotificationReceived(I)V

    .line 86
    return-void
.end method
