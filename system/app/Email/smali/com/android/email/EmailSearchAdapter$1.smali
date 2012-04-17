.class Lcom/android/email/EmailSearchAdapter$1;
.super Ljava/lang/Object;
.source "EmailSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/EmailSearchAdapter;->search(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/EmailSearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/EmailSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0}, Lcom/android/email/EmailSearchAdapter;->access$000(Lcom/android/email/EmailSearchAdapter;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/EmailSearchAdapter;->access$000(Lcom/android/email/EmailSearchAdapter;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mIdStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/EmailSearchAdapter;->access$100(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/email/EmailSearchAdapter;->access$200(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mFreeText:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/EmailSearchAdapter;->access$300(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mGreaterThanDateStr:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/EmailSearchAdapter;->access$400(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mLessThanDateStr:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/email/EmailSearchAdapter;->access$500(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mOptionsDeepTraversalStr:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/email/EmailSearchAdapter;->access$600(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/email/EmailSearchAdapter$1;->this$0:Lcom/android/email/EmailSearchAdapter;

    #getter for: Lcom/android/email/EmailSearchAdapter;->mConversationId:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/EmailSearchAdapter;->access$700(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v0 .. v11}, Lcom/android/email/adapter/ProtocolAdapter;->searchOnServer(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method
