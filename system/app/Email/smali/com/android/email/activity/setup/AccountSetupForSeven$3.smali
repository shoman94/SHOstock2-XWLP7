.class Lcom/android/email/activity/setup/AccountSetupForSeven$3;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->dismissDialog(I)V

    .line 614
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 615
    return-void
.end method
