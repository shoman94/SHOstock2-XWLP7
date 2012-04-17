.class Lcom/android/mms/ui/ComposeMessageFragment$10;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showInternationalSmsRoamGuardDialog()V
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
    .line 1354
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$10;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$10;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->sendSmsInInternationalRoaming(I)V

    .line 1357
    return-void
.end method
