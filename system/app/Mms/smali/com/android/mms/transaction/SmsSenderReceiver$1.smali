.class Lcom/android/mms/transaction/SmsSenderReceiver$1;
.super Ljava/lang/Thread;
.source "SmsSenderReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsSenderReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsSenderReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsSenderReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/transaction/SmsSenderReceiver$1;->this$0:Lcom/android/mms/transaction/SmsSenderReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSenderReceiver$1;->this$0:Lcom/android/mms/transaction/SmsSenderReceiver;

    #calls: Lcom/android/mms/transaction/SmsSenderReceiver;->sendMessage()V
    invoke-static {v0}, Lcom/android/mms/transaction/SmsSenderReceiver;->access$000(Lcom/android/mms/transaction/SmsSenderReceiver;)V

    .line 35
    return-void
.end method
