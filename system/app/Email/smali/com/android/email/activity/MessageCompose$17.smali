.class Lcom/android/email/activity/MessageCompose$17;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 13
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2525
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2526
    .local v9, string:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 2527
    const/4 v11, 0x0

    .line 2638
    :goto_0
    return-object v11

    .line 2536
    :cond_0
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v10

    .line 2539
    .local v10, toEditViewFocused:Z
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v6

    .line 2542
    .local v6, ccEditViewFocused:Z
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v5

    .line 2551
    .local v5, bccEditViewFocused:Z
    sub-int v11, p6, p5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const-string v11, ";"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2552
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3208(Lcom/android/email/activity/MessageCompose;)I

    .line 2557
    :goto_1
    sub-int v11, p3, p6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    move/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2558
    const/4 v11, 0x0

    move/from16 v0, p6

    invoke-interface {p1, v11, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_0

    .line 2554
    :cond_1
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3202(Lcom/android/email/activity/MessageCompose;I)I

    goto :goto_1

    .line 2559
    :cond_2
    if-lez p5, :cond_6

    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_3

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3200(Lcom/android/email/activity/MessageCompose;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 2565
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ";"

    add-int/lit8 v12, p5, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    const-string v11, ";"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2575
    :cond_5
    if-eqz v10, :cond_8

    .line 2576
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3300(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2588
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_c

    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$3600(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 2589
    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 2590
    .local v3, address:[Lcom/android/emailcommon/mail/Address;
    move-object v4, v3

    .local v4, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v8, :cond_c

    aget-object v2, v4, v7

    .line 2591
    .local v2, addr:Lcom/android/emailcommon/mail/Address;
    if-eqz v10, :cond_a

    .line 2600
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 2601
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2602
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2590
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2577
    .end local v2           #addr:Lcom/android/emailcommon/mail/Address;
    .end local v3           #address:[Lcom/android/emailcommon/mail/Address;
    .end local v4           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_8
    if-eqz v6, :cond_9

    .line 2579
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_2

    .line 2580
    :cond_9
    if-eqz v5, :cond_6

    .line 2582
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$3500(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_2

    .line 2604
    .restart local v2       #addr:Lcom/android/emailcommon/mail/Address;
    .restart local v3       #address:[Lcom/android/emailcommon/mail/Address;
    .restart local v4       #arr$:[Lcom/android/emailcommon/mail/Address;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_a
    if-eqz v6, :cond_b

    .line 2614
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 2615
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2616
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2618
    :cond_b
    if-eqz v5, :cond_7

    .line 2628
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 2629
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2630
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2638
    .end local v2           #addr:Lcom/android/emailcommon/mail/Address;
    .end local v3           #address:[Lcom/android/emailcommon/mail/Address;
    .end local v4           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
