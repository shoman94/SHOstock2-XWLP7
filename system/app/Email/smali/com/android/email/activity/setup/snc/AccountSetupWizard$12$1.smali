.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$12$1;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$12$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupWizard$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1164
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1165
    return-void
.end method
