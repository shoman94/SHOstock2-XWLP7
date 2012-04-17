.class Lcom/seven/Z7/app/Z7AppBaseActivity$6;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$6;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iput p2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$6;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 325
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$6;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #calls: Lcom/seven/Z7/app/Z7AppBaseActivity;->changePrefToBasicConnector()V
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$300(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    .line 326
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$6;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->negativeActionForDialog(I)V

    .line 327
    return-void
.end method
