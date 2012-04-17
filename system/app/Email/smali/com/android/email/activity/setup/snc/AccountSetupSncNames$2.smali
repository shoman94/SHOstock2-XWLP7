.class Lcom/android/email/activity/setup/snc/AccountSetupSncNames$2;
.super Ljava/lang/Object;
.source "AccountSetupSncNames.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->showHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$2;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 239
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$2;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    .line 240
    return-void
.end method
