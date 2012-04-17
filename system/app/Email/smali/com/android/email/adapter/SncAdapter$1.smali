.class Lcom/android/email/adapter/SncAdapter$1;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->getAvailableAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$1;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 594
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$1;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mAvailableAccountResponse:Z
    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->access$100(Lcom/android/email/adapter/SncAdapter;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 595
    const-string v0, "SncAdapter"

    const-string v1, "Already response has been received for GetAvailableAccounts"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string v0, "SncAdapter"

    const-string v1, "Calling onGetPinSMSTimeout"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->onGetPinSMSTimeout()V

    goto :goto_0
.end method
