.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6$1;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    .line 546
    return-void
.end method
