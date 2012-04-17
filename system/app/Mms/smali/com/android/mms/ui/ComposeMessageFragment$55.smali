.class Lcom/android/mms/ui/ComposeMessageFragment$55;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setInputFilterComposeForSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 5897
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

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
    .line 5907
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    .line 5908
    .local v5, inputSize:[I
    const/4 v10, 0x4

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 5909
    .local v8, size:[I
    const/4 v6, 0x0

    .line 5910
    .local v6, keep:I
    const/4 v7, 0x0

    .line 5913
    .local v7, septets:I
    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_1

    .line 5914
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5918
    .local v4, destString:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x3

    aget v10, v5, v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 5919
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v8

    .line 5924
    :goto_1
    const/4 v10, 0x2

    aget v6, v8, v10

    .line 5931
    const-string v10, "SMSCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMSlength : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5932
    const-string v10, "SMSCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMSinput  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5935
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 5936
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5937
    const-string v9, ""

    .line 5957
    :cond_0
    :goto_2
    return-object v9

    .line 5916
    .end local v4           #destString:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #destString:Ljava/lang/String;
    goto/16 :goto_0

    .line 5921
    :cond_2
    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v8

    goto/16 :goto_1

    .line 5938
    :cond_3
    sub-int v10, p3, p2

    if-lt v6, v10, :cond_5

    .line 5939
    const/4 v10, 0x1

    aget v10, v5, v10

    if-ge v6, v10, :cond_4

    .line 5940
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$55;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5941
    const-string v9, ""

    goto :goto_2

    .line 5943
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 5946
    :cond_5
    const/4 v9, 0x0

    .line 5947
    .local v9, subChar:Ljava/lang/CharSequence;
    move v2, v6

    .line 5949
    .local v2, decrKeep:I
    :goto_3
    add-int/lit8 v3, v2, -0x1

    .end local v2           #decrKeep:I
    .local v3, decrKeep:I
    add-int v10, p2, v2

    invoke-interface {p1, p2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 5951
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 5956
    :goto_4
    if-le v7, v6, :cond_0

    move v2, v3

    .end local v3           #decrKeep:I
    .restart local v2       #decrKeep:I
    goto :goto_3

    .line 5952
    .end local v2           #decrKeep:I
    .restart local v3       #decrKeep:I
    :catch_0
    move-exception v10

    goto :goto_4

    .line 5908
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
