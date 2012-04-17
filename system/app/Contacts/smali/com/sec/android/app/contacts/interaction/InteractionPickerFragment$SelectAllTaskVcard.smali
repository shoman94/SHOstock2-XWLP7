.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;
.super Landroid/os/AsyncTask;
.source "InteractionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskVcard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSelectAllCheckedVcard(Z)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1153
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "success"

    .prologue
    .line 1162
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1164
    .local v0, mSuccess:Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->onSelectedInfoChanged()V

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1167
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->showMaxCountAlertDialog()V
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V

    .line 1170
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1171
    .local v1, timer:Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1184
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1153
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
