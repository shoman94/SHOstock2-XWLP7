.class Lcom/seven/Z7/app/Z7AppBaseActivity$17$2;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 791
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$2;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 794
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 796
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17$2;->this$1:Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->finish()V

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
