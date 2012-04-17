.class Lcom/android/contacts/activities/GroupEditorActivity$3;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupNotFound()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 203
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 208
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultIntent"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/activities/GroupEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 232
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #calls: Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V
    invoke-static {v1}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V

    .line 233
    return-void

    .line 223
    :cond_1
    if-eqz p2, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GroupInfo"

    const-string v2, "GroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$3;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
