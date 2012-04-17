.class Lcom/seven/Z7/app/Z7AppBaseActivity$2;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$2;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$2;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->showingPopupDialog:Z
    invoke-static {v0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$002(Lcom/seven/Z7/app/Z7AppBaseActivity;Z)Z

    .line 119
    return-void
.end method
