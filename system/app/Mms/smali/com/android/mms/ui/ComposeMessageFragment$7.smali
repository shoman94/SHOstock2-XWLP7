.class Lcom/android/mms/ui/ComposeMessageFragment$7;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V
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
    .line 1279
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$7;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1283
    return-void
.end method
