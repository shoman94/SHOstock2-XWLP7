.class Lcom/seven/Z7/app/ErrorActivity$1;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/ErrorActivity;->getErrorDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/ErrorActivity;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/ErrorActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/seven/Z7/app/ErrorActivity$1;->this$0:Lcom/seven/Z7/app/ErrorActivity;

    iput p2, p0, Lcom/seven/Z7/app/ErrorActivity$1;->val$action:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget v0, p0, Lcom/seven/Z7/app/ErrorActivity$1;->val$action:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/seven/Z7/shared/ANSharedCommon;->forceExit()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/app/ErrorActivity$1;->this$0:Lcom/seven/Z7/app/ErrorActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/ErrorActivity;->finish()V

    goto :goto_0
.end method
