.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$8;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$8;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    #setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2302(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 3378
    return-void
.end method
