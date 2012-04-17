.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.super Lcom/android/emailcommon/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    }
.end annotation


# instance fields
.field private mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

.field private mMessageCount:I

.field private final mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 206
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1120
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1122
    if-eqz p1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, response:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 1129
    :cond_1
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1132
    :cond_2
    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    .locals 12
    .parameter "msgId"
    .parameter "message"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 964
    const/4 v4, 0x0

    .line 965
    .local v4, response:Ljava/lang/String;
    const/4 v3, -0x1

    .line 966
    .local v3, messageId:I
    if-ne p1, v9, :cond_0

    .line 968
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 969
    const-string v5, "Email"

    const-string v6, "fetchBody mUidToMsgNumMap is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 974
    :cond_0
    if-eq p1, v9, :cond_3

    .line 975
    move v3, p1

    .line 979
    :goto_0
    if-ne p3, v9, :cond_4

    .line 981
    const-string v5, "RETR %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 991
    :goto_1
    if-eqz v4, :cond_2

    .line 993
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 994
    .local v0, in:Ljava/io/InputStream;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$400()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 995
    new-instance v1, Lcom/android/emailcommon/utility/LoggingInputStream;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    move-object v0, v1

    .line 997
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    :cond_1
    new-instance v5, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v5, v6, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p2, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1010
    .end local v0           #in:Ljava/io/InputStream;
    :cond_2
    return-void

    .line 978
    :cond_3
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 986
    :cond_4
    :try_start_1
    const-string v5, "TOP %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 987
    :catch_0
    move-exception v2

    .line 988
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "RETR %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 998
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 1005
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    if-ne p3, v9, :cond_2

    .line 1006
    throw v2
.end method

.method private fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 20
    .parameter "messages"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 885
    const/4 v14, 0x0

    .line 886
    .local v14, unsizedMessages:I
    move-object/from16 v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 887
    .local v7, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 888
    add-int/lit8 v14, v14, 0x1

    .line 886
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 891
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_1
    if-nez v14, :cond_3

    .line 947
    :cond_2
    return-void

    .line 894
    :cond_3
    const/16 v15, 0x32

    if-ge v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v16, 0x1388

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 899
    const/4 v3, 0x0

    .local v3, i:I
    move-object/from16 v0, p1

    array-length v2, v0

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 900
    aget-object v7, p1, v3

    .line 901
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v15, v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v15, :cond_4

    .line 902
    new-instance v15, Lcom/android/emailcommon/mail/MessagingException;

    const-string v16, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct/range {v15 .. v16}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_4
    move-object v12, v7

    .line 904
    check-cast v12, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 905
    .local v12, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const-string v15, "LIST %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 908
    .local v13, response:Ljava/lang/String;
    :try_start_0
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, listParts:[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 910
    .local v8, msgNum:I
    const/4 v15, 0x2

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 911
    .local v9, msgSize:I
    invoke-virtual {v12, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    if-eqz p2, :cond_5

    .line 916
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 899
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 912
    .end local v6           #listParts:[Ljava/lang/String;
    .end local v8           #msgNum:I
    .end local v9           #msgSize:I
    :catch_0
    move-exception v11

    .line 913
    .local v11, nfe:Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/io/IOException;

    invoke-direct {v15}, Ljava/io/IOException;-><init>()V

    throw v15

    .line 920
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v13           #response:Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 921
    .local v10, msgUidIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v7, v1, v4

    .line 922
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 924
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_7
    const-string v15, "LIST"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 925
    .restart local v13       #response:Ljava/lang/String;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v15}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 926
    const-string v15, "."

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 929
    const/4 v12, 0x0

    .line 930
    .restart local v12       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const/4 v9, 0x0

    .line 932
    .restart local v9       #msgSize:I
    :try_start_1
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 933
    .restart local v6       #listParts:[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 934
    .restart local v8       #msgNum:I
    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    check-cast v12, Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 939
    .restart local v12       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 940
    invoke-virtual {v12, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 941
    if-eqz p2, :cond_8

    .line 942
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    goto :goto_3

    .line 936
    .end local v6           #listParts:[Ljava/lang/String;
    .end local v8           #msgNum:I
    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_1
    move-exception v11

    .line 937
    .restart local v11       #nfe:Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/io/IOException;

    invoke-direct {v15}, Ljava/io/IOException;-><init>()V

    throw v15
.end method

.method private getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/android/email/mail/store/Pop3Store;)V

    .line 1070
    .local v0, capabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, response:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1072
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    .end local v1           #response:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 1075
    .restart local v1       #response:Ljava/lang/String;
    :cond_2
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1076
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_0

    .line 1087
    .end local v1           #response:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1077
    .restart local v1       #response:Ljava/lang/String;
    :cond_3
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1078
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_0

    .line 1079
    :cond_4
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1080
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_0

    .line 1081
    :cond_5
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1082
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_0

    .line 1083
    :cond_6
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private getRecentIsFirst(Ljava/util/ArrayList;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, allMsgInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x1

    .line 536
    new-instance v5, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 537
    .local v5, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v7, "UIDL"

    invoke-direct {p0, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, response:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 540
    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 541
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 543
    :cond_0
    iget-boolean v7, v5, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-eqz v7, :cond_4

    .line 550
    :cond_1
    const/4 v0, 0x0

    .local v0, firstDate:Ljava/util/Date;
    const/4 v2, 0x0

    .line 552
    .local v2, lastDate:Ljava/util/Date;
    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 553
    .local v1, firstmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_2

    .line 554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 555
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v1           #firstmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 556
    .restart local v1       #firstmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v8, v1, v11}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 557
    invoke-virtual {v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    .line 561
    :cond_2
    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    iget v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 562
    .local v3, lastmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v3, :cond_3

    .line 563
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    if-lt v7, v10, :cond_3

    .line 564
    new-instance v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v3           #lastmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v7, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 565
    .restart local v3       #lastmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v7, v3, v11}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 566
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v2

    .line 571
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    .line 574
    :goto_1
    return v7

    .line 546
    .end local v0           #firstDate:Ljava/util/Date;
    .end local v1           #firstmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v2           #lastDate:Ljava/util/Date;
    .end local v3           #lastmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_4
    iget v4, v5, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 548
    .local v4, msgNum:I
    iget-object v7, v5, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v4           #msgNum:I
    .restart local v0       #firstDate:Ljava/util/Date;
    .restart local v1       #firstmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .restart local v2       #lastDate:Ljava/util/Date;
    .restart local v3       #lastmessage:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_5
    move v7, v9

    .line 574
    goto :goto_1
.end method

.method private indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V
    .locals 3
    .parameter "msgNum"
    .parameter "message"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, unindexedMessageCount:I
    move v1, p1

    .local v1, msgNum:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 489
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 490
    add-int/lit8 v4, v4, 0x1

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    if-nez v4, :cond_3

    .line 533
    :cond_2
    return-void

    .line 496
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 497
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$300()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_7

    iget v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v6, 0x1388

    if-le v5, v6, :cond_7

    .line 503
    :cond_4
    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 504
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 505
    .local v0, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_6

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIDL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseSingleLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 508
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 510
    :cond_5
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 511
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    .line 503
    .end local v3           #response:Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_7
    const-string v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .restart local v3       #response:Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 517
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 518
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 520
    :cond_9
    iget-boolean v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v5, :cond_2

    .line 523
    iget v1, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 524
    if-lt v1, p1, :cond_8

    if-gt v1, p2, :cond_8

    .line 525
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 526
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_8

    .line 527
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 528
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_2
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    .local p1, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 579
    .local v5, unindexedUids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    .local v4, uid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 581
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    .end local v4           #uid:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 607
    :cond_2
    return-void

    .line 592
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 593
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, response:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 595
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 596
    iget-boolean v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v6, :cond_2

    .line 599
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 600
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 601
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_5

    .line 602
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v1, v6, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 604
    .restart local v1       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_5
    iget v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_1
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1019
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    if-nez v6, :cond_0

    .line 226
    const-string v6, "Email"

    const-string v7, "mCapabilities == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 236
    .local v5, result:I
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v6, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    if-nez v6, :cond_2

    .line 238
    :try_start_1
    new-instance v3, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v3, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 239
    .local v3, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :cond_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, response:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 244
    invoke-virtual {v3, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 245
    iget-boolean v6, v3, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_1

    .line 261
    .end local v3           #parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    .end local v4           #response:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v6, "validate_result_code"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    return-object v0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, ioe:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 251
    const/4 v5, 0x1

    .line 252
    const-string v6, "validate_error_message"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "Email"

    const-string v7, "checkSettings NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v5           #result:I
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public close(Z)V
    .locals 1
    .parameter "expunge"

    .prologue
    .line 357
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 362
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 2
    .parameter "msgs"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .locals 1
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1137
    instance-of v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 1138
    check-cast p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1140
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 11
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 742
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 799
    :cond_0
    return-void

    .line 745
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v8, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    .line 747
    .local v6, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 750
    .end local v6           #message:Lcom/android/emailcommon/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V

    .line 751
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 755
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    array-length v1, p1

    .local v1, count:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 765
    aget-object v6, p1, v2

    .line 766
    .restart local v6       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v9, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v9, :cond_5

    .line 767
    const-string v9, "Email"

    const-string v10, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 757
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v6           #message:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v4

    .line 758
    .local v4, ioe:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v9}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/email/mail/Transport;->close()V

    .line 759
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 760
    const-string v9, "Email"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_4
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "fetch"

    invoke-direct {v9, v10, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v6       #message:Lcom/android/emailcommon/mail/Message;
    :cond_5
    move-object v7, v6

    .line 770
    check-cast v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 772
    .local v7, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_start_1
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 773
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {p0, v9, v7, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 788
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 789
    invoke-interface {p3, v6}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 764
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 774
    :cond_8
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 779
    const/4 v9, -0x1

    const/16 v10, 0x328

    invoke-direct {p0, v9, v7, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 791
    :catch_1
    move-exception v4

    .line 792
    .restart local v4       #ioe:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v9}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/email/mail/Transport;->close()V

    .line 793
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 794
    const-string v9, "Email"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_9
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Unable to fetch message"

    invoke-direct {v9, v10, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 780
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_a
    :try_start_2
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 786
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 13
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 813
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 881
    :cond_0
    return-void

    .line 816
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v9, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v1, v4

    .line 818
    .local v7, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 821
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V

    .line 822
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 826
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    array-length v2, p1

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 836
    aget-object v7, p1, v3

    .line 837
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v10, v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v10, :cond_5

    .line 838
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 828
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v5

    .line 829
    .local v5, ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 830
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 831
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_4
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "fetch"

    invoke-direct {v10, v11, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    :cond_5
    move-object v8, v7

    .line 840
    check-cast v8, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 842
    .local v8, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz p3, :cond_6

    .line 845
    :try_start_1
    sget-object v10, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->POP3:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v10}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    .line 848
    :cond_6
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 849
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {p0, v10, v8, v11}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 869
    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    .line 871
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 835
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 850
    :cond_9
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 855
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_a

    .line 856
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pop3Store fetchWithRetrieveSize function. retrieveSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_a
    const/4 v10, -0x1

    div-int/lit8 v11, p4, 0x4c

    invoke-direct {p0, v10, v8, v11}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(ILcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 873
    :catch_1
    move-exception v5

    .line 874
    .restart local v5       #ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 875
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 876
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_b
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Unable to fetch message"

    invoke-direct {v10, v11, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 861
    .end local v5           #ioe:Ljava/io/IOException;
    :cond_c
    :try_start_2
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 867
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getDelimiter()I
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 418
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    return-object v1

    .line 409
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v0

    .line 410
    .local v0, ioe:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->close()V

    .line 411
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 412
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to index during getMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "getMessages"

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 14
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v9, 0x1

    if-lt p1, v9, :cond_0

    const/4 v9, 0x1

    move/from16 v0, p2

    if-lt v0, v9, :cond_0

    move/from16 v0, p2

    if-ge v0, p1, :cond_1

    .line 434
    :cond_0
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Invalid message set %d %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 437
    :cond_1
    move v8, p1

    .local v8, newStart:I
    move/from16 v7, p2

    .line 438
    .local v7, newEnd:I
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, allMsgInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getRecentIsFirst(Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    const/4 v8, 0x1

    .line 441
    sub-int v9, p2, p1

    add-int/lit8 v7, v9, 0x1

    .line 442
    move p1, v8

    .line 443
    move/from16 p2, v7

    .line 445
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 446
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 447
    add-int/lit8 v6, v2, 0x1

    .line 448
    .local v6, msgNum:I
    if-lt v6, p1, :cond_3

    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    .line 449
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 450
    .local v4, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v4, :cond_3

    .line 451
    new-instance v4, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v4           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v4, v9, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 452
    .restart local v4       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v6, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    .line 446
    .end local v4           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v2           #i:I
    .end local v6           #msgNum:I
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v5, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move v6, p1

    .restart local v6       #msgNum:I
    :goto_1
    move/from16 v0, p2

    if-gt v6, v0, :cond_8

    .line 468
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 469
    .restart local v4       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    if-eqz p3, :cond_6

    .line 471
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 467
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 459
    .end local v1           #allMsgInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v5           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v6           #msgNum:I
    :catch_0
    move-exception v3

    .line 460
    .local v3, ioe:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v9}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/email/mail/Transport;->close()V

    .line 461
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 462
    const-string v9, "Email"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_7
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "getMessages"

    invoke-direct {v9, v10, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 474
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #allMsgInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .restart local v6       #msgNum:I
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/emailcommon/mail/Message;

    return-object v9
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1014
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$500()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 9
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :cond_0
    :try_start_1
    const-string v6, "Email"

    const-string v7, "Pop3Folder open"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 275
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 279
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 282
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    .line 286
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v6, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v6, :cond_4

    .line 288
    const-string v6, "STLS"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->reopenTls()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$100(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$200(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PASS /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 315
    const/4 v5, 0x0

    .line 317
    .local v5, statException:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "STAT"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, response:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    if-ge v6, v8, :cond_8

    .line 320
    new-instance v5, Ljava/io/IOException;

    .end local v5           #statException:Ljava/lang/Exception;
    invoke-direct {v5}, Ljava/io/IOException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 329
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :goto_1
    if-eqz v5, :cond_9

    .line 330
    :try_start_5
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 331
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 332
    const-string v6, "Email"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "POP3 STAT"

    invoke-direct {v6, v7, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    .end local v5           #statException:Ljava/lang/Exception;
    :cond_4
    :try_start_6
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 292
    const-string v6, "Email"

    const-string v7, "TLS not supported but required"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ioe:Ljava/io/IOException;
    :try_start_7
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 309
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 310
    const-string v6, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_6
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 301
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 302
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_8
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 303
    const-string v6, "Email"

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_7
    new-instance v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 322
    .end local v1           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :cond_8
    const/4 v6, 0x1

    :try_start_9
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 324
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 325
    .restart local v0       #ioe:Ljava/io/IOException;
    move-object v5, v0

    .line 328
    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 326
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 327
    .local v2, nfe:Ljava/lang/NumberFormatException;
    move-object v5, v2

    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 336
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_a
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 337
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 338
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 339
    const-string v6, "Email"

    const-string v7, "Pop3Folder open clear "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 1
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public setDelimiter(I)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 1156
    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 10
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1034
    if-eqz p3, :cond_0

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-static {p2, v5}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1052
    :cond_0
    return-void

    .line 1041
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1042
    .local v4, message:Lcom/android/emailcommon/mail/Message;
    const-string v5, "DELE %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #message:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v2

    .line 1046
    .local v2, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 1047
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1048
    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_2
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "setFlags()"

    invoke-direct {v5, v6, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setSelect(Z)V
    .locals 0
    .parameter "select"

    .prologue
    .line 371
    return-void
.end method
