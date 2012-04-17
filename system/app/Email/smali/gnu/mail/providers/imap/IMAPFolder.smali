.class public Lgnu/mail/providers/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;


# static fields
.field private static searchdf:Ljava/text/DateFormat;


# instance fields
.field protected delimiter:C

.field protected messageCount:I

.field protected newMessageCount:I

.field protected path:Ljava/lang/String;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected type:I

.field protected uidValidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d-MMM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    .line 126
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;IC)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 141
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 106
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 110
    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 112
    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    .line 142
    iput-object p2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    .line 143
    iput p3, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    .line 144
    iput-char p4, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    .line 145
    return-void
.end method

.method private addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x22

    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 903
    instance-of v0, p1, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_2

    .line 905
    check-cast p1, Ljavax/mail/search/AndTerm;

    invoke-virtual {p1}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    .line 906
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 908
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1139
    :cond_0
    :goto_1
    return v1

    .line 906
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    :cond_2
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_3

    .line 914
    const-string v0, "OR"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    check-cast p1, Ljavax/mail/search/OrTerm;

    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    .line 916
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 918
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 922
    :cond_3
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_5

    .line 924
    const-string v0, "NOT"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    check-cast p1, Ljavax/mail/search/NotTerm;

    invoke-virtual {p1}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    .line 928
    :cond_5
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_14

    .line 930
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 931
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    .line 932
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v4

    .line 934
    invoke-virtual {v3}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    move v0, v1

    .line 935
    :goto_4
    array-length v2, v5

    if-ge v0, v2, :cond_12

    .line 937
    aget-object v2, v5, v0

    .line 938
    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_8

    .line 940
    if-eqz v4, :cond_7

    const-string v2, "ANSWERED"

    :goto_5
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 940
    :cond_7
    const-string v2, "UNANSWERED"

    goto :goto_5

    .line 943
    :cond_8
    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_a

    .line 945
    if-eqz v4, :cond_9

    const-string v2, "DELETED"

    :goto_7
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v2, "UNDELETED"

    goto :goto_7

    .line 948
    :cond_a
    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_c

    .line 950
    if-eqz v4, :cond_b

    const-string v2, "DRAFT"

    :goto_8
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const-string v2, "UNDRAFT"

    goto :goto_8

    .line 953
    :cond_c
    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_e

    .line 955
    if-eqz v4, :cond_d

    const-string v2, "FLAGGED"

    :goto_9
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const-string v2, "UNFLAGGED"

    goto :goto_9

    .line 958
    :cond_e
    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_10

    .line 960
    if-eqz v4, :cond_f

    const-string v2, "RECENT"

    :goto_a
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const-string v2, "OLD"

    goto :goto_a

    .line 963
    :cond_10
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_6

    .line 965
    if-eqz v4, :cond_11

    const-string v2, "SEEN"

    :goto_b
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const-string v2, "UNSEEN"

    goto :goto_b

    .line 970
    :cond_12
    invoke-virtual {v3}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v2

    .line 971
    :goto_c
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 973
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 974
    if-eqz v4, :cond_13

    const-string v0, "KEYWORD"

    :goto_d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 977
    aget-object v0, v2, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 978
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 979
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 974
    :cond_13
    const-string v0, "UNKEYWORD"

    goto :goto_d

    .line 982
    :cond_14
    instance-of v0, p1, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_1a

    move-object v0, p1

    .line 984
    check-cast v0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v3

    .line 985
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 986
    instance-of v4, p1, Ljavax/mail/search/FromTerm;

    if-eqz v4, :cond_15

    .line 987
    const-string v2, "FROM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    :goto_e
    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1006
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1007
    invoke-virtual {v3}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 988
    :cond_15
    instance-of v4, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v4, :cond_19

    .line 990
    check-cast p1, Ljavax/mail/search/RecipientTerm;

    invoke-virtual {p1}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v4

    .line 992
    sget-object v5, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_16

    .line 993
    const-string v2, "TO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 994
    :cond_16
    sget-object v5, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_17

    .line 995
    const-string v2, "CC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 996
    :cond_17
    sget-object v5, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_18

    .line 997
    const-string v2, "BCC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_18
    move-object v0, v2

    .line 999
    goto :goto_e

    :cond_19
    move-object v0, v2

    .line 1002
    goto :goto_e

    .line 1014
    :cond_1a
    instance-of v0, p1, Ljavax/mail/search/ComparisonTerm;

    if-eqz v0, :cond_1d

    .line 1016
    instance-of v0, p1, Ljavax/mail/search/DateTerm;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 1018
    check-cast v0, Ljavax/mail/search/DateTerm;

    .line 1019
    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 1020
    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v0

    .line 1021
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1022
    packed-switch v0, :pswitch_data_0

    .line 1030
    :goto_f
    :pswitch_0
    instance-of v3, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v3, :cond_1b

    .line 1031
    const-string v3, "SENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    :cond_1b
    packed-switch v0, :pswitch_data_1

    .line 1047
    :goto_10
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1048
    sget-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1027
    :pswitch_1
    const-string v3, "NOT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 1036
    :pswitch_2
    const-string v0, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1040
    :pswitch_3
    const-string v0, "BEFORE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1044
    :pswitch_4
    const-string v0, "SINCE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1051
    :cond_1c
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 1053
    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 1054
    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getNumber()I

    move-result v2

    .line 1055
    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getComparison()I

    move-result v0

    .line 1056
    instance-of v3, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v3, :cond_0

    .line 1058
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1059
    packed-switch v0, :pswitch_data_2

    .line 1067
    :goto_11
    :pswitch_5
    packed-switch v0, :pswitch_data_3

    .line 1094
    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1064
    :pswitch_6
    const-string v3, "NOT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 1071
    :pswitch_7
    const-string v0, "OR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1073
    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1075
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1076
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1077
    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 1083
    :pswitch_8
    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 1089
    :pswitch_9
    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 1100
    :cond_1d
    instance-of v0, p1, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1102
    check-cast v0, Ljavax/mail/search/StringTerm;

    invoke-virtual {v0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 1103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1104
    instance-of v4, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v4, :cond_1f

    .line 1106
    const-string v2, "BODY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    .line 1126
    :cond_1e
    :goto_13
    if-eqz v2, :cond_0

    .line 1128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1129
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1131
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1108
    :cond_1f
    instance-of v4, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v4, :cond_20

    .line 1110
    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1112
    check-cast p1, Ljavax/mail/search/HeaderTerm;

    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    .line 1114
    :cond_20
    instance-of v4, p1, Ljavax/mail/search/SubjectTerm;

    if-eqz v4, :cond_21

    .line 1116
    const-string v2, "SUBJECT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    .line 1118
    :cond_21
    instance-of v4, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v4, :cond_1e

    .line 1120
    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1122
    const-string v2, "Message-ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1032
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1059
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1067
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1334
    instance-of v0, p1, Lgnu/mail/providers/imap/IMAPFolder;

    if-eqz v0, :cond_0

    .line 1336
    check-cast p1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v0, p1, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1338
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getType()I
    :try_end_0
    .catch Ljavax/mail/FolderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 745
    :cond_0
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v2

    .line 746
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    const-string v0, "BODY.PEEK[]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_1
    :goto_0
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    const-string v0, "FLAGS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_2
    const-string v0, "INTERNALDATE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 777
    if-nez v0, :cond_8

    .line 829
    :cond_3
    :goto_1
    return-void

    .line 751
    :cond_4
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 753
    const-string v0, "BODY.PEEK[HEADER]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 755
    :cond_5
    array-length v0, v2

    if-lez v0, :cond_1

    .line 758
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "BODY.PEEK[HEADER.FIELDS("

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 759
    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 761
    if-lez v0, :cond_6

    .line 763
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 765
    :cond_6
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 767
    :cond_7
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 768
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 769
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    :cond_8
    new-array v4, v0, [Ljava/lang/String;

    .line 782
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 785
    array-length v0, p1

    new-array v5, v0, [Lgnu/mail/providers/imap/IMAPMessage;

    .line 786
    array-length v0, p1

    new-array v6, v0, [I

    move v2, v1

    .line 789
    :goto_3
    :try_start_0
    array-length v0, p1

    if-ge v2, v0, :cond_9

    .line 791
    aget-object v0, p1, v2

    check-cast v0, Lgnu/mail/providers/imap/IMAPMessage;

    aput-object v0, v5, v2

    .line 792
    aget-object v0, v5, v2

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getMessageNumber()I

    move-result v0

    aput v0, v6, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 795
    :catch_0
    move-exception v0

    .line 797
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Only IMAPMessages can be fetched"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_9
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 801
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v7

    .line 804
    :try_start_1
    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    :try_start_2
    invoke-virtual {v7, v6, v4}, Lgnu/inet/imap/IMAPConnection;->fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v4

    move v3, v1

    .line 807
    :goto_4
    array-length v2, v4

    if-ge v3, v2, :cond_c

    .line 809
    aget-object v2, v4, v3

    invoke-virtual {v2}, Lgnu/inet/imap/MessageStatus;->getMessageNumber()I

    move-result v8

    move v2, v1

    .line 810
    :goto_5
    array-length v9, v6

    if-ge v2, v9, :cond_a

    .line 812
    aget v9, v6, v2

    if-ne v9, v8, :cond_b

    .line 814
    aget-object v2, v5, v2

    aget-object v8, v4, v3

    invoke-virtual {v2, v8}, Lgnu/mail/providers/imap/IMAPMessage;->update(Lgnu/inet/imap/MessageStatus;)V

    .line 807
    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 810
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 819
    :cond_c
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 820
    :try_start_3
    invoke-virtual {v7}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 825
    :catch_1
    move-exception v0

    .line 827
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 819
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1285
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1287
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1288
    iget-char v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1290
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    new-instance v1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v2, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 678
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 680
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 682
    :cond_0
    new-instance v0, Lgnu/mail/providers/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 584
    .line 585
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 586
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    .line 589
    :try_start_0
    iget v2, p0, Ljavax/mail/Folder;->mode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-gez v2, :cond_3

    .line 591
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 592
    const/4 v3, 0x0

    const-string v4, "MESSAGES"

    aput-object v4, v2, v3

    .line 593
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :try_start_1
    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lgnu/inet/imap/IMAPConnection;->status(Ljava/lang/String;[Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    .line 596
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 615
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 619
    :cond_2
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    return v0

    .line 596
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 611
    :catch_0
    move-exception v0

    .line 613
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 601
    :cond_3
    :try_start_5
    monitor-enter v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 603
    :try_start_6
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->noop()Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    .line 604
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 605
    if-eqz v2, :cond_1

    .line 607
    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 604
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public getSeparator()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1300
    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    if-nez v0, :cond_1

    .line 1302
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 1303
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    .line 1307
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :try_start_1
    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v2

    .line 1310
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    :try_start_2
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 1315
    :cond_0
    array-length v0, v2

    if-lez v0, :cond_2

    .line 1317
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1329
    :cond_1
    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    return v0

    .line 1310
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1326
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1321
    :cond_2
    :try_start_5
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 252
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    if-ne v0, v3, :cond_1

    .line 254
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 255
    if-ne v1, v3, :cond_2

    const-string v0, ""

    move-object v2, v0

    .line 256
    :goto_0
    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    move-object v1, v0

    .line 257
    :goto_1
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v3

    .line 261
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :try_start_1
    invoke-virtual {v3, v2, v1}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v1

    .line 264
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {v3}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 269
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    .line 270
    array-length v0, v1

    if-lez v0, :cond_4

    .line 272
    const-string v0, ""

    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->isNoinferiors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :cond_1
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    return v0

    .line 255
    :cond_2
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 279
    :cond_4
    :try_start_5
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 566
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 326
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    .line 330
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 341
    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 352
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 335
    :pswitch_0
    :try_start_3
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->select(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v1

    .line 343
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V

    .line 344
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :try_start_4
    invoke-virtual {v0, p0}, Lgnu/mail/providers/imap/IMAPStore;->setSelected(Lgnu/mail/providers/imap/IMAPFolder;)V

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 347
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 356
    :cond_0
    return-void

    .line 338
    :pswitch_1
    :try_start_5
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->examine(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readFlags(Ljava/util/List;)Ljavax/mail/Flags;
    .locals 5
    .parameter

    .prologue
    .line 194
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    .line 198
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string v4, "\\Answered"

    if-ne v0, v4, :cond_1

    .line 201
    sget-object v0, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    const-string v4, "\\Deleted"

    if-ne v0, v4, :cond_2

    .line 205
    sget-object v0, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 207
    :cond_2
    const-string v4, "\\Draft"

    if-ne v0, v4, :cond_3

    .line 209
    sget-object v0, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 211
    :cond_3
    const-string v4, "\\Flagged"

    if-ne v0, v4, :cond_4

    .line 213
    sget-object v0, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 215
    :cond_4
    const-string v4, "\\Recent"

    if-ne v0, v4, :cond_5

    .line 217
    sget-object v0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 219
    :cond_5
    const-string v4, "\\Seen"

    if-ne v0, v4, :cond_0

    .line 221
    sget-object v0, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    .line 225
    :cond_6
    return-object v2
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/mail/providers/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 846
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
    if-eqz p2, :cond_2

    .line 850
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 851
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 853
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v4

    .line 854
    if-lez v0, :cond_0

    .line 856
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 858
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_2
    invoke-direct {p0, p1, v2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    .line 863
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 864
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 866
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    .line 870
    if-eqz v3, :cond_5

    :try_start_0
    array-length v3, v4

    if-lez v3, :cond_5

    .line 873
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Lgnu/inet/imap/IMAPConnection;->search(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v3

    .line 876
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :try_start_2
    array-length v4, v3

    new-array p2, v4, [Ljavax/mail/Message;

    .line 878
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 879
    new-instance v4, Lgnu/mail/providers/imap/IMAPMessage;

    aget v5, v3, v1

    invoke-direct {v4, p0, v5}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    aput-object v4, p2, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 876
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 888
    :catch_0
    move-exception v0

    .line 890
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 880
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 886
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0

    .line 884
    :cond_5
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object p2

    goto :goto_2
.end method

.method update(Lgnu/inet/imap/MailboxStatus;Z)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 157
    :cond_0
    iget-boolean v0, p1, Lgnu/inet/imap/MailboxStatus;->readWrite:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 158
    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->readFlags(Ljava/util/List;)Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 163
    :cond_1
    iget v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 164
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 165
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    .line 167
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    int-to-long v2, v0

    iput-wide v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    .line 169
    if-eqz p2, :cond_4

    .line 171
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-le v0, v1, :cond_5

    .line 173
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int/2addr v0, v1

    new-array v2, v0, [Ljavax/mail/Message;

    move v0, v1

    .line 174
    :goto_1
    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v3, :cond_3

    .line 176
    sub-int v3, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    .line 190
    :cond_4
    :goto_2
    return-void

    .line 180
    :cond_5
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v1, :cond_4

    .line 182
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v0, v1, v0

    new-array v2, v0, [Ljavax/mail/Message;

    .line 183
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    :goto_3
    if-ge v0, v1, :cond_6

    .line 185
    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 187
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto :goto_2
.end method
