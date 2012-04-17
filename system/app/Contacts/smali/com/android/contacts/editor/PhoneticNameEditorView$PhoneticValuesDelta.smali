.class Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhoneticNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticValuesDelta"
.end annotation


# instance fields
.field private mPhoneticName:Ljava/lang/String;

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 40
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    .line 41
    return-void
.end method

.method private buildPhoneticName()V
    .locals 5

    .prologue
    .line 74
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data9"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, family:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data8"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, middle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data7"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, given:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private parsePhoneticName(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 64
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 65
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data9"

    const-string v3, "data9"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data8"

    const-string v3, "data8"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data7"

    const-string v3, "data7"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 56
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 45
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->parsePhoneticName(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    goto :goto_0
.end method
