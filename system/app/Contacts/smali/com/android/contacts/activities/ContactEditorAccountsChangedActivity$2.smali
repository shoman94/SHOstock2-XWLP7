.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-static {}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$200()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorUtils;->createAddWritableAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
