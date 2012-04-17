.class Lcom/android/email/activity/MessageCompose$45;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 10495
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 10498
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$11302(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 10499
    return-void
.end method
