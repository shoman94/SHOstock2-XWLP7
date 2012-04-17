.class public Lcom/android/contacts/editor/PhoneticNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public static buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "family"
    .parameter "middle"
    .parameter "given"

    .prologue
    const/16 v2, 0x20

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parsePhoneticName(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 8
    .parameter "phoneticName"
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, family:Ljava/lang/String;
    const/4 v2, 0x0

    .line 106
    .local v2, middle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, given:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    const-string v4, " "

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, strings:[Ljava/lang/String;
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 126
    .end local v3           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 127
    new-instance p1, Landroid/content/ContentValues;

    .end local p1
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .restart local p1
    :cond_1
    const-string v4, "data9"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "data8"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "data7"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object p1

    .line 112
    .restart local v3       #strings:[Ljava/lang/String;
    :pswitch_0
    aget-object v0, v3, v6

    .line 113
    goto :goto_0

    .line 115
    :pswitch_1
    aget-object v0, v3, v6

    .line 116
    aget-object v1, v3, v7

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    aget-object v0, v3, v6

    .line 120
    aget-object v2, v3, v7

    .line 121
    const/4 v4, 0x2

    aget-object v1, v3, v4

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hasData()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 182
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v4

    .line 186
    :cond_1
    const-string v5, "data9"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, family:Ljava/lang/String;
    const-string v5, "data8"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, middle:Ljava/lang/String;
    const-string v5, "data7"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, given:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 173
    instance-of v1, p2, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    if-nez v1, :cond_0

    .line 174
    new-instance v0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    invoke-direct {v0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .end local p2
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object p2, v0

    .line 176
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local p2
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 177
    return-void
.end method
