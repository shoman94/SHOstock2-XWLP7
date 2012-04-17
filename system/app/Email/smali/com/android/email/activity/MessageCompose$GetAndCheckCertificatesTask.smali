.class Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAndCheckCertificatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field private sendCanceled:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1
    .parameter

    .prologue
    .line 4668
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4668
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method

.method static synthetic access$7802(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4668
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4668
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 24
    .parameter "params"

    .prologue
    .line 4684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v20 .. v20}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    .line 4685
    .local v18, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v20 .. v20}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 4686
    .local v5, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v20 .. v20}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 4688
    .local v4, bcc:[Lcom/android/emailcommon/mail/Address;
    new-instance v20, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-direct/range {v20 .. v22}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    .line 4690
    .local v10, from:[Lcom/android/emailcommon/mail/Address;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [[Ljavax/mail/Address;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/smime/SMIMEHelper;->joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v3

    .line 4692
    .local v3, addresses:[Ljavax/mail/Address;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4694
    .local v16, recipientCertificates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v20 .. v20}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil;->getCertificates([Ljavax/mail/Address;JLandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/emailcommon/smime/CertificateUtilExcpetion; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 4702
    :goto_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4703
    .local v14, noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4704
    .local v19, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 4717
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 4718
    aget-object v20, v3, v12

    invoke-virtual/range {v20 .. v20}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4719
    .local v7, cur_address:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 4720
    const/4 v6, 0x0

    .line 4721
    .local v6, certfounded:Z
    const/4 v8, 0x0

    .line 4722
    .local v8, cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 4723
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    .line 4725
    .local v15, recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_1

    .line 4722
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4696
    .end local v6           #certfounded:Z
    .end local v7           #cur_address:Ljava/lang/String;
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v11           #i:I
    .end local v12           #j:I
    .end local v14           #noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v19           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :catch_0
    move-exception v9

    .line 4697
    .local v9, e:Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
    const-string v20, "MessageCompose"

    invoke-virtual {v9}, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->cancel(Z)Z

    goto :goto_0

    .line 4729
    .end local v9           #e:Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
    .restart local v6       #certfounded:Z
    .restart local v7       #cur_address:Ljava/lang/String;
    .restart local v8       #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v11       #i:I
    .restart local v12       #j:I
    .restart local v14       #noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v19       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :cond_1
    invoke-virtual {v15}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 4731
    move-object v8, v15

    .line 4732
    invoke-virtual {v15}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 4733
    const/4 v6, 0x1

    .line 4740
    .end local v15           #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    :cond_2
    if-eqz v6, :cond_4

    .line 4742
    if-eqz v8, :cond_3

    .line 4744
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v8, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/android/emailcommon/smime/CertificateUtil;->checkCertValidity([Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4717
    .end local v6           #certfounded:Z
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v11           #i:I
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4745
    .restart local v6       #certfounded:Z
    .restart local v8       #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v11       #i:I
    :catch_1
    move-exception v9

    .line 4746
    .local v9, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 4747
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4748
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4749
    .end local v9           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_2
    move-exception v9

    .line 4750
    .local v9, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 4751
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4752
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4759
    .end local v9           #e:Ljava/security/cert/CertificateNotYetValidException;
    :cond_4
    if-eqz v8, :cond_5

    .line 4760
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4762
    :cond_5
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4768
    .end local v6           #certfounded:Z
    .end local v7           #cur_address:Ljava/lang/String;
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v11           #i:I
    .end local v12           #j:I
    :cond_6
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 4769
    aget-object v20, v3, v11

    invoke-virtual/range {v20 .. v20}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4768
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4773
    .end local v11           #i:I
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 4774
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4777
    :cond_8
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 4778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/email/activity/MessageCompose;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4786
    const/16 v20, 0x0

    :try_start_2
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v23}, Lcom/android/emailcommon/smime/CertificateUtil;->validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v17

    .line 4791
    .local v17, status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v17, :cond_a

    .line 4792
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_b

    .line 4793
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_9

    .line 4794
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4792
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 4799
    .end local v11           #i:I
    :cond_a
    const/16 v20, 0x0

    .line 4808
    .end local v17           #status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_6
    return-object v20

    .line 4801
    :catch_3
    move-exception v13

    .line 4802
    .local v13, me:Ljava/lang/IllegalArgumentException;
    const-string v20, "MessageCompose"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    const/16 v20, 0x0

    goto :goto_6

    .line 4808
    .end local v13           #me:Ljava/lang/IllegalArgumentException;
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    goto :goto_6
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 4834
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    if-eqz v0, :cond_1

    .line 4841
    :cond_0
    :goto_0
    return-void

    .line 4838
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 4839
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4668
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 6
    .parameter "listOfInvalidCerts"

    .prologue
    .line 4846
    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    if-eqz v3, :cond_0

    .line 4887
    :goto_0
    return-void

    .line 4850
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 4851
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4853
    :cond_1
    if-nez p1, :cond_2

    .line 4854
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0804d8

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4858
    :cond_2
    array-length v3, p1

    if-nez v3, :cond_3

    .line 4859
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->send()V
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$7900(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_0

    .line 4861
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4862
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0804d4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4864
    const-string v2, ""

    .line 4865
    .local v2, recipients:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 4866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4865
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4868
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0804d3

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4872
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0804d5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4883
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 4884
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4813
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    .line 4814
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0804d6

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4815
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4816
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4817
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4828
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 4829
    return-void
.end method
