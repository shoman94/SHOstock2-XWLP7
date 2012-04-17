.class Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1$1;
.super Ljava/lang/Object;
.source "AccountSetupSncNames.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finish()V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->setResult(I)V

    .line 177
    return-void
.end method
