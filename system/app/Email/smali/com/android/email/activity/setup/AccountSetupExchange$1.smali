.class Lcom/android/email/activity/setup/AccountSetupExchange$1;
.super Ljava/lang/Object;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->dismissDialog(I)V

    .line 262
    return-void
.end method
