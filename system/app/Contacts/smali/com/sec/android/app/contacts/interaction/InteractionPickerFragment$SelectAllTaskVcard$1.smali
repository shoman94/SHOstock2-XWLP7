.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1002(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$1102(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    .line 1178
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onPickerResult()V

    .line 1182
    :cond_0
    return-void
.end method
