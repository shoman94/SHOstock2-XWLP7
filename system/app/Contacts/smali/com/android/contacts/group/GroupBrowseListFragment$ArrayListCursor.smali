.class public Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v6, 0x0

    .line 1036
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1037
    array-length v0, p1

    .line 1038
    .local v0, colCount:I
    const/4 v1, 0x0

    .line 1040
    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1041
    aget-object v4, p1, v2

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1042
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 1043
    const/4 v1, 0x1

    .line 1049
    :cond_0
    if-nez v1, :cond_1

    .line 1050
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 1051
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p1

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1052
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    .line 1055
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1056
    .local v3, rowCount:I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 1057
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 1058
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 1059
    if-nez v1, :cond_2

    .line 1060
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1040
    .end local v3           #rowCount:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1063
    .restart local v3       #rowCount:I
    :cond_4
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 8
    .parameter "position"
    .parameter "window"

    .prologue
    .line 1067
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1073
    :try_start_0
    iget v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 1074
    .local v5, oldpos:I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    .line 1075
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 1076
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 1078
    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 1079
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1080
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 1081
    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1082
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 1083
    instance-of v6, v2, [B

    if-eqz v6, :cond_3

    .line 1084
    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 1085
    .local v3, field:[B
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1086
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1105
    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_0
    move-exception v6

    .line 1108
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 1090
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, field:Ljava/lang/String;
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1092
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1108
    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 1097
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_4
    :try_start_2
    iget v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1098
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1

    .line 1080
    .end local v2           #data:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1104
    .end local v4           #i:I
    :cond_6
    iput v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1108
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1160
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1154
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1142
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1148
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1136
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1130
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
