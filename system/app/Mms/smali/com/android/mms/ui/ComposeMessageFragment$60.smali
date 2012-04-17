.class Lcom/android/mms/ui/ComposeMessageFragment$60;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7146
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7148
    const-string v1, "Mms:app"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7149
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMA] onUpdate contact updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7151
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7152
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 7153
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    .line 7162
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 7163
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 7167
    :cond_1
    :goto_1
    return-void

    .line 7155
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 7164
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7165
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$60;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1
.end method
