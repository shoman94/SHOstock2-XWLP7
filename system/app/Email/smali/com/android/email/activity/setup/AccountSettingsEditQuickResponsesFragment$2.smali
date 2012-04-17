.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 366
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$200()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/QuickResponse;

    .line 367
    .local v1, qr:Lcom/android/emailcommon/provider/QuickResponse;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/QuickResponse;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/QuickResponse;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    goto :goto_0

    .line 369
    .end local v1           #qr:Lcom/android/emailcommon/provider/QuickResponse;
    :cond_0
    return-void
.end method
