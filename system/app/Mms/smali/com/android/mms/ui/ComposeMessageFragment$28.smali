.class Lcom/android/mms/ui/ComposeMessageFragment$28;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimationPrepare(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5100()Ljava/lang/Runnable;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimation(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/Runnable;)V

    .line 3495
    return-void
.end method
