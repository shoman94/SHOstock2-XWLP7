.class Lcom/android/contacts/activities/ContactEditorActivity$2;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    #calls: Lcom/android/contacts/activities/ContactEditorActivity;->hideSoftKeyboard()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)V

    .line 182
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    #getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    .line 183
    return-void
.end method
