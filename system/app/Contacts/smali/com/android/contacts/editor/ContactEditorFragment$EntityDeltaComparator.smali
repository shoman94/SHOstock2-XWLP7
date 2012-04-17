.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1671
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I
    .locals 23
    .parameter "one"
    .parameter "two"

    .prologue
    .line 1678
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/model/EntityDelta;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1679
    const/16 v18, 0x0

    .line 1751
    :cond_0
    :goto_0
    return v18

    .line 1682
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 1683
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "account_type"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, accountType1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "data_set"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1685
    .local v5, dataSet1:Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v16

    .line 1686
    .local v16, type1:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "account_type"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, accountType2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "data_set"

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, dataSet2:Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v17

    .line 1691
    .local v17, type2:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1692
    const/16 v18, 0x1

    goto :goto_0

    .line 1693
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1694
    const/16 v18, -0x1

    goto :goto_0

    .line 1698
    :cond_3
    const/4 v12, 0x0

    .line 1699
    .local v12, skipAccountTypeCheck:Z
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/contacts/model/GoogleAccountType;

    .line 1700
    .local v7, isGoogleAccount1:Z
    move-object/from16 v0, v17

    instance-of v8, v0, Lcom/android/contacts/model/GoogleAccountType;

    .line 1701
    .local v8, isGoogleAccount2:Z
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    .line 1702
    const/16 v18, -0x1

    goto :goto_0

    .line 1703
    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_5

    .line 1704
    const/16 v18, 0x1

    goto :goto_0

    .line 1705
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 1706
    const/4 v12, 0x1

    .line 1710
    :cond_6
    if-nez v12, :cond_8

    .line 1711
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 1712
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1714
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 1715
    .local v18, value:I
    if-nez v18, :cond_0

    .line 1719
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1720
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 1721
    if-nez v18, :cond_0

    .line 1731
    .end local v18           #value:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    .line 1732
    .local v11, oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v19, "account_name"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1733
    .local v9, oneAccount:Ljava/lang/String;
    if-nez v9, :cond_9

    const-string v9, ""

    .line 1734
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 1735
    .local v15, twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v19, "account_name"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1736
    .local v13, twoAccount:Ljava/lang/String;
    if-nez v13, :cond_a

    const-string v13, ""

    .line 1737
    :cond_a
    invoke-virtual {v9, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 1738
    .restart local v18       #value:I
    if-nez v18, :cond_0

    .line 1743
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 1744
    .local v10, oneId:Ljava/lang/Long;
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1745
    .local v14, twoId:Ljava/lang/Long;
    if-nez v10, :cond_c

    .line 1746
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 1724
    .end local v9           #oneAccount:Ljava/lang/String;
    .end local v10           #oneId:Ljava/lang/Long;
    .end local v11           #oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #twoAccount:Ljava/lang/String;
    .end local v14           #twoId:Ljava/lang/Long;
    .end local v15           #twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1725
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1747
    .restart local v9       #oneAccount:Ljava/lang/String;
    .restart local v10       #oneId:Ljava/lang/Long;
    .restart local v11       #oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13       #twoAccount:Ljava/lang/String;
    .restart local v14       #twoId:Ljava/lang/Long;
    .restart local v15       #twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_c
    if-nez v14, :cond_d

    .line 1748
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1751
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1671
    check-cast p1, Lcom/android/contacts/model/EntityDelta;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I

    move-result v0

    return v0
.end method
