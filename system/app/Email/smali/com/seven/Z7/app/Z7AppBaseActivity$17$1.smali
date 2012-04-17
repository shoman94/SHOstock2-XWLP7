.class Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity$17;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->val$listener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 788
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 789
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->finish()V

    .line 790
    return-void
.end method
