.class Lcom/android/mms/ui/ComposeMessageFragment$26;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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
    .line 3427
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 3430
    return-void
.end method
