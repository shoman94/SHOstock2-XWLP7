.class Lcom/seven/Z7/app/AttachmentDetailsActivity$1;
.super Ljava/lang/Object;
.source "AttachmentDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/AttachmentDetailsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x3

    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    .line 242
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #calls: Lcom/seven/Z7/app/AttachmentDetailsActivity;->updateVisibleData()V
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$100(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V

    .line 244
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    const v9, 0x7f1000df

    invoke-virtual {v8, v9}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 245
    .local v3, pb:Landroid/widget/ProgressBar;
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    iget-wide v8, v8, Lcom/seven/Z7/app/AttachmentDetailsActivity;->offsetValue:J

    long-to-int v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 247
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-wide v4, v6

    .line 249
    .local v4, size:J
    :goto_0
    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 250
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide v4, v6

    .line 254
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x0

    .line 257
    .local v2, attachmentStatus:I
    :goto_2
    const/4 v8, 0x5

    if-eq v2, v8, :cond_2

    const/4 v8, 0x7

    if-eq v2, v8, :cond_2

    .line 258
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-wide v0, v6

    .line 261
    .local v0, aSize:J
    :goto_3
    cmp-long v8, v0, v6

    if-gtz v8, :cond_1

    .line 262
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move-wide v0, v6

    .line 266
    :cond_1
    :goto_4
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->dlInProgress:Z
    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$300(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 267
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #calls: Lcom/seven/Z7/app/AttachmentDetailsActivity;->downloadAttachment()V
    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$400(Lcom/seven/Z7/app/AttachmentDetailsActivity;)V

    .line 271
    .end local v0           #aSize:J
    :cond_2
    return-void

    .line 247
    .end local v2           #attachmentStatus:I
    .end local v4           #size:J
    :cond_3
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    .line 250
    .restart local v4       #size:J
    :cond_4
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_1

    .line 254
    :cond_5
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_2

    .line 258
    .restart local v2       #attachmentStatus:I
    :cond_6
    iget-object v8, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_3

    .line 262
    .restart local v0       #aSize:J
    :cond_7
    iget-object v6, p0, Lcom/seven/Z7/app/AttachmentDetailsActivity$1;->this$0:Lcom/seven/Z7/app/AttachmentDetailsActivity;

    #getter for: Lcom/seven/Z7/app/AttachmentDetailsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/seven/Z7/app/AttachmentDetailsActivity;->access$200(Lcom/seven/Z7/app/AttachmentDetailsActivity;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_4
.end method
